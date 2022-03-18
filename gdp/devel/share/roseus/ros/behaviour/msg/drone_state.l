;; Auto-generated. Do not edit!


(when (boundp 'behaviour::drone_state)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'drone_state (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::DRONE_STATE")
  (make-package "BEHAVIOUR::DRONE_STATE"))

(in-package "ROS")
;;//! \htmlinclude drone_state.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::drone_state
  :super ros::object
  :slots (_header _drone_id _mode _type _messagetime _drone_geometry _battery _drone_soh _score _task ))

(defmethod behaviour::drone_state
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:mode __mode) 0)
    ((:type __type) 0)
    ((:messagetime __messagetime) 0.0)
    ((:drone_geometry __drone_geometry) (instance behaviour::drone_geometry :init))
    ((:battery __battery) 0)
    ((:drone_soh __drone_soh) 0)
    ((:score __score) (instance behaviour::score :init))
    ((:task __task) (instance behaviour::task :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _mode (round __mode))
   (setq _type (round __type))
   (setq _messagetime (float __messagetime))
   (setq _drone_geometry __drone_geometry)
   (setq _battery (round __battery))
   (setq _drone_soh (round __drone_soh))
   (setq _score __score)
   (setq _task __task)
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
  (:messagetime
   (&optional __messagetime)
   (if __messagetime (setq _messagetime __messagetime)) _messagetime)
  (:drone_geometry
   (&rest __drone_geometry)
   (if (keywordp (car __drone_geometry))
       (send* _drone_geometry __drone_geometry)
     (progn
       (if __drone_geometry (setq _drone_geometry (car __drone_geometry)))
       _drone_geometry)))
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:drone_soh
   (&optional __drone_soh)
   (if __drone_soh (setq _drone_soh __drone_soh)) _drone_soh)
  (:score
   (&rest __score)
   (if (keywordp (car __score))
       (send* _score __score)
     (progn
       (if __score (setq _score (car __score)))
       _score)))
  (:task
   (&rest __task)
   (if (keywordp (car __task))
       (send* _task __task)
     (progn
       (if __task (setq _task (car __task)))
       _task)))
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
    ;; float64 _messagetime
    8
    ;; behaviour/drone_geometry _drone_geometry
    (send _drone_geometry :serialization-length)
    ;; int8 _battery
    1
    ;; int8 _drone_soh
    1
    ;; behaviour/score _score
    (send _score :serialization-length)
    ;; behaviour/task _task
    (send _task :serialization-length)
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
     ;; float64 _messagetime
       (sys::poke _messagetime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; behaviour/drone_geometry _drone_geometry
       (send _drone_geometry :serialize s)
     ;; int8 _battery
       (write-byte _battery s)
     ;; int8 _drone_soh
       (write-byte _drone_soh s)
     ;; behaviour/score _score
       (send _score :serialize s)
     ;; behaviour/task _task
       (send _task :serialize s)
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
   ;; float64 _messagetime
     (setq _messagetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; behaviour/drone_geometry _drone_geometry
     (send _drone_geometry :deserialize buf ptr-) (incf ptr- (send _drone_geometry :serialization-length))
   ;; int8 _battery
     (setq _battery (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _battery 127) (setq _battery (- _battery 256)))
   ;; int8 _drone_soh
     (setq _drone_soh (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _drone_soh 127) (setq _drone_soh (- _drone_soh 256)))
   ;; behaviour/score _score
     (send _score :deserialize buf ptr-) (incf ptr- (send _score :serialization-length))
   ;; behaviour/task _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;;
   self)
  )

(setf (get behaviour::drone_state :md5sum-) "5309d0e3c8a877ad2b981cbca29cefc4")
(setf (get behaviour::drone_state :datatype-) "behaviour/drone_state")
(setf (get behaviour::drone_state :definition-)
      "Header header
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



(provide :behaviour/drone_state "5309d0e3c8a877ad2b981cbca29cefc4")


