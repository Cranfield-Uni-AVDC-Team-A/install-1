;; Auto-generated. Do not edit!


(when (boundp 'behaviour::task)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'task (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::TASK")
  (make-package "BEHAVIOUR::TASK"))

(in-package "ROS")
;;//! \htmlinclude task.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::task
  :super ros::object
  :slots (_header _task_id _task_geometry _allocated _type ))

(defmethod behaviour::task
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) 0)
    ((:task_geometry __task_geometry) (instance behaviour::task_geometry :init))
    ((:allocated __allocated) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (round __task_id))
   (setq _task_geometry __task_geometry)
   (setq _allocated (round __allocated))
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_geometry
   (&rest __task_geometry)
   (if (keywordp (car __task_geometry))
       (send* _task_geometry __task_geometry)
     (progn
       (if __task_geometry (setq _task_geometry (car __task_geometry)))
       _task_geometry)))
  (:allocated
   (&optional __allocated)
   (if __allocated (setq _allocated __allocated)) _allocated)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _task_id
    1
    ;; behaviour/task_geometry _task_geometry
    (send _task_geometry :serialization-length)
    ;; int8 _allocated
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
     ;; int8 _task_id
       (write-byte _task_id s)
     ;; behaviour/task_geometry _task_geometry
       (send _task_geometry :serialize s)
     ;; int8 _allocated
       (write-byte _allocated s)
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _task_id
     (setq _task_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _task_id 127) (setq _task_id (- _task_id 256)))
   ;; behaviour/task_geometry _task_geometry
     (send _task_geometry :deserialize buf ptr-) (incf ptr- (send _task_geometry :serialization-length))
   ;; int8 _allocated
     (setq _allocated (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _allocated 127) (setq _allocated (- _allocated 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(setf (get behaviour::task :md5sum-) "9d31710c0e937328d90b6fc9fdf8068e")
(setf (get behaviour::task :datatype-) "behaviour/task")
(setf (get behaviour::task :definition-)
      "Header header
int8 task_id
task_geometry task_geometry
int8 allocated
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

================================================================================
MSG: behaviour/task_geometry
Header header
float64 lat
float64 lon
float32 alt

")



(provide :behaviour/task "9d31710c0e937328d90b6fc9fdf8068e")


