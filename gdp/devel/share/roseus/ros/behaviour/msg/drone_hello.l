;; Auto-generated. Do not edit!


(when (boundp 'behaviour::drone_hello)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'drone_hello (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::DRONE_HELLO")
  (make-package "BEHAVIOUR::DRONE_HELLO"))

(in-package "ROS")
;;//! \htmlinclude drone_hello.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::drone_hello
  :super ros::object
  :slots (_header _drone_id _mode _type ))

(defmethod behaviour::drone_hello
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:mode __mode) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _mode (round __mode))
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _drone_id
    1
    ;; int8 _mode
    1
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _drone_id
       (write-byte _drone_id s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _drone_id
     (setq _drone_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _drone_id 127) (setq _drone_id (- _drone_id 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(setf (get behaviour::drone_hello :md5sum-) "806724bc17f1cf32390948a6a8836584")
(setf (get behaviour::drone_hello :datatype-) "behaviour/drone_hello")
(setf (get behaviour::drone_hello :definition-)
      "Header header
int8 drone_id
int8 mode
int8 type

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

")



(provide :behaviour/drone_hello "806724bc17f1cf32390948a6a8836584")


