; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude drone_hello.msg.html

(cl:defclass <drone_hello> (roslisp-msg-protocol:ros-message)
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
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass drone_hello (<drone_hello>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_hello>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_hello)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<drone_hello> is deprecated: use behaviour-msg:drone_hello instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <drone_hello>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:header-val is deprecated.  Use behaviour-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <drone_hello>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:drone_id-val is deprecated.  Use behaviour-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <drone_hello>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:mode-val is deprecated.  Use behaviour-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <drone_hello>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:type-val is deprecated.  Use behaviour-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_hello>) ostream)
  "Serializes a message object of type '<drone_hello>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_hello>) istream)
  "Deserializes a message object of type '<drone_hello>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_hello>)))
  "Returns string type for a message object of type '<drone_hello>"
  "behaviour/drone_hello")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_hello)))
  "Returns string type for a message object of type 'drone_hello"
  "behaviour/drone_hello")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_hello>)))
  "Returns md5sum for a message object of type '<drone_hello>"
  "806724bc17f1cf32390948a6a8836584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_hello)))
  "Returns md5sum for a message object of type 'drone_hello"
  "806724bc17f1cf32390948a6a8836584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_hello>)))
  "Returns full string definition for message of type '<drone_hello>"
  (cl:format cl:nil "Header header~%int8 drone_id~%int8 mode~%int8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_hello)))
  "Returns full string definition for message of type 'drone_hello"
  (cl:format cl:nil "Header header~%int8 drone_id~%int8 mode~%int8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_hello>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_hello>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_hello
    (cl:cons ':header (header msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':type (type msg))
))
