; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude members.msg.html

(cl:defclass <members> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drone_states
    :reader drone_states
    :initarg :drone_states
    :type (cl:vector behaviour-msg:drone_state)
   :initform (cl:make-array 0 :element-type 'behaviour-msg:drone_state :initial-element (cl:make-instance 'behaviour-msg:drone_state))))
)

(cl:defclass members (<members>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <members>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'members)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<members> is deprecated: use behaviour-msg:members instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <members>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:header-val is deprecated.  Use behaviour-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_states-val :lambda-list '(m))
(cl:defmethod drone_states-val ((m <members>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:drone_states-val is deprecated.  Use behaviour-msg:drone_states instead.")
  (drone_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <members>) ostream)
  "Serializes a message object of type '<members>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drone_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'drone_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <members>) istream)
  "Deserializes a message object of type '<members>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drone_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drone_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'behaviour-msg:drone_state))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<members>)))
  "Returns string type for a message object of type '<members>"
  "behaviour/members")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'members)))
  "Returns string type for a message object of type 'members"
  "behaviour/members")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<members>)))
  "Returns md5sum for a message object of type '<members>"
  "d2196bf9ce28bd860ccf7a719e388ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'members)))
  "Returns md5sum for a message object of type 'members"
  "d2196bf9ce28bd860ccf7a719e388ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<members>)))
  "Returns full string definition for message of type '<members>"
  (cl:format cl:nil "Header header~%drone_state[] drone_states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/drone_state~%Header header~%int8 drone_id~%int8 mode~%int8 type~%float64 messagetime~%drone_geometry drone_geometry~%int8 battery~%int8 drone_soh~%score score~%task task~%================================================================================~%MSG: behaviour/drone_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%float32 yaw~%float32 roll~%float32 pitch~%================================================================================~%MSG: behaviour/score~%Header header~%int8 drone_id~%int8 task_id~%float32 score~%~%================================================================================~%MSG: behaviour/task~%Header header~%int8 task_id~%task_geometry task_geometry~%int8 allocated~%int8 type~%~%================================================================================~%MSG: behaviour/task_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'members)))
  "Returns full string definition for message of type 'members"
  (cl:format cl:nil "Header header~%drone_state[] drone_states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: behaviour/drone_state~%Header header~%int8 drone_id~%int8 mode~%int8 type~%float64 messagetime~%drone_geometry drone_geometry~%int8 battery~%int8 drone_soh~%score score~%task task~%================================================================================~%MSG: behaviour/drone_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%float32 yaw~%float32 roll~%float32 pitch~%================================================================================~%MSG: behaviour/score~%Header header~%int8 drone_id~%int8 task_id~%float32 score~%~%================================================================================~%MSG: behaviour/task~%Header header~%int8 task_id~%task_geometry task_geometry~%int8 allocated~%int8 type~%~%================================================================================~%MSG: behaviour/task_geometry~%Header header~%float64 lat~%float64 lon~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <members>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drone_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <members>))
  "Converts a ROS message object to a list"
  (cl:list 'members
    (cl:cons ':header (header msg))
    (cl:cons ':drone_states (drone_states msg))
))
