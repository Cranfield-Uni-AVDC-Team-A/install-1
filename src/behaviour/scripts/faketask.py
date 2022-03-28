#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from behaviour.msg import target
import random


def targetbeat():
    
    pub = rospy.Publisher('Targets', target, queue_size=1)
    rospy.init_node("Target_Onboard_Updater", anonymous=True)
    rate = rospy.Rate(5)
    time = rospy.get_time()
    while not rospy.is_shutdown():
        target_msg = target()
        # Use time as ID to avoid conflicts
        target_msg.id = time
        target_msg.detectorid = rospy.get_param("thisdroneID")
        target_msg.detectortype = rospy.get_param("thisdroneTYPE")
        target_msg.lat = 52.066834 + (0.000001 * random.random())
        target_msg.lon = -0.633472 + (0.000001 * random.random())
        target_msg.alt = 2 + (0.5 * random.random())
        target_msg.clas = 1
        target_msg.confidence = random.random()
        pub.publish(target_msg)
        rate.sleep()

if __name__ == '__main__':
    while(1):
        if rospy.has_param("thisdroneID"):
            break
    try:
        targetbeat()
    except rospy.ROSInterruptException:
        pass
