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
    mission_msg.lat = [52.066176,52.066199,52.066131,52.066129]
    mission_msg.lon = [-0.629761,-0.629542,-0.629526,-0.629759]
    mission_msg.alt = [10, 10, 15, 5]
    pub.publish(mission_msg)

if __name__ == '__main__':
    try:
        missionupload()
    except rospy.ROSInterruptException:
        pass
