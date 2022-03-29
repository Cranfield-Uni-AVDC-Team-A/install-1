#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


from __future__ import print_function
import rospy
from behaviour.msg import members
from behaviour.msg import drone_state
from behaviour.msg import task_geometry
from behaviour.msg import targetlist
from behaviour.msg import task
from behaviour.msg import drone_geometry

############################
# Global Params
############################
global members_msg
global target_list
global timeout
global internal_timeout
global internal_msg
global internal_msg_list
global flag_busy
global flag_internal

############################################################################
frequency = 5
timeout = 2
internal_timeout = 1
timeout_internal = internal_timeout
############################################################################

flag_busy = 0
flag_internal = 0

rospy.init_node('MemberUpdater', anonymous=True) 

def targetlist_callback(data):
    global target_list
    target_list = data
    return

def internal_callback(data):
    global internal_msg_list
    data.messagetime = rospy.get_time()
    internal_msg_list.append(data)

def internal_msg_check():
    global flag_internal
    global internal_msg_list
    global members_msg
    blank_geometry = drone_geometry()
    blank_task_geo = task_geometry()
    msg_list_len = len(internal_msg_list)
    if msg_list_len > 10:
         rospy.logerr("Warning: Internal Heartbeat List buffer is s% messages long.", msg_list_len)
    while(1):
        if flag_busy == 0:
            flag_internal = 1
            break
        rospy.sleep(0.01)
    w = 0
    while w < len(internal_msg_list):
        i = 0
        while i < len(members_msg.drone_states):
            current_time = rospy.get_time()
            if internal_msg_list[w].drone_id == members_msg.drone_states[i].drone_id and (current_time - internal_msg_list[w].messagetime) <= timeout_internal:
                if not internal_msg_list[w].type == 0:
                    members_msg.drone_states[i].type = internal_msg_list[w].type
                if not internal_msg_list[w].mode == 0:
                    members_msg.drone_states[i].mode = internal_msg_list[w].mode
                    if internal_msg_list[w].mode == 0:
                        members_msg.drone_states[i].task.target_id = 0
                if not internal_msg_list[w].drone_geometry == blank_geometry:
                    members_msg.drone_states[i].drone_geometry = internal_msg_list[w].drone_geometry
                if not internal_msg_list[w].battery == 0:
                    members_msg.drone_states[i].battery = internal_msg_list[w].battery
                if not internal_msg_list[w].drone_soh == 0:
                    members_msg.drone_states[i].drone_soh = internal_msg_list[w].drone_soh
                if not internal_msg_list[w].task.task_id == 0:
                    members_msg.drone_states[i].task.task_id = internal_msg_list[w].task.task_id
                if not internal_msg_list[w].task.target_id == 0:
                    members_msg.drone_states[i].task.target_id = internal_msg_list[w].task.target_id
                if not internal_msg_list[w].task.task_geometry == blank_task_geo:
                    members_msg.drone_states[i].task.task_geometry = internal_msg_list[w].task.task_geometry
                if not internal_msg_list[w].task.allocated == 0:
                    members_msg.drone_states[i].task.allocated = internal_msg_list[w].task.allocated
                if not internal_msg_list[w].task.type == 0:
                    members_msg.drone_states[i].task.type = internal_msg_list[w].task.type
                internal_msg_list.remove(internal_msg_list[w])
                w = w - 1
                break
            i = i + 1
        w = w + 1    
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
    confl_list = []
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
                confl_list.append(members_msg.drone_states[i].task.target_id)
                if not data.task.task_geometry == blank_task_geo:
                    members_msg.drone_states[i].task.task_geometry = data.task.task_geometry
                if not data.task.allocated == 0:
                    members_msg.drone_states[i].task.allocated = data.task.allocated
                if not data.task.type == 0:
                    members_msg.drone_states[i].task.type = data.task.type
                members_msg.drone_states[i].messagetime = rospy.get_time()
                flag_found = 1
            else:
                if i + 1 == len(members_msg.drone_states) and flag_found == 0:
                    members_msg.drone_states.append(hb_msg)
                    break
            i = i + 1
    try:
        while confl_list[0]:
            flag_deconf = 0
            testnum = confl_list[0]
            confl_list.remove(confl_list[0])
            if testnum in confl_list:
                i = 0
                conf_ids = []
                while i < len(members_msg.drone_states):
                    if testnum == members_msg.drone_states[i].task.target_id:
                        w = 0
                        while w < len(target_list):
                            if testnum == target_list.targets[w].id:
                                if not target_list.targets[w].allocatedid == members_msg.drone_states[i].drone_id:
                                    members_msg.drone_states[i].task.target_id = 0
                                    members_msg.drone_states[i].mode = 1
                                    flag_deconf = 1
                                    break
                            w = w + 1
                    if flag_deconf == 1:
                        break
                    i = i + 1
    except:
        pass
    flag_busy = 0
    return (members_msg)

rospy.Subscriber("Heartbeats", drone_state, heartbeat_callback)
rospy.Subscriber("Targetlist", targetlist, targetlist_callback)
rospy.Subscriber("Heartbeat_Internal", drone_state, internal_callback)
rate = rospy.Rate(frequency)

members_msg = members()
internal_msg = drone_state()
internal_msg_list = []
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
    internal_msg_check()
    pub = rospy.Publisher('Members', members, queue_size=1, latch = True)
    pub.publish(members_msg)
    rate.sleep()
