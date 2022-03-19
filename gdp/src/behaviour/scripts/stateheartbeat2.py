#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from behaviour.msg import drone_state
from behaviour.msg import area_geometry
from behaviour.msg import task_geometry
from behaviour.msg import score
from behaviour.msg import task
from behaviour.msg import drone_geometry
from behaviour.msg import drone_hello



#######################################
### Set Params for This Drone Here: ###
#######################################

droneID = 3
droneTYPE = 2
droneMODE = 1
frequency = 10

#######################################


rospy.set_param("thisdroneID", droneID)
rospy.set_param("thisdroneTYPE", droneTYPE)


def DRONE_STATE_TEST():
    
    pub = rospy.Publisher('Heartbeats', drone_state, queue_size=1)
    rospy.init_node("Heartbeat_Onboard_Updater", anonymous=True)
    rate = rospy.Rate(frequency)
    while not rospy.is_shutdown():
        drone_state_msg = drone_state()
        drone_state_msg.drone_id = droneID
        if rospy.has_param("drone_type_%s" %droneID) and 0 != rospy.get_param("drone_mode_%s" %droneID):
            # First set are determined by the drone and should not be unavailable or not set
            drone_state_msg.mode =          rospy.get_param("drone_mode_%s" %droneID)
            drone_state_msg.type =          rospy.get_param("drone_type_%s" %droneID)
            drone_state_msg.battery =       rospy.get_param("drone_battery_%s" %droneID)
            drone_state_msg.drone_soh =     rospy.get_param("drone_soh_%s" %droneID)
            drone_geometry_msg = drone_geometry()
            # Below line is for testing
            drone_geometry_msg.lat = 52.066861
            #drone_geometry_msg.lat =       rospy.get_param("lat_%s" %droneID)
            # Below line is for testing
            drone_geometry_msg.lon = -0.633621
            #drone_geometry_msg.lon =       rospy.get_param("lon_%s" %droneID)
            drone_geometry_msg.alt =        rospy.get_param("alt_%s" %droneID)
            drone_geometry_msg.yaw =        rospy.get_param("yaw_%s" %droneID)
            drone_geometry_msg.roll =       rospy.get_param("roll_%s" %droneID)
            drone_geometry_msg.pitch =      rospy.get_param("pitch_%s" %droneID)
            drone_state_msg.drone_geometry = drone_geometry_msg
            # Second set are situational dependant and so might not be always set on init.
            # Check if they are set and if not, init to default values.
            score_msg = score()
            try:
                score_msg.drone_id =            rospy.get_param("scoredroneid_%s" %droneID)
                score_msg.task_id =             rospy.get_param("scoretaskid_%s" %droneID)
                score_msg.score =               rospy.get_param("score_%s" %droneID)
            except:
                score_msg.drone_id =            0
                score_msg.task_id =             0
                score_msg.score =               0
            drone_state_msg.score = score_msg
            task_msg = task()
            try:
                task_msg.task_id =              rospy.get_param("taskid_%s" %droneID)
                task_msg.allocated =            rospy.get_param("allocated_%s" %droneID)
                task_msg.type =                 rospy.get_param("tasktype_%s" %droneID)
                task_geometry_msg = task_geometry()
                task_geometry_msg.lat =         rospy.get_param("tasklat_%s" %droneID)
                task_geometry_msg.lon =         rospy.get_param("tasklon_%s" %droneID)
                task_geometry_msg.alt =         rospy.get_param("taskalt_%s" %droneID)
                task_msg.task_geometry = task_geometry_msg
            except:
                task_msg.task_id =              -1
                task_msg.allocated =            -1
                task_msg.type =                 -1
                task_geometry_msg = task_geometry()
                task_geometry_msg.lat =         0
                task_geometry_msg.lon =         0
                task_geometry_msg.alt =         0
                task_msg.task_geometry = task_geometry_msg
            drone_state_msg.task = task_msg
            pub.publish(drone_state_msg)
            rate.sleep()
        else:
            drone_state_msg.type = droneTYPE
            drone_state_msg.mode = droneMODE
            drone_state_msg.battery = 1
            drone_state_msg.drone_soh = 0
            drone_geometry_msg = drone_geometry()
            drone_geometry_msg.lat = 0
            drone_geometry_msg.lon = 0
            drone_geometry_msg.alt = 0.0
            drone_geometry_msg.yaw = 0
            drone_geometry_msg.roll = 0
            drone_geometry_msg.pitch = 0
            drone_state_msg.drone_geometry = drone_geometry_msg
            score_msg = score()
            score_msg.drone_id = 0
            score_msg.task_id = 0
            score_msg.score = 0
            drone_state_msg.score = score_msg
            pub.publish(drone_state_msg)
            rate.sleep()



if __name__ == '__main__':
    try:
        DRONE_STATE_TEST()
        
    except rospy.ROSInterruptException:
        pass


