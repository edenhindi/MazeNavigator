#!/usr/bin/env python3
import rospy
import actionlib
from std_srvs.srv import Empty
from std_msgs.msg import Float32
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
positions = [(0,0),(0, 1.1),(2.335,5),(0,5)]
names = [f"p{i+1}" for i in range(4)]
RADIUS = 0.25



loc = (0,0)
last_loc_name = names[0]
def odom_callback(msg):
    pos = msg.pose.pose.position
    x = pos.x
    y = pos.y
    global loc
    loc = (x,y)
    positions[0] = loc

battery = 100
last_battery = battery
def battery_callback(msg):
    
    global battery
    battery = msg.data
    if battery <= 0:
        rospy.logerr("Not enough battery to continue")
        rospy.signal_shutdown("Shutting Down the Node: Not enough bettery to continue")

def get_high_level_plan():
    try:
        
        problem_service()
        rospy.loginfo("Problem generated.")

        
        planning_service()
        rospy.loginfo("Plan generated.")

        
        parsing_service()
        rospy.loginfo("Plan parsed.")

        # dispatch_service()
        # rospy.loginfo("Plan dispatched.")

        return True
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")
        return False

def replan():
    knowledge_update = rospy.ServiceProxy('/rosplan_knowledge_base/update', KnowledgeUpdateService)
    global last_loc_name, last_battery
    knowledge_position1 = KnowledgeItem()
    knowledge_position1.knowledge_type = KnowledgeItem.FACT
    knowledge_position1.attribute_name = "at"  # specify the type of the robot
    knowledge_position1.values = [KeyValue("r","robot1"), KeyValue("p",last_loc_name)]

    knowledge_position2 = KnowledgeItem()
    knowledge_position2.knowledge_type = KnowledgeItem.FACT
    knowledge_position2.attribute_name = "at"  # specify the type of the robot
    knowledge_position2.values = [KeyValue("r","robot1"), KeyValue("p",get_current_station())]

    knowledge_battery1 = KnowledgeItem()
    knowledge_battery1.knowledge_type = KnowledgeItem.FUNCTION
    knowledge_battery1.attribute_name = "battery-level"  # specify the type of the robot
    knowledge_battery1.values = [KeyValue("r","robot1")]
    knowledge_battery1.function_value = last_battery

    knowledge_battery2 = KnowledgeItem()
    knowledge_battery2.knowledge_type = KnowledgeItem.FUNCTION
    knowledge_battery2.attribute_name = "battery-level"  # specify the type of the robot
    knowledge_battery2.values = [KeyValue("r","robot1")]
    knowledge_battery2.function_value = battery

    for update_type, request in [(2, knowledge_position1), (0, knowledge_position2),(2,knowledge_battery1),(0,knowledge_battery2)]:
        response = knowledge_update(update_type, request)
        rospy.loginfo(response)

    last_loc_name = get_current_station()
    last_battery = battery

    write_problem()
    get_high_level_plan()

def calc_battery_loss(time):
    return time*2 # 2 percent loss per second

def calc_time(p1, p2):
    loc1, loc2 = positions[p1], positions[p2]
    dist = abs(loc1[0]-loc2[0]) + abs(loc1[1]-loc2[1])
    return dist/0.22 # 0.22 is the maximum speed for burger turtle bot

def get_current_station():
    dist = float('inf')
    cur_pos = 0
    for i, pos in enumerate(positions[1:]):
        
        if dist > abs(loc[0]-pos[0]) + abs(loc[1]-pos[1]):
            dist = abs(loc[0]-pos[0]) + abs(loc[1]-pos[1])
            cur_pos = i + 1

    if dist > RADIUS:
        return "p1"
    return f"p{cur_pos+1}"

def get_move_action_str(p1,p2):
    time = calc_time(p1,p2)
    loss = int(calc_battery_loss(time))
    return f"""(:durative-action move-{names[p1]}-{names[p2]}
        :parameters (?r - robot)
        :duration (= ?duration {int(time)})  
        :condition (and 
        (at start (at ?r {names[p1]}))
        (at start (>= (battery-level ?r) {loss}))
        )
        :effect (and
            (at end (at ?r {names[p2]}))
            (at start (not (at ?r {names[p1]})))
            (at end (decrease (battery-level ?r) {loss}))
        ))

        """

def get_all_move_action_str():
    between = "\n".join([
        get_move_action_str(p,q)
     for p,q in [(2,1),(1,2)]])
    
    curr_to_all = "\n".join([
        get_move_action_str(0,q)
     for q in range(1,3)])
    
    station_to_end = "\n".join([
        get_move_action_str(q,3)
     for q in range(1,3)])
    
    return f"{between}\n{curr_to_all}\n{station_to_end}"

