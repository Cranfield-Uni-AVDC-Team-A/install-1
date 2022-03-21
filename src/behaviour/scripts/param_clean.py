#!/usr/bin/env python

#######################
#DEPRECATED
#######################


from __future__ import print_function
from behaviour.srv import cleanreq
import rospy

def handle_clean_req(ID):
             
    param_id = "drone_id_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "drone_type_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "drone_mode_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "drone_battery_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "drone_soh_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "lat_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "lon_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "alt_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "yaw_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "roll_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "pitch_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "scoredroneid_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "scoretaskid_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "score_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "taskid_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "allocated_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "tasktype_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "tasklat_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "tasklon_%s" %ID
    rospy.set_param (param_id, 0)
    param_id = "taskalt_%s" %ID
    rospy.set_param (param_id, 0)
    return

def param_clean_server():
    rospy.init_node('param_clean_server')
    s = rospy.Service('param_clean', cleanreq, handle_clean_req)
    rospy.spin()

if __name__ == "__main__":
    param_clean_server()