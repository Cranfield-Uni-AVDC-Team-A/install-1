
#!/usr/bin/env python3


import rospy
from behaviour.msg import members
from behaviour.msg import drone_hello

dct = {0:1, 1:2, 2:3, 3:4, 4:5, 5:6, 6:7}
rospy.init_node('MemberUpdater', anonymous=True) 
Drones = []

def callback(data):

    #################################
    # This callback is a mess due to the debugging process
    # However, it currently works so I'm moving on
    # I'll come back and fix it to look nicer later if there is enough time
    #################################

    #rospy.loginfo("Entered Callback")
    #rospy.loginfo(data.drone_id)
    #rospy.loginfo(len(memberlist))

    if not memberlist:
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if  len(memberlist) == 1:
        if data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if  len(memberlist) == 2:
        if data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if len(memberlist) == 3:
        if data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if len(memberlist) == 4:
        if data.drone_id == memberlist[3]:
            return
        elif data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if len(memberlist) == 5:
        if data.drone_id == memberlist[4]:
            return
        elif data.drone_id == memberlist[3]:
            return
        elif data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if len(memberlist) == 6:
        if data.drone_id == memberlist[5]:
            return
        elif data.drone_id == memberlist[4]:
            return
        elif data.drone_id == memberlist[3]:
            return
        elif data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return
    
    if len(memberlist) == 7:
        if data.drone_id == memberlist[6]:
            return
        elif data.drone_id == memberlist[5]:
            return
        elif data.drone_id == memberlist[4]:
            return
        elif data.drone_id == memberlist[3]:
            return
        elif data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return
    
    if len(memberlist) == 8:
        if  data.drone_id == memberlist[7]:
            return
        elif data.drone_id == memberlist[6]:
            return
        elif data.drone_id == memberlist[5]:
            return
        elif data.drone_id == memberlist[4]:
            return
        elif data.drone_id == memberlist[3]:
            return
        elif data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return

    if len(memberlist) == 9:
        if data.drone_id == memberlist[8]:
            return
        elif  data.drone_id == memberlist[7]:
            return
        elif data.drone_id == memberlist[6]:
            return
        elif data.drone_id == memberlist[5]:
            return
        elif data.drone_id == memberlist[4]:
            return
        elif data.drone_id == memberlist[3]:
            return
        elif data.drone_id == memberlist[2]:
            return
        elif data.drone_id == memberlist[1]:
            return
        elif data.drone_id == memberlist[0]:
            return
        hb_msg = drone_hello()
        hb_msg.drone_id = data.drone_id
        hb_msg.type = data.type
        hb_msg.mode = data.mode
        memberlist.append(hb_msg.drone_id)
        #rospy.loginfo(memberlist)
        #rospy.loginfo(hb_msg.drone_id)
        Drones.append(hb_msg)
        return


##########################
# Callback doesn't work for wait for message.
# Requires a timeout function to be manually implemented
# Can also investigate the use of the services
# 11/03/2022 This has now been fixed.
##########################

rospy.Subscriber("Heartbeats", drone_hello, callback)

while(1):
    counter = 0 
    memberlist=[]
    while (1):
                counter = counter + 1
                try:
                    rospy.wait_for_message("Heartbeats", drone_hello, 2)
                    if counter >= 8:
                        break
                except rospy.ROSException:
                    break
                # Take the drones list and publish
                # Package the list for ROS
    members_msg = members()
    n = 0
    #rospy.loginfo(len(Drones))
    while n < len(Drones): 
        #rospy.loginfo(n)
        #rospy.loginfo(Drones[n])
        if n<8:
            #rospy.loginfo("Entered Loop2")
            if n == 0:
                members_msg.a = Drones[n]
                #rospy.loginfo(Drones[n])
                #rospy.loginfo(members_msg.a.drone_id)
            elif n ==1:
                members_msg.b = Drones[n]
            elif n ==2:
                members_msg.c = Drones[n]
            elif n==3:
                members_msg.d = Drones[n]
            elif n==4:
                members_msg.e = Drones[n]
            elif n==5:
                members_msg.f = Drones[n]
            elif n==6:
                members_msg.g = Drones[n]
            elif n==7:
                members_msg.h = Drones[n]
            else:
                pass
            n = n+1
    #rospy.loginfo("Exited Loop2")
    pub = rospy.Publisher('Members', members, queue_size=1, latch = True)
    #while pub.get_num_connections() < 1:
        #waiting for publisher connection
        #pass
    pub.publish(members_msg)
    #rospy.loginfo("Main Loop End")
    Drones = []
    memberlist=[]
    

