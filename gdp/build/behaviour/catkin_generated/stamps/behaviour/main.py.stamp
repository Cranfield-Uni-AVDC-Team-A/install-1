
#!/usr/bin/env python



from functions import initalise
from functions import membercountupdate

# Intiialisation steps
 if not rospy.has_param (parm_droneid)
    initalise()

# Update the swarm with the newly arrived drone
membercountupdate()

# get swarm state
try wait_for_message(topic, topic_msg, timeout)

except
    

     # Initial Functs (may need additional)
        # Generate Drone Object
            # DRONE.id
            # DRONE.mode
            # DRONE.type
            # DRONE.geometry
            # DRONE.soh
            # 
            # Need to evaluate if the task allocation requires
            # an additional property here with the task ID and the 
            # relevant drone score.

             

# Area allocation Funct
    # Broadcast drone state for GCS
        # SendBroadcast(DRONE, GCS)

        #####################
        # Make a service to produce these from the updated params on the server
        #####################


    # Get number of tracking drones
        # ParamServer(NUM_TRACK)
    # Return number of drones

    # Divide area into segments and generate task objects
        # Segment Funct
            # Segment()

    # Run Allocation algo 1
        # Task assignment 1
            # Get segment tasks
                # ParamServer(SEGMENT_TASK)
            # Run Algo
                # SegmentAloAlgo()

        # Report current drone assignment
            # Get drone ID == This drone
                # ParamServer(DRONE.id)
            # Broadcast the task assignment for current ID
                # SendBroadcast(DRONE.id SEGMENT_TASK.id)



        # Check for confliction
            # Wait time for network settle
            # Get Task allo IDs
                # ParamServer(SEGMENT_TASK.ids DRONE.ids)
            # Check Confliction resoltuion ???

# Monitoring Funct

    # Set mode to monitor
        # Broadcast mode change
            # SendBroadcast(DRONE.ID DRONE.mode)
        # Pass segment geometry to GNC
            # Get allocated segment ID
                # Get geometry
                    # ParamServer(SEGMENT_TASK.geometry)
                # Local pass to GNC
                    # Possibly done through ParamServer?




    # Monitoring behaviour loop
        # Broadcast drone state for GCS
        # SendBroadcast(DRONE, GCS)
        # Check swarm action state
            # Get Param
                # ParamServer(swarm_command)
            # if off return
            # else continue



        # Check if ROI reported by SA
            # If yes generate Task Item 
                # TOI_TASK.id
                # TOI_TASK.assign
                # TOI_TASK.score
                # TOI_TASK.geometry
                # TOI_TASK.confidence
                # TOI_TASK.type
                # TOI_TASK.completed
            # Broadcast task item
                # SendBroadcast(TOI_TASK)
        # If Tracking Drone Check for unassigned tasks
            # Get Tasks ParamServer (TOI_TASK.assign)
            # If yes, Allocation algo 2
                # Task assignment 2
                    # TaskAloAlgo()
                    # Broadcast score
                        # SendBroadcast(TOI_TASK.score)
                    # Wait time for network settle
                    # Check for highest score
                        # Get scores
                        # ParamServer (TOI_TASK.score)
                    # Broadcast highest score
                        # SendBroadcast(TOI_TASK.score)
                # If highest score == ParamServer(DRONE.ID)
                    # Switch Mode to Tracking Mode
                    # Update params
                        # ParamServer (DRONE.mode)   
        # Else continute with monitoring
                    # Determine behaviour with GNC >>>>>><<<<<<<
                        # Do Behaviour
                    # Monitor SA for target generation
                        # SA will produce TOIs/ROIs


    # Tracking behaviour loop
        # Broadcast drone state for GCS
        # SendBroadcast(DRONE, GCS)
        # Check swarm action state
        # Get Param
            # ParamServer(swarm_command)
        # if off return
        # else continue
        # Check Task state
            # ParamServer(TOI_TASK.completed)
        # If yes, switch to monitoring task
            # Update Number of drones avaialable
                # ParamServer(NUM_TRACK)
            # Update drone mode
                # ParamServer(DRONE.mode)
        # Else
            # Pass info to GNC (assuming GNC resp for VS decision)
                # Local pass to GNC (possibly through param server?)
            # Check for updated TOI info from SA
                # Update TASK_TOI with info from SA object 
                    # ParamServer()
                # Broadcast updated info if required/changes
                    # SendBroadcast(TOI_TASK)

     