def write_problem():
    battery_domain = f"""(define (domain maze-navigation)
    (:requirements :strips :typing :fluents :durative-actions)
    (:types
        robot position - object
    )

    (:constants
        p1 p2 p3 p4 - position
    )
    (:predicates
        (at ?r - robot ?p - position)
        (has-station ?p - position)
    )

    
    (:functions
        (battery-level ?r - robot) 
    )
    
    {get_all_move_action_str()}

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
    

#     battery_problem_ = f"""
# (define (problem task)
# (:domain maze-navigation)
# (:objects
#     robot1 - robot
# )
# (:init
#     (at robot1 {get_current_station()})

#     (has-station p2)
#     (has-station p3) 

#     (= (battery-level robot1) {battery})

# )
# (:goal (and
#     (at robot1 p4)
#     (>=  (battery-level robot1) 30)
# ))
# )
# """

    dir_path = os.path.dirname(os.path.realpath(__file__))
    battery_problem_path = os.path.join(dir_path, "../battery_problem")

    with open(os.path.join(battery_problem_path,"battery_domain.pddl"),'w') as f:
        f.write(battery_domain)
    
    # # rospy.loginfo(battery_problem_)
    # with open(os.path.join(battery_problem_path,"battery_problem.pddl"),"w") as f:
    #     f.write(battery_problem_)

    if os.path.exists(os.path.join(battery_problem_path,"problem.pddl")):
        os.remove(os.path.join(battery_problem_path,"problem.pddl"))
        os.remove(os.path.join(battery_problem_path,"plan.pddl"))

    rospy.loginfo("Wrote the problem in pddl")

def plan_callback(plan):
    global plan_exists, current_plan
    plan_exists = True
    current_plan = plan.plan

def handle_action(action):
    rospy.loginfo(f"Action: {action.name}")
    name = action.name
    move_action = False
    if "move" in name:
        ix = int(name[9])-1
        goal_loc = positions[ix]
        success = handle_move(goal_loc)
        move_action = True
    elif "charge" in name:
        success = handle_charge()
    else:
        rospy.logwarn(f"Unknown action {name}")
        success = False
    return success, move_action

def handle_move(p):
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()

    goal.target_pose.pose = Pose(Point(p[0], p[1], 0), Quaternion(0, 0, 0.7071, 0.7071))

    ac.send_goal_and_wait(goal)

    if ac.get_state() == GoalStatus.SUCCEEDED:
        return True
    else: return False

def handle_charge():
    rospy.sleep(0.1)
    return True


if __name__ == "__main__":
    rospy.init_node("turtle_navigation")

    

    rospy.wait_for_service('/rosplan_problem_interface/problem_generation_server')
    rospy.wait_for_service('/rosplan_planner_interface/planning_server')
    rospy.wait_for_service('/rosplan_parsing_interface/parse_plan')
    # rospy.wait_for_service('/rosplan_plan_dispatcher/dispatch_plan')
    # rospy.wait_for_service('/rosplan_plan_dispatcher/cancel_dispatch')
    rospy.wait_for_service('/rosplan_knowledge_base/update')
    global problem_service, planning_service, parsing_service
    problem_service = rospy.ServiceProxy('/rosplan_problem_interface/problem_generation_server', Empty)
    planning_service = rospy.ServiceProxy('/rosplan_planner_interface/planning_server', Empty)
    parsing_service = rospy.ServiceProxy('/rosplan_parsing_interface/parse_plan', Empty)

    global ac
    ac = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    ac.wait_for_server()

    
    
    rospy.loginfo("Node has been started")
    
    

    odom_sub = rospy.Subscriber('/odom', Odometry, odom_callback)
    battery_sub = rospy.Subscriber('/battery_level', Float32, battery_callback)
    
    plan_sub = rospy.Subscriber('/rosplan_parsing_interface/complete_plan', CompletePlan, plan_callback)

    # write_problem()
    get_high_level_plan()
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        if plan_exists:
            plan_exists = False
            for action in current_plan:
                success, move_action = handle_action(action)
                if not success: # if one action didn't succeed 
                    break
                if move_action:
                    break
            if ((loc[0]-positions[-1][0])**2 + (loc[1]-positions[-1][1])**2)**.5 < RADIUS:
                rospy.loginfo("Finished the maze!!!")
                break
            else:
                rospy.loginfo("Replanning!!!")
                replan()
        rate.sleep()

