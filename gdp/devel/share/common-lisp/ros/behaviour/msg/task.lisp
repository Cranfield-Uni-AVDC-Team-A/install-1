; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude task.msg.html

(cl:defclass <task> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:fixnum
    :initform 0)
   (task_geometry
    :reader task_geometry
    :initarg :task_geometry
    :type behaviour-msg:task_geometry
    :initform (cl:make-instance 'behaviour-msg:task_geometry))
   (allocated
    :reader allocated
    :initarg :allocated
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass task (<task>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <task>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'task)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<task> is deprecated: use behaviour-msg:task instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:header-val is deprecated.  Use behaviour-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:task_id-val is deprecated.  Use behaviour-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'task_geometry-val :lambda-list '(m))
(cl:defmethod task_geometry-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:task_geometry-val is deprecated.  Use behaviour-msg:task_geometry instead.")
  (task_geometry m))

(cl:ensure-generic-function 'allocated-val :lambda-list '(m))
(cl:defmethod allocated-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:allocated-val is deprecated.  Use behaviour-msg:allocated instead.")
  (allocated m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:type-val is deprecated.  Use behaviour-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <task>) ostream)
  "Serializes a message object of type '<task>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_geometry) ostream)
  (cl:let* ((signed (cl:slot-value msg 'allocated)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <task>) istream)
  "Deserializes a message object of type '<task>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_geometry) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'allocated) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<task>)))
  "Returns string type for a message object of type '<task>"
  "behaviour/task")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'task)))
  "Returns string type for a message object of type 'task"
  "behaviour/task")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<task>)))
  "Returns md5sum for a message object of type '<task>"
  "9d31710c0e937328d90b6fc9fdf8068e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'task)))
  "Returns md5sum for a message object of type 'task"
  "9d31710c0e937328d90b6fc9fdf8068e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<task>)))
  "Returns full string definition for message of type '<task>"
  (cl:format cl:nil "Header header~%int8 task_id~%task_geometry task_geometry~%int8 allocated~%int8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/task_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'task)))
  "Returns full string definition for message of type 'task"
  (cl:format cl:nil "Header header~%int8 task_id~%task_geometry task_geometry~%int8 allocated~%int8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/task_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <task>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_geometry))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <task>))
  "Converts a ROS message object to a list"
  (cl:list 'task
    (cl:cons ':header (header msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':task_geometry (task_geometry msg))
    (cl:cons ':allocated (allocated msg))
    (cl:cons ':type (type msg))
))
