; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude targetlist.msg.html

(cl:defclass <targetlist> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (targets
    :reader targets
    :initarg :targets
    :type (cl:vector behaviour-msg:target)
   :initform (cl:make-array 0 :element-type 'behaviour-msg:target :initial-element (cl:make-instance 'behaviour-msg:target))))
)

(cl:defclass targetlist (<targetlist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <targetlist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'targetlist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<targetlist> is deprecated: use behaviour-msg:targetlist instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <targetlist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:header-val is deprecated.  Use behaviour-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <targetlist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:targets-val is deprecated.  Use behaviour-msg:targets instead.")
  (targets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <targetlist>) ostream)
  "Serializes a message object of type '<targetlist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <targetlist>) istream)
  "Deserializes a message object of type '<targetlist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'behaviour-msg:target))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<targetlist>)))
  "Returns string type for a message object of type '<targetlist>"
  "behaviour/targetlist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'targetlist)))
  "Returns string type for a message object of type 'targetlist"
  "behaviour/targetlist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<targetlist>)))
  "Returns md5sum for a message object of type '<targetlist>"
  "7397c01d017cf1d6405f3f3b22dc1d5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'targetlist)))
  "Returns md5sum for a message object of type 'targetlist"
  "7397c01d017cf1d6405f3f3b22dc1d5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<targetlist>)))
  "Returns full string definition for message of type '<targetlist>"
  (cl:format cl:nil "Header header~%target[] targets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/target~%Header header~%float64 id~%int8 detectorid~%int8 detectortype~%float64 messagetime~%float64 lat~%float64 lon~%float32 alt~%int8 clas~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'targetlist)))
  "Returns full string definition for message of type 'targetlist"
  (cl:format cl:nil "Header header~%target[] targets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/target~%Header header~%float64 id~%int8 detectorid~%int8 detectortype~%float64 messagetime~%float64 lat~%float64 lon~%float32 alt~%int8 clas~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <targetlist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <targetlist>))
  "Converts a ROS message object to a list"
  (cl:list 'targetlist
    (cl:cons ':header (header msg))
    (cl:cons ':targets (targets msg))
))
