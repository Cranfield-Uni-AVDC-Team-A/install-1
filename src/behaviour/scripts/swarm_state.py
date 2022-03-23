#!/usr/bin/env python

from __future__ import print_function
from behaviour.srv import swarmstatereq
from behaviour.srv import swarmstatereqResponse
from behaviour.msg import swarmstate
import rospy

def handle_swarm_state_req(a):

    response = swarmstate()
    num_mon = 0
    num_track = 0
    num_avail = 0
    n_drones = rospy.get_param("n_drones")
    i = 0
    while i < len(n_drones):
        drone_type = rospy.get_param("drone_type_%s" % n_drones[i])
        drone_mode = rospy.get_param("drone_mode_%s" % n_drones[i])
        if drone_type == 1:
            num_mon = num_mon + 1
        elif drone_type == 2:
            num_track = num_track + 1
            if drone_mode == 1:
                num_avail = num_avail + 1
        i = i + 1
    response.num_mon = num_mon
    response.num_track = num_track
    response.available_track = num_avail

    return swarmstatereqResponse(response)

def swarm_state_server():
    rospy.init_node('swarm_state_server')
    s = rospy.Service('swarm_state', swarmstatereq, handle_swarm_state_req)
    rospy.spin()

if __name__ == "__main__":
    swarm_state_server()