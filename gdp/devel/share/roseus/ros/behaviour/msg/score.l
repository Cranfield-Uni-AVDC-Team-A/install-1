;; Auto-generated. Do not edit!


(when (boundp 'behaviour::score)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'score (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::SCORE")
  (make-package "BEHAVIOUR::SCORE"))

(in-package "ROS")
;;//! \htmlinclude score.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::score
  :super ros::object
  :slots (_header _drone_id _task_id _score ))

(defmethod behaviour::score
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:task_id __task_id) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _task_id (round __task_id))
   (setq _score (float __score))
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
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _drone_id
    1
    ;; int8 _task_id
    1
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _drone_id
       (write-byte _drone_id s)
     ;; int8 _task_id
       (write-byte _task_id s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _drone_id
     (setq _drone_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _drone_id 127) (setq _drone_id (- _drone_id 256)))
   ;; int8 _task_id
     (setq _task_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _task_id 127) (setq _task_id (- _task_id 256)))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get behaviour::score :md5sum-) "f5e4a2789ac7ebf4497f97a026a84838")
(setf (get behaviour::score :datatype-) "behaviour/score")
(setf (get behaviour::score :definition-)
      "Header header
int8 drone_id
int8 task_id
float32 score

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



(provide :behaviour/score "f5e4a2789ac7ebf4497f97a026a84838")


