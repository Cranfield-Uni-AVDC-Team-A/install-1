#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


from __future__ import print_function
from behaviour.srv import taskreq
import rospy
from behaviour.msg import score
from behaviour.msg import members
from behaviour.msg import target
from behaviour.msg import targetlist
from behaviour.msg import drone_state
from behaviour.msg import task
from behaviour.srv import *
import geopy.distance

######################################
settletime = 2
######################################

############################
# Global Params
############################
global memberlist
global targetlist
global winner
global targetID

def members_callback(data):
    global memberlist
    memberlist = data
    return

def targetlist_callback(data):
    global targetlist
    targetlist = data
    return

def score_callback(otherscore):
    if otherscore.task_id == targetID:
        if otherscore.score > winner.score:
            winner.score = score()
            winner.drone_id = otherscore.drone_id
    return

def handle_task_req(targetid):
    global targetID
    targetID = targetid.targetid
    meID = rospy.get_param("thisdroneID")
    i = 0
    while i < len(memberlist.drone_states):
        if memberlist.drone_states[i].drone_id == meID:
            meState = memberlist.drone_states[i]
            break
        i = i + 1
    i = 0
    while i < len(targetlist.targets):
        if targetlist.targets[i].id == targetID:
            meTarget = targetlist.targets[i]
            break
        i = i + 1
        meTarget = target()

    if meState.mode == 1 and meState.type == 2:
        targetlat = meTarget.lat
        targetlon = meTarget.lon
        targetalt = meTarget.alt
        coordpoint = (targetlat , targetlon)
        coorddrone = (meState.drone_geometry.lat, meState.drone_geometry.lon)
        distance = (geopy.distance.vincenty(coordpoint, coorddrone).km) * 1000
        try: 
            myscore = (1/distance) * meState.battery
        except:
            myscore = 0
        score_msg = score()
        score_msg.drone_id = meID
        score_msg.task_id = targetID
        score_msg.score = myscore
        scorepub = rospy.Publisher('Scores', score, queue_size=8, latch = True)
        scorepub.publish(score_msg)
        winner.drone_id = meID
    rospy.sleep(settletime) # Wait for the Network to settle

    taskpub = scorepub = rospy.Publisher('Heartbeat_Internal', drone_state, queue_size=1)
    hb_msg = drone_state()
    hb_msg.drone_id = winner.drone_id
    hb_msg.task.target_id = targetID
    hb_msg.task.task_geometry.lat = targetlat
    hb_msg.task.task_geometry.lon = targetlon
    hb_msg.task.task_geometry.alt = targetalt
    hb_msg.task.type = 2
    hb_msg.mode = 2
    taskpub.publish(hb_msg)
    targpub = rospy.Publisher('Targets', target, queue_size=1)
    trg_msg = target(allocatedid = winner.drone_id)
    targpub.publish(trg_msg)
    return (1)

def task_allocation_server():
    global winner
    rospy.init_node('task_allocation_server')
    winner = score()
    rospy.Subscriber("Scores", score, score_callback)
    rospy.Subscriber("Members", members, members_callback)
    rospy.Subscriber("Targetlist", targetlist, targetlist_callback)
    s = rospy.Service('task_allocation', taskreq, handle_task_req)
    rospy.spin()

if __name__ == '__main__':
    task_allocation_server()

    
    
