#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


############################
# Imports
############################
from __future__ import print_function
import rospy

from behaviour.srv import areareq
from behaviour.srv import taskreq
from behaviour.srv import swarmstatereq
from behaviour.srv import compreq
from behaviour.msg import targetlist
from behaviour.msg import target
from behaviour.msg import members
from behaviour.msg import drone_state

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
global meState


############################
# Client Functions
############################
def swarm_state_client():
    rospy.wait_for_service('swarm_state')
    swarmreq = rospy.ServiceProxy('swarm_state', swarmstatereq)
    resp = swarmreq(1)
    return (resp)

def area_allocation_client():
    rospy.wait_for_service('area_allocation')
    arearequest = rospy.ServiceProxy('area_allocation', areareq)
    resp = arearequest(1)
    return

def task_allocation_client(tid):
    rospy.wait_for_service('task_allocation')
    taskrequest = rospy.ServiceProxy('task_allocation', taskreq)
    resp = taskrequest(tid)
    return(resp)

def task_monitoring_client(id_of_interest):
    rospy.wait_for_service('task_complete_monitor')
    comprequest = rospy.ServiceProxy('task_complete_monitor', compreq)
    resp = comprequest(id_of_interest)
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
            if data.targets[i].allocatedid == 0:
                unallocated_ids.append(data.targets[i].id)
        except:
            pass
        i = i + 1
    return

def members_callback(data):
    global memberlist
    global meState
    memberlist = data
    i = 0
    while i < len(memberlist.drone_states):
        if memberlist.drone_states[i].drone_id == meID:
            meState = memberlist.drone_states[i]
            break
        i = i + 1
    return

############################
# Inits
############################
while(1):
    if rospy.has_param("thisdroneID"):
        break
    rospy.sleep(0.01)
rospy.init_node('main')
meID = rospy.get_param("thisdroneID")
unallocated_ids = []
ratemon = rospy.Rate(mon_check_freq)
ratetrack = rospy.Rate(track_check_freq)
rate = rospy.Rate(1)
state_pub = rospy.Publisher('Heartbeat_Internal', drone_state, queue_size=1)
rospy.Subscriber("Members", members, members_callback)

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
                if meState.mode != 0:
                    break
            except:
                pass

        ############################
        # Give time for swarm init
        ############################
        rospy.sleep(2)
        ############################################################################################
        # If Monitoring Drone
        ############################################################################################
        if meState.type == 1:
            while(1):
                ##########################
                # Wait for Mission Uplaod
                ##########################
                while(1):
                    if rospy.has_param("mission_points_lats"):
                        if rospy.has_param("mission_points_lons"):
                            break
                #######################################
                # Calculate Area centre
                #######################################
                lats = rospy.get_param(mission_points_lats)
                lons = rospy.get_param(mission_points_lons)
                diflat = max(lats) - min(lats)
                diflon = max(lons) - min(lons)
                monlat = (diflat/ 2) + min(lats)
                monlon = (diflon/ 2) + min(lons)
                mon_hb_msg = drone_state()
                mon_hb_msg.drone_id = meID
                mon_hb_msg.task.allocated = 1
                mon_hb_msg.task.type = 1
                mon_hb_msg.task.task_geometry.lat = monlat
                mon_hb_msg.task.task_geometry.lon  = monlon
                mon_hb_msg.task.task_geometry.alt  = mon_alt
                state_pub.publish(mon_hb_msg)
                ratemon.sleep()
        ############################################################################################
        # If Tracking Drone
        ############################################################################################
        if meState.type == 2:
            ##########################
            # Tracking Drone Inits
            ##########################
            ##########################
            # Subscribe to the target list.
            ##########################
            rospy.Subscriber("Targetlist", targetlist, targetlist_callback)
            while(1):
                ##########################
                # Wait for Mission Uplaod
                ##########################
                while(1):
                    if rospy.has_param("mission_points_lats"):
                        if rospy.has_param("mission_points_lons"):
                            break
                #################################################
                # If in monitoring mode with no unallocated tasks
                #################################################
                if meState.mode == 1 and len(unallocated_ids) == 0:
                    ######################################
                    # Remember num_avail for task checking
                    ######################################
                    num_avail_memory = swarm_state_client()
                    ##########################
                    # Assign the sub-areas
                    ##########################
                    area_allocation_client()
                    ratemon.sleep()
                    while(1):
                        #######################################
                        # Check to see if mode changed
                        #######################################
                        if meState.mode != 1:
                            break
                        #######################################
                        # Check to see if num_avail changed
                        #######################################
                        num_avail_current = swarm_state_client()
                        if (num_avail_memory.a) != num_avail_current.a:
                            break
                        #######################################
                        # Check for target
                        #######################################           
                        if len(unallocated_ids) > 0:
                            break
                        ratemon.sleep()
                #################################################
                # If in monitoring mode with unallocated tasks
                #################################################
                if meState.mode == 1 and len(unallocated_ids) != 0:
                    ##########################
                    # Assign Unallocated Task
                    ##########################
                    sucs = task_allocation_client(unallocated_ids[0]) # Sequential
                    if sucs.a == 1:
                        try:
                            unallocated_ids.remove(unallocated_ids[0])
                        except:
                            pass
                #################################################
                # If in tracking mode
                #################################################
                if meState.mode == 2:
                    ##########################
                    # Monitor task for completion
                    ##########################
                    current_target_task_id = meState.task.target_id
                    while(1):
                        completed = task_monitoring_client(current_target_task_id)
                        #########################################
                        # If completed, return to Monitoring Mode
                        #########################################
                        if completed.a == 1:
                            track_hb_msg = drone_state(drone_id = meID, mode = 1)
                            state_pub.publish(track_hb_msg)
                            break
                        ratetrack.sleep()
                    break              
 
############################
# Main End
############################
