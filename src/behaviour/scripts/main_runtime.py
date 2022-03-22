#!/usr/bin/env python

from __future__ import print_function
import rospy
from behaviour.srv import *
from behaviour.srv import areareq

############################################
############## PARAMS ######################
############################################

mon_alt = 20 # Monitoring drone altitude

############################################
############################################

# ID of the current drone
meID = rospy.get_param("thisdroneID")


# Client Functions
def area_allocation_client():
    rospy.wait_for_service('area_allocation')
    arearequest = rospy.ServiceProxy('area_allocation', areareq)
    resp = arearequest(1)
    return


# Main Loop

if __name__ == '__main__':
    ############################
    # Wait for Init
    ############################
    while (1):
        if rospy.get_param("drone_mode_%s" %meID) != 0:
            break
    ############################################################################################
    # If Monitoring Drone
    ############################################################################################
    if rospy.get_param("drone_type_%s" %meID) == 1:
        ##########################
        # Wait for Mission Uplaod
        ##########################
        while(1):
            try:
                lats = rospy.get_param("mission_points_lats")
                lons = rospy.get_param("mission_points_lons")
            except:
                pass
        #######################################
        # Calculate Area centre
        #######################################
        diflat = max(lats) - min(lats)
        diflon = max(lons) - min(lons)
        monlat = (diflat/ 2) + min(lats)
        monlon = (diflon/ 2) + min(lons)
        try:
            monmemory = rospy.get_param ("tasklat_%s"%meID )
        except:
            monmemory = 0
        while(1):
            try:
                    rospy.set_param ("allocated_%s"%meID, 1)
                    rospy.set_param ("tasktype_%s"%meID, 1)
                    rospy.set_param ("tasklat_%s"%meID, monlat)
                    rospy.set_param ("tasklon_%s"%meID, monlon)
                    rospy.set_param ("taskalt_%s"%meID, mon_alt)
                    i = i + 1
                rospy.Rate.sleep(1)
            except:
                pass
            if not rospy.get_param("tasklat_%s"%available[p][0]) == memory:
                break
    # Consider delay / other task for the monitoring drone now



    ############################################################################################
    # If Tracking Drone
    ############################################################################################
    if rospy.get_param("drone_type_%s" %meID) == 2:
        # Do the thing

        area_allocation_client()
