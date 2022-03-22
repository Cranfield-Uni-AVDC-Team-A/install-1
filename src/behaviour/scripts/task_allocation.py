#!/usr/bin/env python

from __future__ import print_function
from behaviour.srv import taskreq
import rospy
from behaviour.msg import score
from behaviour.msg import task
from behaviour.srv import *
import geopy.distance

######################################
settletime = 2
######################################



def callback(otherscore):
    if otherscore.task_id == targetID:
        if otherscore.score > winner.score:
            winner.score = score()
            winner.drone_id = otherscore.drone_id
    return

def handle_task_req(targetid):
    targetID = targetid
    meID = rospy.get_param("thisdroneID")
    if rospy.get_param("drone_mode_%s" %meID) == 1 and rospy.get_param("drone_type_%s" %meID) == 2:
        intid = int(targetid)
        decid =  int(str(targetid).split('.')[1])
        tarid = "%s_%s"%(intid, decid)
        tagetlat = rospy.get_param("target_lat_%s" %tarid)
        tagetlon = rospy.get_param("target_lon_%s" %tarid)
        tagetalt = rospy.get_param("target_alt_%s" %tarid)
        coordpoint = (targetlat , targetlon)
        coorddrone = (rospy.get_param("lat_%s" %meID), rospy.get_param("lon_%s" %meID))
        distance = (geopy.distance.vincenty(coordpoint, coorddrone).km) * 1000
        myscore = 1/distance * rospy.get_param("drone_battery_%s"%meID)
        score_msg = score()
        score_msg.drone_id = meID
        score_msg.task_id = targetid
        score_msg.score = myscore
        pub = rospy.Publisher('Scores', score, queue_size=8, latch = True)
        pub.publish(score_msg)
    rospy.Rate.sleep(1/settletime) # Wait for the Network to settle
    try:
        memory = rospy.get_param("taskid_%s" %winner.drone_id)
    except: # No Drones available to be tasked
        rospy.set_param("target_allcoated_%s"%tarid, 0)
        rospy.Rate.sleep(1)
        return(0)
    while(1): #Make sure task set
            try:
                rospy.set_param("taskid_%s"     %winner.drone_id    , targetid)
                rospy.set_param("allocated_%s"  %winner.drone_id    , 0)
                rospy.set_param("tasktype_%s"   %winner.drone_id   , 2)
                rospy.set_param("tasklat_%s"    %winner.drone_id   , targetlat)
                rospy.set_param("tasklon_%s"    %winner.drone_id   , targetlon)
                rospy.set_param("taskalt_%s"    %winner.drone_id   , targetalt)
                rospy.set_param("target_allcoated_%s"%tarid         , winner.drone_id)
                rospy.Rate.sleep(1)
            except:
                pass
            if not rospy.get_param("taskid_%s" %winner.drone_id) == memory:
                break
    return(1)

def task_allocation_server():
    rospy.init_node('task_allocation_server')
    global winner
    global targetID
    winner = score()
    rospy.Subscriber("Scores", score, callback)
    s = rospy.Service('task_allocation', taskreq, handle_task_req)
    rospy.spin()

if __name__ == '__main__':
    task_allocation_server()

    
    
