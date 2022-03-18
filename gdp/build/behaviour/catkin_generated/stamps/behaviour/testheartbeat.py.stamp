
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



def DRONE_STATE_TEST():
    
    pub = rospy.Publisher('Heartbeats', drone_hello, queue_size=1)
    rospy.init_node("Heartbeat_Onboard_Updater", anonymous=True)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        drone_state_msg = drone_hello()
        drone_state_msg.drone_id = 1
        drone_state_msg.mode = 2
        drone_state_msg.type = 3
        pub.publish(drone_state_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        DRONE_STATE_TEST()
    except rospy.ROSInterruptException:
        pass

