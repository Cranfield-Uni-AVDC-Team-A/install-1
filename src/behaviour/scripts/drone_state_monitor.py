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

############################
# Global Params
############################
global members_msg
global timeout
global internal_timeout
global internal_msg
global flag_busy
global flag_internal

############################################################################
frequency = 5
timeout = 2
internal_timeout = 0.5
############################################################################

flag_busy = 0
flag_internal = 0

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
        i = i + 1
    flag_internal = 0
    return

def heartbeat_callback(data):
    global members_msg
    global flag_busy
    while flag_internal == 1:
        pass
    flag_busy = 1
    flag_found = 0
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
                flag_found = 1
            current_time = rospy.get_time()
            if internal_msg.drone_id == data.drone_id and (current_time - internal_msg.messagetime) <= internal_timeout:
                int_save = internal_msg        
                if not int_save.type == 0:
                    members_msg.drone_states[i].type = int_save.type
                if not int_save.mode == 0:
                    members_msg.drone_states[i].mode = int_save.mode
                if not int_save.drone_geometry == blank_geometry:
                    members_msg.drone_states[i].drone_geometry = int_save.drone_geometry
                if not int_save.battery == 0:
                    members_msg.drone_states[i].battery = int_save.battery
                if not int_save.drone_soh == 0:
                    members_msg.drone_states[i].drone_soh = int_save.drone_soh
                if not int_save.task.task_id == 0:
                    members_msg.drone_states[i].task.task_id = int_save.task.task_id
                if not int_save.task.target_id == 0:
                    members_msg.drone_states[i].task.target_id = int_save.task.target_id
                if not int_save.task.task_geometry == blank_task_geo:
                    members_msg.drone_states[i].task.task_geometry = int_save.task.task_geometry
                if not int_save.task.allocated == 0:
                    members_msg.drone_states[i].task.allocated = int_save.task.allocated
                if not int_save.task.type == 0:
                    members_msg.drone_states[i].task.type = int_save.task.type
            else:
                if i + 1 == len(members_msg.drone_states) and flag_found == 0:
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





