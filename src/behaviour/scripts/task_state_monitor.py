#!/usr/bin/env python



from __future__ import print_function
import rospy
from behaviour.msg import targetlist
from behaviour.msg import target
from behaviour.msg import members
from behaviour.msg import drone_state
from behaviour.msg import task
import geopy.distance

############################
# Global Params
############################
global targetlist_msg
global memberlist
global timeout
global timeout_internal
global internal_msg
global internal_msg_data
global flag_busy
global flag_internal

###############################################################################
distance_thresh = 2     # distance in m that the targets will be amalgamated
frequency = 5           # frequency that the topic is published
timeout = 15            # timeout before a "lost" target is removed
timeout_internal = 0.5  # timeout before an internal update is ignored
###############################################################################

flag_busy = 0
flag_internal = 0

rospy.init_node('TaskUpdater', anonymous=True) 

############################
# Callbacks
############################
def members_callback(data):
    global memberlist
    memberlist = data
    return

# Note to self - possible issue where messages might step on one another
# Not observed, but theoretically possible.
# Consdier implementing a recieving queue for messages and processing along queue.
# Update - Now implemented

def internal_callback(data):
    global internal_msg_list
    data.messagetime = rospy.get_time()
    internal_msg_list.append(data)

def internal_msg_check():
    global flag_internal
    global internal_msg_list
    global targetlist_msg
    msg_list_len = len(internal_msg_list)
    if msg_list_len > 10:
         rospy.logerr("Warning: Internal Target List buffer is s% messages long.", msg_list_len)

    while(1):
        if flag_busy == 0:
            flag_internal = 1
            break
        rospy.sleep(0.01)
    w = 0
    while w < len(internal_msg_list):
        i = 0
        while i < len(targetlist_msg.targets):
            current_time = rospy.get_time()
            if internal_msg_list[w].id == targetlist_msg.targets[i].id and (current_time - internal_msg_list[w].messagetime) <= timeout_internal:
                if not internal_msg_list[w].detectorid == 0:
                    targetlist_msg.targets[i].detectorid = internal_msg_list[w].detectorid
                if not internal_msg_list[w].detectortype == 0:
                    targetlist_msg.targets[i].detectortype = internal_msg_list[w].detectortype
                if not internal_msg_list[w].lat == 0:
                    targetlist_msg.targets[i].lat = internal_msg_list[w].lat
                if not internal_msg_list[w].lon == 0:
                    targetlist_msg.targets[i].lon = internal_msg_list[w].lon
                if not internal_msg_list[w].alt == 0:
                    targetlist_msg.targets[i].alt = internal_msg_list[w].alt
                if not internal_msg_list[w].allocatedid == 0:
                    targetlist_msg.targets[i].allocatedid = internal_msg_list[w].allocatedid
                if not internal_msg_list[w].search == 0:
                    targetlist_msg.targets[i].search = internal_msg_list[w].search
                if not internal_msg_list[w].clas == 0:
                    targetlist_msg.targets[i].confidence = internal_msg_list[w].confidence
                internal_msg_list.remove(internal_msg_list[w])
                w = w -1
                break
            i = i + 1
        w = w + 1    
    flag_internal = 0
    return

