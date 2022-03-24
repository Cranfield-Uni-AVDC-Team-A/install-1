#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


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
intenal_timeout = 0.5
############################################################################

############################
# Global Params
############################
global members_msg
global internal_msg
global flag_busy
global flag_internal

rospy.init_node('MemberUpdater', anonymous=True) 

def internal_callback(data):
    global internal_msg
    global flag_internal
    internal_msg = data
    blank_geometry = drone_geometry()
    blank_task_geo = task_geometry()
    # Don't knacker the proper message time (script local only)
    internal_msg.messagetime = rospy.get_time()
    while flag_busy == 1:
        pass
    flag_internal = 1
    i = 0
    while i < len(members_msg.drone_states):
        if members_msg.drone_states[i].drone_id == data.drone_id:
            if not data.type == 0:
                members_msg.drone_states[i].type = data.type
            if not data.mode == 0:
                members_msg.drone_states[i].mode = data.mode
            if not data.drone_geometry == blank_geometry:
                members_msg.drone_states[i].drone_geometry = data.drone_geometry
            if not data.battery == 0:
                members_msg.drone_states[i].battery = data.battery
            if not data.drone_soh == 0:
                members_msg.drone_states[i].drone_soh = data.drone_soh
            if not data.task.task_id == 0:
                members_msg.drone_states[i].task.task_id = data.task.task_id
            if not data.task.target_id == 0:
                members_msg.drone_states[i].task.target_id = data.task.target_id
            if not data.task.task_geometry == blank_task_geo:
                members_msg.drone_states[i].task.task_geometry = data.task.task_geometry
            if not data.task.allocated == 0:
                members_msg.drone_states[i].task.allocated = data.task.allocated
            if not data.task.type == 0:
                members_msg.drone_states[i].task.type = data.task.type
            break
    flag_internal = 0
    return

def heartbeat_callback(data):
    global members_msg
    global flag_busy
    while flag_internal == 1:
        pass
    flag_busy = 1
    hb_msg = drone_state()
    blank_geometry = drone_geometry()
    blank_task_geo = task_geometry()
    hb_msg.drone_id = data.drone_id
    hb_msg.type = data.type
    hb_msg.mode = data.mode
    hb_msg.drone_geometry = data.drone_geometry
    hb_msg.battery = data.battery
    hb_msg.drone_soh = data.drone_soh
    hb_msg.task.task_id = data.task.task_id
    hb_msg.task.target_id = data.task.target_id
    hb_msg.task.task_geometry = data.task.task_geometry
    hb_msg.task.allocated = data.task.allocated
    hb_msg.task.type = data.task.type
    hb_msg.messagetime = rospy.get_time()

    if not members_msg.drone_states:
        members_msg.drone_states.append(hb_msg)
    else:
        i = 0
        while i < len(members_msg.drone_states):
            if members_msg.drone_states[i].drone_id == data.drone_id:
                    if not data.type == 0:
                        members_msg.drone_states[i].type = data.type
                    if not data.mode == 0:
                        members_msg.drone_states[i].mode = data.mode
                    if not data.drone_geometry == blank_geometry:
                        members_msg.drone_states[i].drone_geometry = data.drone_geometry
                    if not data.battery == 0:
                        members_msg.drone_states[i].battery = data.battery
                    if not data.drone_soh == 0:
                        members_msg.drone_states[i].drone_soh = data.drone_soh
                    if not data.task.task_id == 0:
                        members_msg.drone_states[i].task.task_id = data.task.task_id
                    if not data.task.target_id == 0:
                        members_msg.drone_states[i].task.target_id = data.task.target_id
                    if not data.task.task_geometry == blank_task_geo:
                        members_msg.drone_states[i].task.task_geometry = data.task.task_geometry
                    if not data.task.allocated == 0:
                        members_msg.drone_states[i].task.allocated = data.task.allocated
                    if not data.task.type == 0:
                        members_msg.drone_states[i].task.type = data.task.type
                    members_msg.drone_states[i].messagetime = rospy.get_time()
            current_time = rospy.get_time()
            if internal_msg.drone_states[i].drone_id == data.drone_id && (current_time - internal_msg.drone_states[i].messagetime) <= internal_timeout:
                        if not internal_msg.type == 0:
                            members_msg.drone_states[i].type = internal_msg.type
                        if not internal_msg.mode == 0:
                            members_msg.drone_states[i].mode = internal_msg.mode
                        if not internal_msg.drone_geometry == blank_geometry:
                            members_msg.drone_states[i].drone_geometry = internal_msg.drone_geometry
                        if not internal_msg.battery == 0:
                            members_msg.drone_states[i].battery = internal_msg.battery
                        if not internal_msg.drone_soh == 0:
                            members_msg.drone_states[i].drone_soh = internal_msg.drone_soh
                        if not internal_msg.task.task_id == 0:
                            members_msg.drone_states[i].task.task_id = internal_msg.task.task_id
                        if not internal_msg.task.target_id == 0:
                            members_msg.drone_states[i].task.target_id = internal_msg.task.target_id
                        if not internal_msg.task.task_geometry == blank_task_geo:
                            members_msg.drone_states[i].task.task_geometry = internal_msg.task.task_geometry
                        if not internal_msg.task.allocated == 0:
                            members_msg.drone_states[i].task.allocated = internal_msg.task.allocated
                        if not internal_msg.task.type == 0:
                            members_msg.drone_states[i].task.type = internal_msg.task.type
            else:
                if i + 1 == len(members_msg.drone_states):
                    members_msg.drone_states.append(hb_msg)
                    break
            i = i + 1
    flag_busy = 0
    return (members_msg)

rospy.Subscriber("Heartbeats", drone_state, heartbeat_callback)
rospy.Subscriber("Heartbeat_Internal", drone_state, internal_callback)
rate = rospy.Rate(frequency)

members_msg = members()
internal_msg = drone_state()
while not rospy.is_shutdown():
    while (1):
        i = 0
        current_time = rospy.get_time()
        try:
            while i < len(members_msg.drone_states):
                if  current_time - members_msg.drone_states[i].messagetime >= timeout:
                    members_msg.drone_states.remove(members_msg.drone_states[i])
                i = i + 1
            break
        except:
            break
    rate.sleep()
    pub = rospy.Publisher('Members', members, queue_size=1, latch = True)
    pub.publish(members_msg)





