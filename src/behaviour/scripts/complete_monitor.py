#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


from __future__ import print_function
from behaviour.msg import targetlist
from behaviour.srv import compreq
from behaviour.msg import target
import rospy

global active_list

def targetlistcallback(data):
    global active_list
    active_list = data
    return

def handle_task_comp_req(target_id):
    targ_id = target_id.a
    lats = rospy.get_param("mission_points_lats")
    lons = rospy.get_param("mission_points_lons")
    alts = rospy.get_param("mission_points_alts")
    maxlats = max(lats)
    minlats = min(lats)
    maxlons = max(lons)
    minlons = min(lons)
    flag_active = 0
    flag_area = 0
    i = 0
    while i < len(active_list.targets):
        try:
            if active_list.targets[i].id == targ_id:
                flag_active = 1
            if minlats <= active_list.targets[i].lat <= maxlats:
                if minlons <= active_list.targets[i].lon <= maxlons:
                    flag_area = 1
        except:
            pass
        i = i + 1
    if flag_active == 1 and flag_area == 1:
        return (0)
    return (1)

def task_monitoring_server():
    rospy.init_node('task_complete_monitor_node')
    rospy.Subscriber("Targetlist", targetlist, targetlistcallback)
    s = rospy.Service('task_complete_monitor', compreq, handle_task_comp_req)
    rospy.spin()

if __name__ == "__main__":
    task_monitoring_server()