def targets_callback(data):
    global targetlist_msg
    global flag_busy
    while (1):
        if flag_internal == 0:
            flag_busy = 1
            break
        rospy.sleep(0.01)
    flag_busy = 1
    hb_msg = target()
    hb_msg.id = data.id
    hb_msg.detectorid = data.detectorid
    hb_msg.detectortype = data.detectortype
    hb_msg.lat = data.lat
    hb_msg.lon = data.lon
    hb_msg.alt = data.alt
    hb_msg.clas = data.clas
    hb_msg.search = data.search
    hb_msg.confidence = data.confidence
    hb_msg.messagetime = rospy.get_time()
    if not targetlist_msg.targets:
        targetlist_msg.targets.append(hb_msg)
        flag_busy = 0
        return (targetlist_msg)
    i = 0
    while i < len(targetlist_msg.targets):
        if targetlist_msg.targets[i].id == data.id:
            if not data.detectorid == 0:
                targetlist_msg.targets[i].detectorid = data.detectorid
            if not data.detectortype == 0:
                targetlist_msg.targets[i].detectortype = data.detectortype
            if not data.lat == 0:
                targetlist_msg.targets[i].lat = data.lat
            if not data.lon == 0:
                targetlist_msg.targets[i].lon = data.lon
            if not data.alt == 0:
                targetlist_msg.targets[i].alt = data.alt
            if not data.allocatedid == 0:
                targetlist_msg.targets[i].allocatedid = data.allocatedid
            if not data.search == 0:
                targetlist_msg.targets[i].search = data.search
            if not data.clas == 0:
                targetlist_msg.targets[i].confidence = data.confidence
            timenow = rospy.get_time()
            targetlist_msg.targets[i].messagetime = timenow
            break
        coordsnew = (data.lat, data.lon)
        coordsold = (targetlist_msg.targets[i].lat,targetlist_msg.targets[i].lon)
        distance = (geopy.distance.vincenty(coordsnew, coordsold).km) * 1000
        if distance > distance_thresh:
            break
        if not targetlist_msg.targets[i].detectorid == data.detectorid:
            if targetlist_msg.targets[i].detectortype == 2 and data.detectortpye == 1:
                break
            j = 0
            while j < len(memberlist.drone_states):
                if memberlist.drone_states[j].drone_id == targetlist_msg.targets[i].detectorid:
                    detectorstateold = memberlist.drone_states[j]
                    break
                j = j + 1
            j = 0
            while j < len(memberlist.drone_states):
                if memberlist.drone_states[j].drone_id == data.detectorid:
                    detectorstatenew = memberlist.drone_states[j]
                    break
                j = j + 1
            try:
                coorddrone = (detectorstateold.drone_geometry.lat , detectorstateold.drone_geometry.lon)
                coordtarget = (data.lat,data.lon)
                distance_previous = (geopy.distance.vincenty(coordsnew, coordsold).km) * 1000 
                coorddrone = (detectorstatenew.drone_geometry.lat , detectorstatenew.drone_geometry.lon)
                coordtarget = (data.lat,data.lon)
                distance_current = (geopy.distance.vincenty(coordsnew, coordsold).km) * 1000
                if distance_current > distance_previous:
                    break
            except:
                print ("Detector offline")
        if i + 1 == len(targetlist_msg.targets):
            targetlist_msg.targets.append(hb_msg)
            break
        i = i + 1
    i = 0
    while i < len(memberlist.drone_states):
        w = 0
        while w < len(targetlist_msg.targets):
            if memberlist.drone_states[i].task.target_id == targetlist_msg.targets[w].id:
                targetlist_msg.targets[w].allocatedid = memberlist.drone_states[i].drone_id
            w = w + 1
        i = i + 1
    flag_busy = 0
    return (targetlist_msg)

############################
# Main
############################

rospy.Subscriber("Targets", target, targets_callback)
rospy.Subscriber("Target_Internal", target, internal_callback)
rospy.Subscriber("Members", members, members_callback)
rate = rospy.Rate(frequency)

targetlist_msg = targetlist()
internal_msg = target()
internal_msg_list = []
while not rospy.is_shutdown():
    while (1):
        i = 0
        current_time = rospy.get_time()
        try:
            while i < len(targetlist_msg.targets):
                if  current_time - targetlist_msg.targets[i].messagetime >= timeout:
                    targetlist_msg.targets.remove(targetlist_msg.targets[i])
                i = i + 1
            break
        except:
            break
    internal_msg_check()
    pub = rospy.Publisher('Targetlist', targetlist, queue_size=1, latch = True)
    pub.publish(targetlist_msg)
    rate.sleep()
