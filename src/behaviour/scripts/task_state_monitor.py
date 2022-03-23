#!/usr/bin/env python

from __future__ import print_function
import rospy
from behaviour.msg import targetlist
from behaviour.msg import target
from behaviour.msg import task
import geopy.distance

############################################################################
distance_thresh = 2     # distance in m that the targets will be amalgamated
frequency = 5           # frequency that the topic is published
timeout = 15            # timeout before a "lost" target is removed
############################################################################

rospy.init_node('TaskUpdater', anonymous=True) 

def callback(data):
    global targetlist_msg
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
    if rospy.has_param("target_allocatedid_%s_%s" %(int(data.id), int(str(data.id).split('.')[1]))):
        hb_msg.allocatedid = rospy.get_param("target_allocatedid_%s_%s"%(int(data.id), int(str(data.id).split('.')[1])))
    if not targetlist_msg.targets:
        targetlist_msg.targets.append(hb_msg)
    else:
        i = 0
        while i < len(targetlist_msg.targets):
            if targetlist_msg.targets[i].id == data.id:
                targetlist_msg.targets[i] = (hb_msg)
                break
            coordsnew = (data.lat, data.lon)
            coordsold = (targetlist_msg.targets[i].lat,targetlist_msg.targets[i].lon)
            distance = (geopy.distance.vincenty(coordsnew, coordsold).km) * 1000
            if distance > distance_thresh:
                break
            if not targetlist_msg.targets[i].detectorid == data.detectorid:
                if targetlist_msg.targets[i].detectortype == 2 and data.detectortpye == 1:
                    break
                coorddrone = (rospy.get_param("lat_%s"%data.detectorid),rospy.get_param("lon_%s"%data.detectorid))
                coordtarget = (data.lat,data.lon)
                distance_current = (geopy.distance.vincenty(coordsnew, coordsold).km) * 1000 
                coorddrone = (rospy.get_param("lat_%s"%targetlist_msg.targets[i].detectorid),rospy.get_param("lon_%s"%targetlist_msg.targets[i].detectorid))
                coordtarget = (data.lat,data.lon)
                distance_previous = (geopy.distance.vincenty(coordsnew, coordsold).km) * 1000                 
                if distance_current > distance_previous:
                    break
            if i + 1 == len(targetlist_msg.targets):
                targetlist_msg.targets.append(hb_msg)
                break
            i = i + 1
    return (targetlist_msg)

rospy.Subscriber("Targets", target, callback)
rate = rospy.Rate(frequency)

def param_clean(ID, point):

    param_id = "target_id_%s_%s" %(ID, point)
    print (param_id)
    rospy.delete_param( param_id )
    param_id = "target_detectorid_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_id_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_detectorid_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_detectortype_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_lat_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_lon_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_alt_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_clas_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    param_id = "target_confidence_%s_%s" %(ID, point)
    rospy.delete_param( param_id )
    # Also added allocatedid
    return

global targetlist_msg
targetlist_msg = targetlist()
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
                    print(targid, pointid)
                    execute = param_clean(targid, pointid)
                i = i + 1
            break
        except:
            break
    rate.sleep()
    pub = rospy.Publisher('Targetlist', targetlist, queue_size=1, latch = True)
    pub.publish(targetlist_msg)

