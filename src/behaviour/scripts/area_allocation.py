#!/usr/bin/env python

# test file for the swarm state service

from __future__ import print_function
from scipy.optimize import linear_sum_assignment
import numpy as np
import time
import sys
import rospy
from behaviour.srv import *
from behaviour.srv import areareq
from behaviour.msg import swarmstate
import geopy.distance

def swarm_state_client():
    rospy.wait_for_service('swarm_state')
    swarmreq = rospy.ServiceProxy('swarm_state', swarmstatereq)
    resp = swarmreq(1)
    return resp.swarmstate.available_track

def handle_area_req(a):

    lats = []
    lons = []
    n_points = swarm_state_client()
    #print(n_points)
    # get the mission items
    #####################################
    # Uncomment this block for final build
    #lats = rospy.get_param("mission_points_lats")
    #lons = rospy.get_param("mission_points_lons")
    #alts = rospy.get_param("mission_points_alts")
    #####################################

    #####################################
    # Comment out this block when not testing
    lats.append  (52.06688046891671)
    lats.append  (52.06670194104023)
    lats.append  (52.06669981570283)
    lats.append  (52.06688049328314)
    lons.append (-0.6336844349831279)
    lons.append (-0.6336786728635458)
    lons.append (-0.6329491885016963)
    lons.append (-0.6329496307356894)
    #####################################

    diflat = max(lats) - min(lats)
    diflon = max(lons) - min(lons)
    try:
        dellon = diflon / n_points
    except:
        print("No Trackers available")
    dellat = diflat/ 2 # this is a simplification due to the simple shape and size of our area
    # please see the segmenter algorithm for a more complex implementation (ommited here as overkill)
    points = []
    i = 1
    while i <= n_points:

        points.append(  (min(lats) +  dellat, min(lons) + ((i * dellon) - (dellon / 2)) , i )  )
        i = i + 1

    #########
    # take the points and allocate them
    #########
    available = []
    costs = []
    num_mon = 0
    n_drones = rospy.get_param("n_drones")
    i = 0
    while i < len(n_drones):
        drone_type = rospy.get_param("drone_type_%s" % n_drones[i])
        drone_mode = rospy.get_param("drone_mode_%s" % n_drones[i])
        if drone_type == 2:
            if drone_mode == 1:
                available.append((n_drones[i], rospy.get_param("lat_%s"%n_drones[i]), rospy.get_param("lon_%s"%n_drones[i]), rospy.get_param("drone_battery_%s"%n_drones[i]) ))
        i = i + 1

    # avialable format: id,lat,lon.bat
    # Calcualte their costs for each task
    diction = []
    array = []
    i = 0
    while i < len(points):
        w = 0
        while w < len(available):
            coordpoint = (points[i][0], points[i][1])
            coorddrone = (available[w][1], available[w][2])
            distance = (geopy.distance.vincenty(coordpoint, coorddrone).km) * 1000
            score = 1/distance * available[w][3]    
            diction.append (score)
            #print (score)
            w = w + 1
        array.append(diction)
        diction = []
        i = i +1
    array = np.array(array)
    try:
        x, y = linear_sum_assignment(array)
    except:
        print("No Trackers Available")
    
    # Order of the allocation preserved from available
    p = 0 
    memory = rospy.get_param("tasklat_%s"%available[p][0])
    try:
        test = y
    except:
        print("Couldn't get y")
    try:
        prev_segs = rospy.get_param("previous_segments")
    except:
        prev_segs = -1
    current_segs = len(available)
    rospy.set_param("previous_segments", current_segs)

    while(1):
        i = 0
        try:
            while i < len(y):
                rospy.set_param ("allocated_%s"%available[i][0] ,int( y[i])             )
                rospy.set_param ("tasktype_%s"%available[i][0]  ,1                      )
                rospy.set_param ("tasklat_%s"%available[i][0]   ,float(points[y[i]][0]) )
                rospy.set_param ("tasklon_%s"%available[i][0]   ,float(points[y[i]][1]) )
                rospy.set_param ("taskalt_%s"%available[i][0]   ,0                      )
                i = i + 1
            rospy.Rate.sleep(1)
        except:
            pass
        if not rospy.get_param("tasklat_%s"%available[p][0]) == memory:
            break
        elif current_segs == prev_segs and rospy.get_param("tasklat_%s"%available[p][0]) == memory:
            break
    return(1)

def area_allocation_server():
    rospy.init_node('area_allocation_server')
    s = rospy.Service('area_allocation', areareq, handle_area_req)
    rospy.spin()

if __name__ == '__main__':
    area_allocation_server()