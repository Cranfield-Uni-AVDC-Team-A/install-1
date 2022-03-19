#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from behaviour.msg import mission



def MISSION_TEST():
    
    pub = rospy.Publisher('Mission', mission, queue_size=1)
    rospy.init_node("Mission_Updater", anonymous=True)
    rate = rospy.Rate(0.3)
    rospy.loginfo("Step 1")
    while not rospy.is_shutdown():
        mission_msg = mission()
        mission_msg.points = 1
        mission_msg.lat1 = 1
        mission_msg.lat2 = 1
        mission_msg.lat3 = 1
        mission_msg.lat4 = 1
        mission_msg.lat5 = 1
        mission_msg.lat6 = 1
        mission_msg.lat7 = 1
        mission_msg.lat8 = 1
        mission_msg.lon1 = 1
        mission_msg.lon2 = 1
        mission_msg.lon3 = 1
        mission_msg.lon4 = 1
        mission_msg.lon5 = 1
        mission_msg.lon6 = 1
        mission_msg.lon7 = 1
        mission_msg.lon8 = 1
        mission_msg.alt1 = 1
        mission_msg.alt2 = 1
        mission_msg.alt3 = 1
        mission_msg.alt4 = 1
        mission_msg.alt5 = 1
        mission_msg.alt6 = 1
        mission_msg.alt7 = 1
        mission_msg.alt8 = 1
        pub.publish(mission_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        MISSION_TEST()
    except rospy.ROSInterruptException:
        pass
