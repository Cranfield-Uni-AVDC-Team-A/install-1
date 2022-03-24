#!/usr/bin/env python

from __future__ import print_function
import rospy
from behaviour.msg import mission
import random

def missionupload():
    
    pub = rospy.Publisher('Mission', mission, queue_size=1)
    rospy.init_node("Fake_Mission", anonymous=True)
    mission_msg = mission()
    mission_msg.npoints = 4
    mission_msg.lat = [52.06688046891671, 52.06670194104023, 52.06669981570283, 52.06688049328314]
    mission_msg.lon = [-0.6336844349831279, -0.6336786728635458, -0.6329491885016963, -0.6329496307356894]
    mission_msg.alt = [10, 10, 15, 5]
    pub.publish(mission_msg)

if __name__ == '__main__':
    try:
        missionupload()
    except rospy.ROSInterruptException:
        pass
