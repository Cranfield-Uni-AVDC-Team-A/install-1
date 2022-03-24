#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


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

def internal_callback(data):
    global internal_msg
    global flag_internal
    internal_msg = data
    internal_msg.messagetime = rospy.get_time()
    while flag_busy == 1:
        pass
    flag_internal = 1
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
            break
    flag_internal = 0
    return

def targets_callback(data):
    global targetlist_msg
    while flag_internal == 1:
        pass
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
            current_time = rospy.get_time()
            if internal_msg.id == targetlist_msg.targets[i].id and (curenttime - internal_msg.messagetime) <= timeout_internal:
                if not internal_msg.detectorid == 0:
                    targetlist_msg.targets[i].detectorid = internal_msg.detectorid
                if not internal_msg.detectortype == 0:
                    targetlist_msg.targets[i].detectortype = internal_msg.detectortype
                if not internal_msg.lat == 0:
                    targetlist_msg.targets[i].lat = internal_msg.lat
                if not internal_msg.lon == 0:
                    targetlist_msg.targets[i].lon = internal_msg.lon
                if not internal_msg.alt == 0:
                    targetlist_msg.targets[i].alt = internal_msg.alt
                if not internal_msg.allocatedid == 0:
                    targetlist_msg.targets[i].allocatedid = internal_msg.allocatedid
                if not internal_msg.search == 0:
                    targetlist_msg.targets[i].search = internal_msg.search
                if not internal_msg.clas == 0:
                    targetlist_msg.targets[i].confidence = internal_msg.confidence
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
while not rospy.is_shutdown():
    while (1):
        i = 0
        current_time = rospy.get_time()
        try:
            while i < len(targetlist_msg.targets):
                if  current_time - targetlist_msg.targets[i].messagetime >= timeout:
                    targid = int(targetlist_msg.targets[i].id)
                    pointid =  int(str(targetlist_msg.targets[i].id).split('.')[1])
                    targetlist_msg.targets.remove(targetlist_msg.targets[i])
                    execute = param_clean(targid, pointid)
                i = i + 1
            break
        except:
            break
    rate.sleep()
    pub = rospy.Publisher('Targetlist', targetlist, queue_size=1, latch = True)
    pub.publish(targetlist_msg)

