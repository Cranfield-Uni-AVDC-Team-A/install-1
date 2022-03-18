; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude score.msg.html

(cl:defclass <score> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:fixnum
    :initform 0)
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass score (<score>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <score>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'score)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<score> is deprecated: use behaviour-msg:score instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <score>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:header-val is deprecated.  Use behaviour-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <score>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:drone_id-val is deprecated.  Use behaviour-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <score>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:task_id-val is deprecated.  Use behaviour-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <score>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:score-val is deprecated.  Use behaviour-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <score>) ostream)
  "Serializes a message object of type '<score>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <score>) istream)
  "Deserializes a message object of type '<score>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<score>)))
  "Returns string type for a message object of type '<score>"
  "behaviour/score")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'score)))
  "Returns string type for a message object of type 'score"
  "behaviour/score")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<score>)))
  "Returns md5sum for a message object of type '<score>"
  "f5e4a2789ac7ebf4497f97a026a84838")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'score)))
  "Returns md5sum for a message object of type 'score"
  "f5e4a2789ac7ebf4497f97a026a84838")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<score>)))
  "Returns full string definition for message of type '<score>"
  (cl:format cl:nil "Header header~%int8 drone_id~%int8 task_id~%float32 score~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'score)))
  "Returns full string definition for message of type 'score"
  (cl:format cl:nil "Header header~%int8 drone_id~%int8 task_id~%float32 score~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <score>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <score>))
  "Converts a ROS message object to a list"
  (cl:list 'score
    (cl:cons ':header (header msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':score (score msg))
))
