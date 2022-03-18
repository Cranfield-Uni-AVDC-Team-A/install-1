;; Auto-generated. Do not edit!


(when (boundp 'behaviour::area_geometry)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'area_geometry (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::AREA_GEOMETRY")
  (make-package "BEHAVIOUR::AREA_GEOMETRY"))

(in-package "ROS")
;;//! \htmlinclude area_geometry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::area_geometry
  :super ros::object
  :slots (_header _points _lat1 _lat2 _lat3 _lat4 _lon1 _lon2 _lon3 _lon4 _alt1 _alt2 _alt3 _alt4 ))

(defmethod behaviour::area_geometry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) 0)
    ((:lat1 __lat1) 0.0)
    ((:lat2 __lat2) 0.0)
    ((:lat3 __lat3) 0.0)
    ((:lat4 __lat4) 0.0)
    ((:lon1 __lon1) 0.0)
    ((:lon2 __lon2) 0.0)
    ((:lon3 __lon3) 0.0)
    ((:lon4 __lon4) 0.0)
    ((:alt1 __alt1) 0.0)
    ((:alt2 __alt2) 0.0)
    ((:alt3 __alt3) 0.0)
    ((:alt4 __alt4) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _points (round __points))
   (setq _lat1 (float __lat1))
   (setq _lat2 (float __lat2))
   (setq _lat3 (float __lat3))
   (setq _lat4 (float __lat4))
   (setq _lon1 (float __lon1))
   (setq _lon2 (float __lon2))
   (setq _lon3 (float __lon3))
   (setq _lon4 (float __lon4))
   (setq _alt1 (float __alt1))
   (setq _alt2 (float __alt2))
   (setq _alt3 (float __alt3))
   (setq _alt4 (float __alt4))
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
    ;; float64 _lon1
    8
    ;; float64 _lon2
    8
    ;; float64 _lon3
    8
    ;; float64 _lon4
    8
    ;; float32 _alt1
    4
    ;; float32 _alt2
    4
    ;; float32 _alt3
    4
    ;; float32 _alt4
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
     ;; float64 _lon1
       (sys::poke _lon1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon2
       (sys::poke _lon2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon3
       (sys::poke _lon3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon4
       (sys::poke _lon4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _alt1
       (sys::poke _alt1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt2
       (sys::poke _alt2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt3
       (sys::poke _alt3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt4
       (sys::poke _alt4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float64 _lon1
     (setq _lon1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon2
     (setq _lon2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon3
     (setq _lon3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon4
     (setq _lon4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _alt1
     (setq _alt1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt2
     (setq _alt2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt3
     (setq _alt3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt4
     (setq _alt4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get behaviour::area_geometry :md5sum-) "da2d0d4b375b18348bd16d548b3bb2d9")
(setf (get behaviour::area_geometry :datatype-) "behaviour/area_geometry")
(setf (get behaviour::area_geometry :definition-)
      "Header header
int8 points
float64 lat1
float64 lat2
float64 lat3
float64 lat4
float64 lon1
float64 lon2
float64 lon3
float64 lon4
float32 alt1
float32 alt2
float32 alt3
float32 alt4

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



(provide :behaviour/area_geometry "da2d0d4b375b18348bd16d548b3bb2d9")


