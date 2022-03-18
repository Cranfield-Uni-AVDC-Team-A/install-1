;; Auto-generated. Do not edit!


(when (boundp 'behaviour::members)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'members (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::MEMBERS")
  (make-package "BEHAVIOUR::MEMBERS"))

(in-package "ROS")
;;//! \htmlinclude members.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::members
  :super ros::object
  :slots (_header _drone_states ))

(defmethod behaviour::members
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_states __drone_states) (let (r) (dotimes (i 0) (push (instance behaviour::drone_state :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_states __drone_states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drone_states
   (&rest __drone_states)
   (if (keywordp (car __drone_states))
       (send* _drone_states __drone_states)
     (progn
       (if __drone_states (setq _drone_states (car __drone_states)))
       _drone_states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; behaviour/drone_state[] _drone_states
    (apply #'+ (send-all _drone_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; behaviour/drone_state[] _drone_states
     (write-long (length _drone_states) s)
     (dolist (elem _drone_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; behaviour/drone_state[] _drone_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drone_states (let (r) (dotimes (i n) (push (instance behaviour::drone_state :init) r)) r))
     (dolist (elem- _drone_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get behaviour::members :md5sum-) "d2196bf9ce28bd860ccf7a719e388ff5")
(setf (get behaviour::members :datatype-) "behaviour/members")
(setf (get behaviour::members :definition-)
      "Header header
drone_state[] drone_states
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: behaviour/drone_state
Header header
int8 drone_id
int8 mode
int8 type
float64 messagetime
drone_geometry drone_geometry
int8 battery
int8 drone_soh
score score
task task
================================================================================
MSG: behaviour/drone_geometry
Header header
float64 lat
float64 lon
float32 alt
float32 yaw
float32 roll
float32 pitch
================================================================================
MSG: behaviour/score
Header header
int8 drone_id
int8 task_id
float32 score

================================================================================
MSG: behaviour/task
Header header
int8 task_id
task_geometry task_geometry
int8 allocated
int8 type

================================================================================
MSG: behaviour/task_geometry
Header header
float64 lat
float64 lon
float32 alt

")



(provide :behaviour/members "d2196bf9ce28bd860ccf7a719e388ff5")


