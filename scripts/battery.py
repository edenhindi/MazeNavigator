#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float32
from nav_msgs.msg import Odometry
from visualization_msgs.msg import Marker
RADIUS = 0.25
charging_stations = [(0, 1.1),(2.335,5)]

def distance(loc1, loc2):
    return ((loc1[0]-loc2[0])**2 + (loc1[1]-loc2[1])**2)**.5 # L2 distance

def is_near_charging_station(loc):
    return any(distance(loc, station) < RADIUS for station in charging_stations)

loc = (0,0)
def odom_callback(msg):
    pos = msg.pose.pose.position
    x = pos.x
    y = pos.y
    global loc
    loc = (x,y)

def publish_marker(battery_level, charging):
    marker = Marker()
    marker.header.frame_id = "base_link"
    marker.header.stamp = rospy.Time.now()

    marker.type = Marker.TEXT_VIEW_FACING
    marker.action = Marker.ADD

    marker.pose.position.x = 0.0
    marker.pose.position.y = 0.0
    marker.pose.position.z = 1.0

    marker.text = f"Battery: {battery_level}"

    marker.scale.z = 0.4

    if charging:
        marker.color.g = 1.0
        marker.color.r = 0.0
    else:
        marker.color.r = 1.0
        marker.color.g = 0.0
    marker.color.b = 0.0
    marker.color.a = .7

    marker_pub.publish(marker)

if __name__ == "__main__":
    rospy.init_node("battery_charge")
    rospy.loginfo("Node has been started")
    

    battery_level = 100.0
    battery_pub = rospy.Publisher('/battery_level', Float32, queue_size=10)
    marker_pub = rospy.Publisher('/battery_marker', Marker, queue_size=10)
    odom_sub = rospy.Subscriber('/odom', Odometry, odom_callback)

    rate = rospy.Rate(10)
    i = 0
    while not rospy.is_shutdown():
        is_near = is_near_charging_station(loc)
        if not is_near:
            battery_level -= 0.2  # 2 percent loss per second
            if battery_level < 0:
                battery_level = 0
            charging = False
        else:
            battery_level += 0.5 # 5 percent gain per second
            if battery_level > 100:
                battery_level = 100
            charging = True

        battery_pub.publish(battery_level)
        if i % 10 == 0:
            rospy.loginfo(battery_level)
            i = 0
        i+=1
        rate.sleep()