#!/usr/bin/env python

# test file for the swarm state service

from __future__ import print_function
from scipy.optimize import linear_sum_assignment
import numpy as np
import time
import rospy
import sys
import rospy
from behaviour.srv import *
from behaviour.msg import swarmstate
import geopy.distance

if __name__ == '__main__':

    meID = rospy.get_param("thisdroneID")
   

    coordpoint = (rospy.get_param("#param for task lat") , rospy.get_param("# param for task lon"))
    distance = (geopy.distance.vincenty(coordpoint, coorddrone).km) * 1000
    score = 1/distance *#drone battery

