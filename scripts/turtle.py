#!/usr/bin/env python3
import rospy
import actionlib
from std_srvs.srv import Empty
from std_msgs.msg import Float32, Bool
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import *
from geometry_msgs.msg import Point, Pose, Quaternion
from rosplan_dispatch_msgs.msg import CompletePlan
from rosplan_knowledge_msgs.srv import KnowledgeUpdateService
from rosplan_knowledge_msgs.msg import KnowledgeItem
from diagnostic_msgs.msg import KeyValue
from nav_msgs.msg import Odometry
import os
import math
import coordinates
from itertools import combinations, permutations

MARGIN = 1

RADIUS = 0.25

class MazeSolverNode:
    def __init__(self) -> None:
        
        rospy.init_node("turtle_navigation")
        rospy.wait_for_service('/rosplan_problem_interface/problem_generation_server')
        rospy.wait_for_service('/rosplan_planner_interface/planning_server')
        rospy.wait_for_service('/rosplan_parsing_interface/parse_plan')
        rospy.wait_for_service('/rosplan_knowledge_base/update')
        self.problem_service = rospy.ServiceProxy('/rosplan_problem_interface/problem_generation_server', Empty)
        self.planning_service = rospy.ServiceProxy('/rosplan_planner_interface/planning_server', Empty)
        self.parsing_service = rospy.ServiceProxy('/rosplan_parsing_interface/parse_plan', Empty)

        self.ac = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        self.ac.wait_for_server()


        self.odom_sub = rospy.Subscriber('/odom', Odometry, self.odom_callback)
        self.battery_sub = rospy.Subscriber('/battery_level', Float32, self.battery_callback)
        self.plan_sub = rospy.Subscriber('/rosplan_parsing_interface/complete_plan', CompletePlan, self.plan_callback)

        self.done_pub = rospy.Publisher('/maze_done',Bool, queue_size=10)

        self.battery = 100
        self.last_battery = 100
        world = rospy.get_param('/turtle/world')
        if 'small' in world:
            self.positions = coordinates.small 
        else:
            self.positions = coordinates.medium
            MARGIN = 2
            self.battery *= MARGIN
        self.names = [f"p{i+1}" for i in range(len(self.positions))]
        self.loc = (0,0)
        self.last_loc_name = "p1"

        self.current_plan = None

        self.write_problem()

    def odom_callback(self, msg):
        pos = msg.pose.pose.position
        x = pos.x
        y = pos.y
        self.loc = (x,y)
        self.positions[0] = self.loc

    def battery_callback(self, msg):
        self.battery = msg.data
        if self.battery <= 0:
            rospy.logerr("Not enough battery to continue")
            rospy.signal_shutdown("Shutting Down the Node: Not enough bettery to continue")

    def get_high_level_plan(self,):
        try:
            
            self.problem_service()
            rospy.loginfo("Problem generated.")

            
            self.planning_service()
            rospy.loginfo("Plan generated.")

            
            self.parsing_service()
            rospy.loginfo("Plan parsed.")

            return True
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
            return False

    def replan(self):
        knowledge_update = rospy.ServiceProxy('/rosplan_knowledge_base/update', KnowledgeUpdateService)
        knowledge_position1 = KnowledgeItem()
        knowledge_position1.knowledge_type = KnowledgeItem.FACT
        knowledge_position1.attribute_name = "at"  # specify the type of the robot
        knowledge_position1.values = [KeyValue("r","robot1"), KeyValue("p",self.last_loc_name)]

        knowledge_position2 = KnowledgeItem()
        knowledge_position2.knowledge_type = KnowledgeItem.FACT
        knowledge_position2.attribute_name = "at"  # specify the type of the robot
        knowledge_position2.values = [KeyValue("r","robot1"), KeyValue("p",self.get_current_station())]

        knowledge_battery1 = KnowledgeItem()
        knowledge_battery1.knowledge_type = KnowledgeItem.FUNCTION
        knowledge_battery1.attribute_name = "battery-level"  # specify the type of the robot
        knowledge_battery1.values = [KeyValue("r","robot1")]
        knowledge_battery1.function_value = self.last_battery

        knowledge_battery2 = KnowledgeItem()
        knowledge_battery2.knowledge_type = KnowledgeItem.FUNCTION
        knowledge_battery2.attribute_name = "battery-level"  # specify the type of the robot
        knowledge_battery2.values = [KeyValue("r","robot1")]
        knowledge_battery2.function_value = self.battery

        for update_type, request in [(2, knowledge_position1), (0, knowledge_position2),(2,knowledge_battery1),(0,knowledge_battery2)]:
            response = knowledge_update(update_type, request)
            rospy.loginfo(response)

        self.last_loc_name = self.get_current_station()
        self.last_battery = self.battery

        self.write_problem()
        self.get_high_level_plan()

    def calc_battery_loss(self,time):
        return time*2 # 2 percent loss per second

    def calc_time(self,p1, p2):
        loc1, loc2 = self.positions[p1], self.positions[p2]
        dist = abs(loc1[0]-loc2[0]) + abs(loc1[1]-loc2[1])
        return dist/0.22 * MARGIN # 0.22 is the maximum speed for burger turtle bot

    def get_current_station(self):
        dist = float('inf')
        cur_pos = 0
        loc = self.loc
        for i, pos in enumerate(self.positions[1:]):
            
            if dist > abs(loc[0]-pos[0]) + abs(loc[1]-pos[1]):
                dist = abs(loc[0]-pos[0]) + abs(loc[1]-pos[1])
                cur_pos = i + 1

        if dist > RADIUS:
            return "p1"
        return f"p{cur_pos+1}"

    def get_move_action_str(self,p1,p2):
        time = self.calc_time(p1,p2)
        loss = int(self.calc_battery_loss(time))
        return f"""(:durative-action move-{self.names[p1]}-{self.names[p2]}
            :parameters (?r - robot)
            :duration (= ?duration {int(time)})  
            :condition (and 
            (at start (at ?r {self.names[p1]}))
            (at start (>= (battery-level ?r) {loss}))
            )
            :effect (and
                (at end (at ?r {self.names[p2]}))
                (at start (not (at ?r {self.names[p1]})))
                (at end (decrease (battery-level ?r) {loss}))
            ))

            """

    def get_all_move_action_str(self):
        between = "\n".join([
            self.get_move_action_str(p,q)
        for p,q in permutations(range(1, len(self.positions)), 2)])
        
        curr_to_all = "\n".join([
            self.get_move_action_str(0,q)
        for q in range(1,len(self.positions)-1)])
        
        station_to_end = "\n".join([
            self.get_move_action_str(q,-1)
        for q in range(1,len(self.positions))])
        
        return f"{between}\n{curr_to_all}\n{station_to_end}"

    def get_charging_station_str(self):
        return "\n\t".join([f"(has-station p{i+1})" for i in range(1,len(self.positions)-1)])

    def write_problem(self):
        battery_domain = f"""(define (domain maze-navigation)
        (:requirements :strips :typing :fluents :durative-actions)
        (:types
            robot position - object
        )

        (:constants
            {" ".join(self.names)} - position
        )
        (:predicates
            (at ?r - robot ?p - position)
            (has-station ?p - position)
        )

        
        (:functions
            (battery-level ?r - robot) 
        )
        
        {self.get_all_move_action_str()}

        (:durative-action charge
            :parameters (?r - robot ?p - position)
            :duration (= ?duration 0.1)
            :condition (and (at start (at ?r ?p))
            (at start (has-station ?p))
            ) 
            :effect 
                (at end  (increase (battery-level ?r) 0.5) )
        )
        
    )

    """
        

        battery_problem_ = f"""
    (define (problem task)
    (:domain maze-navigation)
    (:objects
        robot1 - robot
    )
    (:init
        (at robot1 {self.get_current_station()})

        {self.get_charging_station_str()}

        (= (battery-level robot1) {self.battery})

    )
    (:goal (and
        (at robot1 p{len(self.positions)})
        (>=  (battery-level robot1) 30)
    ))
    )
    """

        dir_path = os.path.dirname(os.path.realpath(__file__))
        battery_problem_path = os.path.join(dir_path, "../battery_problem")

        with open(os.path.join(battery_problem_path,"battery_domain.pddl"),'w') as f:
            f.write(battery_domain)
        
        # rospy.loginfo(battery_problem_)
        with open(os.path.join(battery_problem_path,"battery_problem.pddl"),"w") as f:
            f.write(battery_problem_)

        if os.path.exists(os.path.join(battery_problem_path,"problem.pddl")):
            os.remove(os.path.join(battery_problem_path,"problem.pddl"))
            os.remove(os.path.join(battery_problem_path,"plan.pddl"))

        rospy.loginfo("Wrote the problem in pddl")

    def plan_callback(self, plan):
        self.current_plan = plan.plan

    def handle_action(self, action):
        rospy.loginfo(f"Action: {action.name}")
        name = action.name
        move_action = False
        if "move" in name:
            rospy.loginfo("balls1")
            ix = int(name[9])-1
            goal_loc = self.positions[ix]
            success = self.handle_move(goal_loc)
            move_action = True
        elif "charge" in name:
            success = self.handle_charge()
        else:
            rospy.logwarn(f"Unknown action {name}")
            success = False
        return success, move_action

    def handle_move(self, p):
        rospy.loginfo("balls2")
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()

        goal.target_pose.pose = Pose(Point(p[0], p[1], 0), Quaternion(0, 0, 0.7071, 0.7071))

        self.ac.send_goal_and_wait(goal)

        if self.ac.get_state() == GoalStatus.SUCCEEDED:
            return True
        else: return False

    def handle_charge(self):
        rospy.sleep(0.1)
        return True

    def run_main_loop(self):
        self.get_high_level_plan()
        
        rate = rospy.Rate(1)
        while not rospy.is_shutdown():
            if self.current_plan:
                for action in self.current_plan:
                    success, move_action = self.handle_action(action)
                    if not success or move_action: # if one action didn't succeed 
                        self.current_plan = None
                loc = self.loc
                if ((loc[0]-self.positions[-1][0])**2 + (loc[1]-self.positions[-1][1])**2)**.5 < RADIUS:
                    rospy.loginfo("Finished the maze!!!")
                    self.done_pub.publish(True)
                    break
                else:
                    rospy.loginfo("Replanning!!!")
                    self.replan()
                
            rate.sleep()


if __name__ == "__main__":
   
    node = MazeSolverNode()
    rospy.loginfo("Node has been started")
    node.run_main_loop()
