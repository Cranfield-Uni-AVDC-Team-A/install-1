#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


from __future__ import print_function
import rospy
from std_msgs.msg import String
from behaviour.msg import drone_state
from behaviour.msg import task_geometry
from behaviour.msg import task
from behaviour.msg import drone_geometry
from behaviour.msg import drone_hello
from behaviour.msg import members


#######################################
### Set Params for This Drone Here: ###
#######################################

droneID = 5
droneTYPE = 2
frequency = 1

#######################################
# Drone wont activate until param
# drone_ready_%s
# is set by GNC when they're ready

global memberlist
global meState

rospy.set_param("thisdroneID", droneID)
rospy.set_param("thisdroneTYPE", droneTYPE)

memberlist = members()
memberlist.drone_states.append (drone_state())
memberlist.drone_states[0].drone_id = droneID
memberlist.drone_states[0].type = droneTYPE
meState = memberlist.drone_states[0]

def members_callback(data):
    global memberlist
    global meState
    memberlist = data
    i = 0
    while i < len(memberlist.drone_states):
        if memberlist.drone_states[i].drone_id == droneID:
            meState = memberlist.drone_states[i]
            break
        i = i + 1
    return


def DRONE_STATE_TEST():
    
    pub = rospy.Publisher('Heartbeats', drone_state, queue_size=1)
    rospy.init_node("Heartbeat_Onboard_Updater", anonymous=True)
    rate = rospy.Rate(frequency)
    while not rospy.is_shutdown():
        hb_msg = drone_state()
        blank_geometry = drone_geometry()
        blank_task_geometry = task_geometry()
        hb_msg.drone_id = droneID
        if rospy.has_param("drone_ready_%s" %droneID):
            if not meState.mode == 0:
                hb_msg.mode = meState.mode
            else:
                hb_msg.mode = 1
            hb_msg.type = droneTYPE
            if not meState.battery == 0:
                hb_msg.battery = meState.battery
            else:
                hb_msg.battery = 0
            if not meState.drone_soh == 0:
                hb_msg.drone_soh = meState.drone_soh
            else:
                hb_msg.drone_soh = 0
            if not meState.drone_geometry == blank_geometry:
                hb_msg.drone_geometry = meState.drone_geometry
            else:
                hb_msg.drone_geometry = blank_geometry
            # Below line is for testing
            hb_msg.drone_geometry.lat = 52.066861
            # Below line is for testing
            hb_msg.drone_geometry.lon = -0.633621
            if not meState.task.task_id == 0:
                hb_msg.task.task_id = meState.task.task_id
            else:
                hb_msg.task.task_id = 0
            if not meState.task.target_id == 0:
                hb_msg.task.target_id = meState.task.target_id
            else:
                hb_msg.task.target_id = 0
            if not meState.task.allocated == 0:
                hb_msg.task.allocated = meState.task.allocated
            else:
                hb_msg.task.allocated = 0
            if not meState.task.type == 0:
                hb_msg.task.type = meState.task.type
            else:
                hb_msg.task.type = 0
            if not meState.task.task_geometry == blank_task_geometry:
                hb_msg.task.task_geometry = meState.task.task_geometry
            else:
                hb_msg.task.task_geometry = blank_task_geometry

            pub.publish(hb_msg)
            rate.sleep()


rospy.Subscriber("Members", members, members_callback)

if __name__ == '__main__':
    try:
        DRONE_STATE_TEST()
    except rospy.ROSInterruptException:
        pass


