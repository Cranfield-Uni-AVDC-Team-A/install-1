;; Auto-generated. Do not edit!


(when (boundp 'behaviour::target)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'target (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::TARGET")
  (make-package "BEHAVIOUR::TARGET"))

(in-package "ROS")
;;//! \htmlinclude target.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass behaviour::target
  :super ros::object
  :slots (_header _id _detectorid _detectortype _messagetime _lat _lon _alt _clas _confidence ))

(defmethod behaviour::target
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0.0)
    ((:detectorid __detectorid) 0)
    ((:detectortype __detectortype) 0)
    ((:messagetime __messagetime) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:clas __clas) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (float __id))
   (setq _detectorid (round __detectorid))
   (setq _detectortype (round __detectortype))
   (setq _messagetime (float __messagetime))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _clas (round __clas))
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:detectorid
   (&optional __detectorid)
   (if __detectorid (setq _detectorid __detectorid)) _detectorid)
  (:detectortype
   (&optional __detectortype)
   (if __detectortype (setq _detectortype __detectortype)) _detectortype)
  (:messagetime
   (&optional __messagetime)
   (if __messagetime (setq _messagetime __messagetime)) _messagetime)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:clas
   (&optional __clas)
   (if __clas (setq _clas __clas)) _clas)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _id
    8
    ;; int8 _detectorid
    1
    ;; int8 _detectortype
    1
    ;; float64 _messagetime
    8
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float32 _alt
    4
    ;; int8 _clas
    1
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _id
       (sys::poke _id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _detectorid
       (write-byte _detectorid s)
     ;; int8 _detectortype
       (write-byte _detectortype s)
     ;; float64 _messagetime
       (sys::poke _messagetime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _clas
       (write-byte _clas s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _id
     (setq _id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _detectorid
     (setq _detectorid (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _detectorid 127) (setq _detectorid (- _detectorid 256)))
   ;; int8 _detectortype
     (setq _detectortype (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _detectortype 127) (setq _detectortype (- _detectortype 256)))
   ;; float64 _messagetime
     (setq _messagetime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _alt
     (setq _alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _clas
     (setq _clas (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _clas 127) (setq _clas (- _clas 256)))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get behaviour::target :md5sum-) "4a14509c50e32bd3f512cb2569673bbc")
(setf (get behaviour::target :datatype-) "behaviour/target")
(setf (get behaviour::target :definition-)
      "Header header
float64 id
int8 detectorid
int8 detectortype
float64 messagetime
float64 lat
float64 lon
float32 alt
int8 clas
float32 confidence
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



(provide :behaviour/target "4a14509c50e32bd3f512cb2569673bbc")


