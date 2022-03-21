#!/usr/bin/env python

# test file for the swarm state service

from __future__ import print_function

import sys
import rospy
from behaviour.srv import *
from behaviour.msg import swarmstate

def swarm_state_client(x):
    rospy.wait_for_service('swarm_state')
    swarmreq = rospy.ServiceProxy('swarm_state', swarmstatereq)
    resp = swarmreq(x)
    return resp.swarmstate.num_mon


if __name__ == "__main__":
    x = int(1)
    print("Requesting service")

    print("Number of Monitors: %s"%(swarm_state_client(x)))