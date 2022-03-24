#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


############################
# Imports
############################
from __future__ import print_function
import rospy
from behaviour.srv import *
from behaviour.srv import areareq
from behaviour.srv import taskreq
from behaviour.srv import compreq
from behaviour.msg import swarmstate
from behaviour.msg import targetlist
from behaviour.msg import target

####################################################################################################################################
############## PARAMS ##############################################################################################################
####################################################################################################################################

mon_alt = 20                # Monitoring drone altitude
mon_check_freq = 1          # Loop rate for the state checking for all drones when monitoring
track_check_freq = 2        # Loop rate for the state checking for tracking drones when tracking

####################################################################################################################################
####################################################################################################################################

############################
# Global Params
############################
global Target_list
global memberlist
global unallocated_ids

############################
# Inits
############################
rospy.init_node('main')
meID = rospy.get_param("thisdroneID")
unallocated_ids = []
ratemon = rospy.Rate(mon_check_freq)
ratetrack = rospy.Rate(track_check_freq)
rate = rospy.Rate(1)

############################
# Client Functions
############################
def swarm_state_client():
    rospy.wait_for_service('swarm_state')
    swarmreq = rospy.ServiceProxy('swarm_state', swarmstatereq)
    resp = swarmreq(1)
    return resp.swarmstate.available_track

def area_allocation_client():
    rospy.wait_for_service('area_allocation')
    arearequest = rospy.ServiceProxy('area_allocation', areareq)
    resp = arearequest(1)
    return

def task_allocation_client(tid):
    rospy.wait_for_service('task_allocation')
    taskrequest = rospy.ServiceProxy('task_allocation', taskreq)
    resp = taskrequest(tid)
    return

def task_monitoring_client():
    rospy.wait_for_service('task_complete_monitor')
    comprequest = rospy.ServiceProxy('task_complete_monitor', compreq)
    resp = comprequest(1)
    return (resp)

############################
# Callback Functions
############################
def targetlist_callback(data):
    global unallocated_ids
    Target_list = data
    unallocated_ids = []
    i = 0
    while i < len(data.targets):
        try:
            if not rospy.has_param("target_allocatedid_%s_%s" %(int(data.targets[i].id), int(str(data.targets[i].id).split('.')[1]))):
                unallocated_ids.append(data.targets[i].id)
        except:
            pass
        i = i + 1
    return

def members_callback(data):
    global memberlist
    memberlist = data
    i = 0
    while i < len(memberlist.drone_states):
        if memberlist.drone_states[i].drone_id == meID:
            meState = memberlist.drone_states[i]
            break
        i = i + 1
    return

############################
# Main Loop
############################
if __name__ == '__main__':
    while(1):
        ############################
        # Wait for Init
        ############################
        while (1):
            try:
                if rospy.get_param("drone_mode_%s" %meID) != 0:
                    break
            except:
                pass
        ############################
        # Give time for swarm init
        ############################
        rate.sleep()
        ############################################################################################
        # If Monitoring Drone
        ############################################################################################
        if rospy.get_param("drone_type_%s" %meID) == 1:
            while(1):
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
                    except:
                        pass
                    if not rospy.get_param("tasklat_%s"%available[p][0]) == memory:
                        break
                    rate.sleep()
                ratemon.sleep()
        ############################################################################################
        # If Tracking Drone
        ############################################################################################
        if rospy.get_param("drone_type_%s" %meID) == 2:
            print("Tracker hit")
            ##########################
            # Tracking Drone Inits
            ##########################
            ##########################
            # Subscribe to the target list.
            ##########################
            rospy.Subscriber("Targetlist", targetlist, targetlist_callback)
            while(1):
                #################################################
                # If in monitoring mode with no unallocated tasks
                #################################################
                if rospy.get_param("drone_mode_%s" %meID) == 1 and len(unallocated_ids) == 0:
                    print("Unallo hit")
                    ######################################
                    # Remember num_avail for task checking
                    ######################################
                    num_avail_memory = swarm_state_client()
                    ##########################
                    # Assign the sub-areas
                    ##########################
                    print("Area Allo hit")
                    area_allocation_client()
                    while(1):
                        #######################################
                        # Check to see if mode changed
                        #######################################
                        if rospy.get_param("drone_mode_%s" %meID) != 1:
                            break
                        #######################################
                        # Check to see if num_avail changed
                        #######################################
                        num_avail_current = swarm_state_client()
                        if num_avail_memory != num_avail_current:
                            break
                        #######################################
                        # Check for target
                        #######################################   
                        print (len(unallocated_ids))             
                        if len(unallocated_ids) > 0:
                            break
                        ratemon.sleep()
                #################################################
                # If in monitoring mode with unallocated tasks
                #################################################
                if rospy.get_param("drone_mode_%s" %meID) == 1 and len(unallocated_ids) != 0:
                    ##########################
                    # Assign Unallocated Task
                    ##########################
                    print("Task allo hit")
                    print(unallocated_ids[0])
                    task_allocation_client(unallocated_ids[0]) # Sequential
                    break
                #################################################
                # If in tracking mode
                #################################################
                if rospy.get_param("drone_mode_%s" %meID) == 2:
                    ##########################
                    # Monitor task for completion
                    ##########################
                    current_target_task_id = rospy.get_param("task_id_%s" %meID)
                    while(1):
                        completed = task_monitoring_client(current_target_task_id)
                        #########################################
                        # If completed, return to Monitoring Mode
                        #########################################
                        if completed == 1:
                            rospy.set_param("drone_mode_%s"    %meID   , 1)
                            break
                        ratetrack.sleep()
                    break              
 
############################
# Main End
############################
