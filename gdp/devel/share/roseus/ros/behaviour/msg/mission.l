;; Auto-generated. Do not edit!


(when (boundp 'behaviour::mission)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'mission (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::MISSION")
  (make-package "BEHAVIOUR::MISSION"))

(in-package "ROS")
;;//! \htmlinclude mission.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::mission
  :super ros::object
  :slots (_header _points _lat1 _lat2 _lat3 _lat4 _lat5 _lat6 _lat7 _lat8 _lon1 _lon2 _lon3 _lon4 _lon5 _lon6 _lon7 _lon8 _alt1 _alt2 _alt3 _alt4 _alt5 _alt6 _alt7 _alt8 ))

(defmethod behaviour::mission
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) 0)
    ((:lat1 __lat1) 0.0)
    ((:lat2 __lat2) 0.0)
    ((:lat3 __lat3) 0.0)
    ((:lat4 __lat4) 0.0)
    ((:lat5 __lat5) 0.0)
    ((:lat6 __lat6) 0.0)
    ((:lat7 __lat7) 0.0)
    ((:lat8 __lat8) 0.0)
    ((:lon1 __lon1) 0.0)
    ((:lon2 __lon2) 0.0)
    ((:lon3 __lon3) 0.0)
    ((:lon4 __lon4) 0.0)
    ((:lon5 __lon5) 0.0)
    ((:lon6 __lon6) 0.0)
    ((:lon7 __lon7) 0.0)
    ((:lon8 __lon8) 0.0)
    ((:alt1 __alt1) 0.0)
    ((:alt2 __alt2) 0.0)
    ((:alt3 __alt3) 0.0)
    ((:alt4 __alt4) 0.0)
    ((:alt5 __alt5) 0.0)
    ((:alt6 __alt6) 0.0)
    ((:alt7 __alt7) 0.0)
    ((:alt8 __alt8) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _points (round __points))
   (setq _lat1 (float __lat1))
   (setq _lat2 (float __lat2))
   (setq _lat3 (float __lat3))
   (setq _lat4 (float __lat4))
   (setq _lat5 (float __lat5))
   (setq _lat6 (float __lat6))
   (setq _lat7 (float __lat7))
   (setq _lat8 (float __lat8))
   (setq _lon1 (float __lon1))
   (setq _lon2 (float __lon2))
   (setq _lon3 (float __lon3))
   (setq _lon4 (float __lon4))
   (setq _lon5 (float __lon5))
   (setq _lon6 (float __lon6))
   (setq _lon7 (float __lon7))
   (setq _lon8 (float __lon8))
   (setq _alt1 (float __alt1))
   (setq _alt2 (float __alt2))
   (setq _alt3 (float __alt3))
   (setq _alt4 (float __alt4))
   (setq _alt5 (float __alt5))
   (setq _alt6 (float __alt6))
   (setq _alt7 (float __alt7))
   (setq _alt8 (float __alt8))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&optional __points)
   (if __points (setq _points __points)) _points)
  (:lat1
   (&optional __lat1)
   (if __lat1 (setq _lat1 __lat1)) _lat1)
  (:lat2
   (&optional __lat2)
   (if __lat2 (setq _lat2 __lat2)) _lat2)
  (:lat3
   (&optional __lat3)
   (if __lat3 (setq _lat3 __lat3)) _lat3)
  (:lat4
   (&optional __lat4)
   (if __lat4 (setq _lat4 __lat4)) _lat4)
  (:lat5
   (&optional __lat5)
   (if __lat5 (setq _lat5 __lat5)) _lat5)
  (:lat6
   (&optional __lat6)
   (if __lat6 (setq _lat6 __lat6)) _lat6)
  (:lat7
   (&optional __lat7)
   (if __lat7 (setq _lat7 __lat7)) _lat7)
  (:lat8
   (&optional __lat8)
   (if __lat8 (setq _lat8 __lat8)) _lat8)
  (:lon1
   (&optional __lon1)
   (if __lon1 (setq _lon1 __lon1)) _lon1)
  (:lon2
   (&optional __lon2)
   (if __lon2 (setq _lon2 __lon2)) _lon2)
  (:lon3
   (&optional __lon3)
   (if __lon3 (setq _lon3 __lon3)) _lon3)
  (:lon4
   (&optional __lon4)
   (if __lon4 (setq _lon4 __lon4)) _lon4)
  (:lon5
   (&optional __lon5)
   (if __lon5 (setq _lon5 __lon5)) _lon5)
  (:lon6
   (&optional __lon6)
   (if __lon6 (setq _lon6 __lon6)) _lon6)
  (:lon7
   (&optional __lon7)
   (if __lon7 (setq _lon7 __lon7)) _lon7)
  (:lon8
   (&optional __lon8)
   (if __lon8 (setq _lon8 __lon8)) _lon8)
  (:alt1
   (&optional __alt1)
   (if __alt1 (setq _alt1 __alt1)) _alt1)
  (:alt2
   (&optional __alt2)
   (if __alt2 (setq _alt2 __alt2)) _alt2)
  (:alt3
   (&optional __alt3)
   (if __alt3 (setq _alt3 __alt3)) _alt3)
  (:alt4
   (&optional __alt4)
   (if __alt4 (setq _alt4 __alt4)) _alt4)
  (:alt5
   (&optional __alt5)
   (if __alt5 (setq _alt5 __alt5)) _alt5)
  (:alt6
   (&optional __alt6)
   (if __alt6 (setq _alt6 __alt6)) _alt6)
  (:alt7
   (&optional __alt7)
   (if __alt7 (setq _alt7 __alt7)) _alt7)
  (:alt8
   (&optional __alt8)
   (if __alt8 (setq _alt8 __alt8)) _alt8)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _points
    1
    ;; float64 _lat1
    8
    ;; float64 _lat2
    8
    ;; float64 _lat3
    8
    ;; float64 _lat4
    8
    ;; float64 _lat5
    8
    ;; float64 _lat6
    8
    ;; float64 _lat7
    8
    ;; float64 _lat8
    8
    ;; float64 _lon1
    8
    ;; float64 _lon2
    8
    ;; float64 _lon3
    8
    ;; float64 _lon4
    8
    ;; float64 _lon5
    8
    ;; float64 _lon6
    8
    ;; float64 _lon7
    8
    ;; float64 _lon8
    8
    ;; float32 _alt1
    4
    ;; float32 _alt2
    4
    ;; float32 _alt3
    4
    ;; float32 _alt4
    4
    ;; float32 _alt5
    4
    ;; float32 _alt6
    4
    ;; float32 _alt7
    4
    ;; float32 _alt8
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _points
       (write-byte _points s)
     ;; float64 _lat1
       (sys::poke _lat1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat2
       (sys::poke _lat2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat3
       (sys::poke _lat3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat4
       (sys::poke _lat4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat5
       (sys::poke _lat5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat6
       (sys::poke _lat6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat7
       (sys::poke _lat7 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat8
       (sys::poke _lat8 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon1
       (sys::poke _lon1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon2
       (sys::poke _lon2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon3
       (sys::poke _lon3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon4
       (sys::poke _lon4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon5
       (sys::poke _lon5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon6
       (sys::poke _lon6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon7
       (sys::poke _lon7 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon8
       (sys::poke _lon8 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _alt1
       (sys::poke _alt1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt2
       (sys::poke _alt2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt3
       (sys::poke _alt3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt4
       (sys::poke _alt4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt5
       (sys::poke _alt5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt6
       (sys::poke _alt6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt7
       (sys::poke _alt7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt8
       (sys::poke _alt8 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _points
     (setq _points (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _points 127) (setq _points (- _points 256)))
   ;; float64 _lat1
     (setq _lat1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat2
     (setq _lat2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat3
     (setq _lat3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat4
     (setq _lat4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat5
     (setq _lat5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat6
     (setq _lat6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat7
     (setq _lat7 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat8
     (setq _lat8 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon1
     (setq _lon1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon2
     (setq _lon2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon3
     (setq _lon3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon4
     (setq _lon4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon5
     (setq _lon5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon6
     (setq _lon6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon7
     (setq _lon7 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon8
     (setq _lon8 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _alt1
     (setq _alt1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt2
     (setq _alt2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt3
     (setq _alt3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt4
     (setq _alt4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt5
     (setq _alt5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt6
     (setq _alt6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt7
     (setq _alt7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt8
     (setq _alt8 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get behaviour::mission :md5sum-) "f50631df6e5a5b429641093d499b4615")
(setf (get behaviour::mission :datatype-) "behaviour/mission")
(setf (get behaviour::mission :definition-)
      "Header header
int8 points
float64 lat1
float64 lat2
float64 lat3
float64 lat4
float64 lat5
float64 lat6
float64 lat7
float64 lat8
float64 lon1
float64 lon2
float64 lon3
float64 lon4
float64 lon5
float64 lon6
float64 lon7
float64 lon8
float32 alt1
float32 alt2
float32 alt3
float32 alt4
float32 alt5
float32 alt6
float32 alt7
float32 alt8

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



(provide :behaviour/mission "f50631df6e5a5b429641093d499b4615")


