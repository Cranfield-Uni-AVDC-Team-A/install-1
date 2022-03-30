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
    mission_msg.lat = [52.06741363239274,52.06749425153649,52.06722501345044,52.06713526706122]
    mission_msg.lon = [-0.6303178968537395,-0.6298675502010838,-0.6297190842715281,-0.6301842775174009]
    mission_msg.alt = [10, 10, 15, 5]
    pub.publish(mission_msg)

if __name__ == '__main__':
    try:
        missionupload()
    except rospy.ROSInterruptException:
        pass
