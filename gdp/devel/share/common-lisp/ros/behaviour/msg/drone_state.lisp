; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude drone_state.msg.html

(cl:defclass <drone_state> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (messagetime
    :reader messagetime
    :initarg :messagetime
    :type cl:float
    :initform 0.0)
   (drone_geometry
    :reader drone_geometry
    :initarg :drone_geometry
    :type behaviour-msg:drone_geometry
    :initform (cl:make-instance 'behaviour-msg:drone_geometry))
   (battery
    :reader battery
    :initarg :battery
    :type cl:fixnum
    :initform 0)
   (drone_soh
    :reader drone_soh
    :initarg :drone_soh
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type behaviour-msg:score
    :initform (cl:make-instance 'behaviour-msg:score))
   (task
    :reader task
    :initarg :task
    :type behaviour-msg:task
    :initform (cl:make-instance 'behaviour-msg:task)))
)

(cl:defclass drone_state (<drone_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<drone_state> is deprecated: use behaviour-msg:drone_state instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:header-val is deprecated.  Use behaviour-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:drone_id-val is deprecated.  Use behaviour-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:mode-val is deprecated.  Use behaviour-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:type-val is deprecated.  Use behaviour-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'messagetime-val :lambda-list '(m))
(cl:defmethod messagetime-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:messagetime-val is deprecated.  Use behaviour-msg:messagetime instead.")
  (messagetime m))

(cl:ensure-generic-function 'drone_geometry-val :lambda-list '(m))
(cl:defmethod drone_geometry-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:drone_geometry-val is deprecated.  Use behaviour-msg:drone_geometry instead.")
  (drone_geometry m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:battery-val is deprecated.  Use behaviour-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'drone_soh-val :lambda-list '(m))
(cl:defmethod drone_soh-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:drone_soh-val is deprecated.  Use behaviour-msg:drone_soh instead.")
  (drone_soh m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:score-val is deprecated.  Use behaviour-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <drone_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:task-val is deprecated.  Use behaviour-msg:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_state>) ostream)
  "Serializes a message object of type '<drone_state>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'messagetime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drone_geometry) ostream)
  (cl:let* ((signed (cl:slot-value msg 'battery)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drone_soh)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'score) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_state>) istream)
  "Deserializes a message object of type '<drone_state>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'messagetime) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drone_geometry) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_soh) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'score) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_state>)))
  "Returns string type for a message object of type '<drone_state>"
  "behaviour/drone_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_state)))
  "Returns string type for a message object of type 'drone_state"
  "behaviour/drone_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_state>)))
  "Returns md5sum for a message object of type '<drone_state>"
  "5309d0e3c8a877ad2b981cbca29cefc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_state)))
  "Returns md5sum for a message object of type 'drone_state"
  "5309d0e3c8a877ad2b981cbca29cefc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_state>)))
  "Returns full string definition for message of type '<drone_state>"
  (cl:format cl:nil "Header header~%int8 drone_id~%int8 mode~%int8 type~%float64 messagetime~%drone_geometry drone_geometry~%int8 battery~%int8 drone_soh~%score score~%task task~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/drone_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%float32 yaw~%float32 roll~%float32 pitch~%================================================================================~%MSG: behaviour/score~%Header header~%int8 drone_id~%int8 task_id~%float32 score~%~%================================================================================~%MSG: behaviour/task~%Header header~%int8 task_id~%task_geometry task_geometry~%int8 allocated~%int8 type~%~%================================================================================~%MSG: behaviour/task_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_state)))
  "Returns full string definition for message of type 'drone_state"
  (cl:format cl:nil "Header header~%int8 drone_id~%int8 mode~%int8 type~%float64 messagetime~%drone_geometry drone_geometry~%int8 battery~%int8 drone_soh~%score score~%task task~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/drone_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%float32 yaw~%float32 roll~%float32 pitch~%================================================================================~%MSG: behaviour/score~%Header header~%int8 drone_id~%int8 task_id~%float32 score~%~%================================================================================~%MSG: behaviour/task~%Header header~%int8 task_id~%task_geometry task_geometry~%int8 allocated~%int8 type~%~%================================================================================~%MSG: behaviour/task_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drone_geometry))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'score))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_state>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_state
    (cl:cons ':header (header msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':type (type msg))
    (cl:cons ':messagetime (messagetime msg))
    (cl:cons ':drone_geometry (drone_geometry msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':drone_soh (drone_soh msg))
    (cl:cons ':score (score msg))
    (cl:cons ':task (task msg))
))
