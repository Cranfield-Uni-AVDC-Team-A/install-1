#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


from __future__ import print_function
from behaviour.srv import swarmstatereq
from behaviour.srv import swarmstatereqResponse
from behaviour.msg import members
import rospy

global memberlist
global meState


def members_callback(data):
    global memberlist
    global meState
    memberlist = data
    i = 0
    while i < len(memberlist.drone_states):
        if memberlist.drone_states[i].drone_id == meID:
            meState = memberlist.drone_states[i]
            break
        i = i + 1
    return


def handle_swarm_state_req(a):

    num_mon = 0
    num_track = 0
    num_avail = 0
    n_drones = len(memberlist.drone_states)
    i = 0
    while i < n_drones:
        drone_type = memberlist.drone_states[i].type
        drone_mode = memberlist.drone_states[i].mode
        if drone_type == 1:
            num_mon = num_mon + 1
        elif drone_type == 2:
            num_track = num_track + 1
            if drone_mode == 1:
                num_avail = num_avail + 1
        i = i + 1

    return (num_avail)

def swarm_state_server():
    rospy.init_node('swarm_state_server')
    s = rospy.Service('swarm_state', swarmstatereq, handle_swarm_state_req)
    rospy.Subscriber("Members", members, members_callback)
    rospy.spin()

if __name__ == "__main__":
    while(1):
        if rospy.has_param("thisdroneID"):
            break
    meID = rospy.get_param("thisdroneID")
    swarm_state_server()