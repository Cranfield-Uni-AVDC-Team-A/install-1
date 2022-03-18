
#!/usr/bin/env python3
from __future__ import print_function

import rospy
from behaviour.srv import *
from behaviour.srv import areareq



# Area Allocation

def area_allocation_client():
    rospy.wait_for_service('area_allocation')
    arearequest = rospy.ServiceProxy('area_allocation', areareq)
    resp = arearequest(1)
    return

if __name__ == '__main__':
    area_allocation_client()