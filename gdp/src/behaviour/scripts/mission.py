#!/usr/bin/env python3

######################
#DEPRECATED
######################

import rospy
from std_msgs.msg import String
from Behaviour.msg import drone_state
from Behaviour.msg import area_geometry
from Behaviour.msg import task_geometry
from Behaviour.msg import score
from Behaviour.msg import task
from Behaviour.msg import drone_geometry



def DRONE_STATE_TEST():
    
    pub = rospy.Publisher('DroneState', drone_state, queue_size=1)
    rospy.init_node("Drone_State_Onboard_Updater", anonymous=True)
    rate = rospy.Rate(0.3)
    while not rospy.is_shutdown():
        drone_state_msg = drone_state()
        drone_state_msg.drone_id = 1
        drone_state_msg.mode = 0
        drone_state_msg.type = 0
        drone_state_msg.battery = 100
        drone_state_msg.drone_soh = 1
        drone_geometry_msg = drone_geometry()
        drone_geometry_msg.lat = 0.0
        drone_geometry_msg.lon = 0.0
        drone_geometry_msg.alt = 0.0
        drone_geometry_msg.yaw = -1.0
        drone_geometry_msg.roll = -1.0
        drone_geometry_msg.pitch = -1.0
        drone_state_msg.drone_geometry = drone_geometry_msg
        score_msg = score()
        score_msg.drone_id = 1
        score_msg.task_id = -1
        score_msg.score = -1.0
        drone_state_msg.score = score_msg
        task_msg = task()
        task_msg.task_id = -1
        task_msg.allocated = -1
        task_msg.type = -1
        task_geometry_msg = task_geometry()
        task_geometry_msg.lat = -1.0
        task_geometry_msg.lon = -1.0
        task_geometry_msg.alt = -1.0
        task_msg.task_geometry = task_geometry_msg
        area_geometry_msg = area_geometry()
        area_geometry_msg.lat1 = -1.0
        area_geometry_msg.lat2 = -1
        area_geometry_msg.lat3 = -1
        area_geometry_msg.lat4 = -1
        area_geometry_msg.lon1 = -1
        area_geometry_msg.lon2 = -1
        area_geometry_msg.lon3 = -1
        area_geometry_msg.lon4 = -1
        area_geometry_msg.alt1 = -1
        area_geometry_msg.alt2 = -1
        area_geometry_msg.alt3 = -1
        area_geometry_msg.alt4 = -1
        task_msg.area_geometry = area_geometry_msg
        drone_state_msg.task = task_msg
        rospy.loginfo(drone_state_msg.task.task_geometry.lat)
        pub.publish(drone_state_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        DRONE_STATE_TEST()
    except rospy.ROSInterruptException:
        pass

