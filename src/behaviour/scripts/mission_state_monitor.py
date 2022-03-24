#!/usr/bin/env python

from __future__ import print_function
import rospy
from behaviour.msg import mission

def callback(data):
    mission_msg = mission()
    if data.npoints < 3:
        print("Error with minimum points - Mission Rejected.")
        return
    if not data.npoints ==  len (data.lat):
        print("Error with mission upload - Mission Rejected.")
        return
    if not data.npoints == len (data.lon):
        print("Error with mission upload - Mission Rejected.")
        return
    if not data.npoints == len (data.alt):
        print("Error with mission upload - Mission Rejected.")
        return
    rospy.set_param("mission_points_lats", data.lat)
    rospy.set_param("mission_points_lons", data.lon)
    rospy.set_param("mission_points_alts", data.alt)
    return

def subs():
    rospy.init_node('MissionMonitor', anonymous=True) 
    rospy.Subscriber("Mission", mission, callback)
    rospy.spin()

if __name__ == '__main__':
    subs()