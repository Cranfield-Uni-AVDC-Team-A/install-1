
#!/usr/bin/env python3


# Function to get the current state of the drone if available and create a drone object if not
from __future__ import print_function
import rospy
import rospy as ros
from behaviour.msg import drone_state
from behaviour.msg import task_geometry
from behaviour.msg import score
from behaviour.msg import task
from behaviour.msg import drone_geometry
from behaviour.msg import members




def callback(data):
    i = 0
    drone_dict = []
    while i < len(data.drone_states):
             
        
             ID = data.drone_states[i].drone_id

             param_id = "drone_id_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_id)
             
             param_id = "drone_type_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].type)

             param_id = "drone_mode_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].mode)

             param_id = "drone_battery_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].battery)

             param_id = "drone_soh_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_soh)

             param_id = "lat_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_geometry.lat)

             param_id = "lon_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_geometry.lon)

             param_id = "alt_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_geometry.alt)

             param_id = "yaw_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_geometry.yaw)

             param_id = "roll_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_geometry.roll)

             param_id = "pitch_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].drone_geometry.pitch)

             param_id = "scoredroneid_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].score.drone_id)

             param_id = "scoretaskid_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].score.task_id)

             param_id = "score_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].score.score)

             param_id = "taskid_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].task.task_id)

             param_id = "allocated_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].task.allocated)
         
             param_id = "tasktype_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].task.type)
         
             param_id = "tasklat_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].task.task_geometry.lat)
 
             param_id = "tasklon_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].task.task_geometry.lon)
         
             param_id = "taskalt_%s" %ID
             rospy.set_param( param_id ,        data.drone_states[i].task.task_geometry.alt)

             drone_dict.append(data.drone_states[i].drone_id)
             i = i +1

    rospy.set_param("n_drones", drone_dict)
    






    

def subs():
    #drone_state = drone_state()
    rospy.init_node ('Param_update', anonymous=True)
    rospy.Subscriber("Members", members, callback)
    rospy.spin()    # Prevents Python exiting

if __name__ == '__main__':
    subs()
    
