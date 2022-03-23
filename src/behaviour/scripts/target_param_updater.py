#!/usr/bin/env python

###################
#Dev Note for what Params are used
#


from __future__ import print_function
import rospy
from behaviour.msg import target
from behaviour.msg import targetlist

def callback(data):
    i = 0
    while i < len(data.targets):       
        ID = int(data.targets[i].id)
        point =  int(str(data.targets[i].id).split('.')[1])
        param_id = "target_id_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].id)
        param_id = "target_detectorid_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].detectorid)
        param_id = "target_detectortype_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].detectortype)
        param_id = "target_lat_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].lat)
        param_id = "target_lon_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].lat)
        param_id = "target_alt_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].alt)
        param_id = "target_clas_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].clas)
        param_id = "target_confidence_%s_%s" %(ID, point)
        rospy.set_param( param_id ,        data.targets[i].confidence)
        param_id = "target_allcoatedid_%s_%s" %(ID, point)
        try:
            rospy.set_param( param_id ,        data.targets[i].allocatedid)
        except:
            pass
        i = i +1
    
def subs():
    #drone_state = drone_state()
    rospy.init_node ('task_param_update', anonymous=True)
    rospy.Subscriber("Targetlist", targetlist, callback)
    rospy.spin()  

if __name__ == '__main__':
    subs()