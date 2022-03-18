
#!/usr/bin/env python


##################
#DEPRECATED
##################

# Function to get the current state of the drone if available and create a drone object if not

import rospy
from Behaviour.msg import drone_state
from Behaviour.msg import area_geometry
from Behaviour.msg import task_geometry
from Behaviour.msg import score
from Behaviour.msg import task
from Behaviour.msg import drone_geometry




def callback(data):
    rospy.loginfo("Battery Health for Drone %s is %s.", data.drone_id , data.battery)


def subs():
    #drone_state = drone_state()
    rospy.init_node ('Drone_State_Onboard_Monitor', anonymous=True)
    rospy.Subscriber("DroneState", drone_state, callback)
    rospy.spin()    # Prevents Python exiting

if __name__ == '__main__':
    subs()
    