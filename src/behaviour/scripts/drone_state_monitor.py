#!/usr/bin/env python

from __future__ import print_function
import rospy
from behaviour.msg import members
from behaviour.msg import drone_hello
from behaviour.msg import drone_state
from behaviour.msg import task_geometry
from behaviour.msg import task
from behaviour.msg import drone_geometry

############################################################################
frequency = 5
timeout = 2
############################################################################

rospy.init_node('MemberUpdater', anonymous=True) 

def callback(data):
    global members_msg
    hb_msg = drone_state()
    hb_msg.drone_id = data.drone_id
    hb_msg.type = data.type
    hb_msg.mode = data.mode
    hb_msg.drone_geometry = data.drone_geometry
    hb_msg.battery = data.battery
    hb_msg.drone_soh = data.drone_soh
    hb_msg.task = data.task
    hb_msg.messagetime = rospy.get_time()
    if not members_msg.drone_states:
        members_msg.drone_states.append(hb_msg)
    else:
        i = 0
        while i < len(members_msg.drone_states):
            if members_msg.drone_states[i].drone_id == data.drone_id:
                members_msg.drone_states[i] = hb_msg
                break
            else:
                if i + 1 == len(members_msg.drone_states):
                    members_msg.drone_states.append(hb_msg)
                    break
            i = i + 1
    return (members_msg)

rospy.Subscriber("Heartbeats", drone_state, callback)
rate = rospy.Rate(frequency)

def param_clean(ID):
             
    param_id = "drone_id_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "drone_type_%s" %ID
    rospy.delete_param( param_id )
    param_id = "drone_mode_%s" %ID
    rospy.delete_param( param_id )
    param_id = "drone_battery_%s" %ID
    rospy.delete_param( param_id )
    param_id = "drone_soh_%s" %ID
    rospy.delete_param( param_id )
    param_id = "lat_%s" %ID
    rospy.delete_param( param_id )
    param_id = "lon_%s" %ID
    rospy.delete_param( param_id )
    param_id = "alt_%s" %ID
    rospy.delete_param( param_id )
    param_id = "yaw_%s" %ID
    rospy.delete_param( param_id )
    param_id = "roll_%s" %ID
    rospy.delete_param( param_id )
    param_id = "pitch_%s" %ID
    rospy.delete_param( param_id )
    param_id = "scoredroneid_%s" %ID
    rospy.delete_param( param_id )
    param_id = "scoretaskid_%s" %ID
    rospy.delete_param( param_id )
    param_id = "score_%s" %ID
    rospy.delete_param( param_id )
    param_id = "taskid_%s" %ID
    rospy.delete_param( param_id )
    param_id = "allocated_%s" %ID
    rospy.delete_param( param_id )
    param_id = "tasktype_%s" %ID
    rospy.delete_param( param_id )
    param_id = "tasklat_%s" %ID
    rospy.delete_param( param_id )
    param_id = "tasklon_%s" %ID
    rospy.delete_param( param_id )
    param_id = "taskalt_%s" %ID
    rospy.delete_param( param_id )
    return

global members_msg
members_msg = members()
while not rospy.is_shutdown():
    while (1):
        i = 0
        current_time = rospy.get_time()
        try:
            while i < len(members_msg.drone_states):
                if  current_time - members_msg.drone_states[i].messagetime >= timeout:
                    droneid = members_msg.drone_states[i].drone_id
                    members_msg.drone_states.remove(members_msg.drone_states[i])
                    execute = param_clean(droneid)
                i = i + 1
            break
        except:
            break
    rate.sleep()
    pub = rospy.Publisher('Members', members, queue_size=1, latch = True)
    pub.publish(members_msg)





