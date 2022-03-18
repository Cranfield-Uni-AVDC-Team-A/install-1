; Auto-generated. Do not edit!


(cl:in-package behaviour-srv)


;//! \htmlinclude swarmstatereq-request.msg.html

(cl:defclass <swarmstatereq-request> (roslisp-msg-protocol:ros-message)
  ((pass
    :reader pass
    :initarg :pass
    :type cl:fixnum
    :initform 0))
)

(cl:defclass swarmstatereq-request (<swarmstatereq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarmstatereq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarmstatereq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<swarmstatereq-request> is deprecated: use behaviour-srv:swarmstatereq-request instead.")))

(cl:ensure-generic-function 'pass-val :lambda-list '(m))
(cl:defmethod pass-val ((m <swarmstatereq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:pass-val is deprecated.  Use behaviour-srv:pass instead.")
  (pass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarmstatereq-request>) ostream)
  "Serializes a message object of type '<swarmstatereq-request>"
  (cl:let* ((signed (cl:slot-value msg 'pass)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarmstatereq-request>) istream)
  "Deserializes a message object of type '<swarmstatereq-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pass) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarmstatereq-request>)))
  "Returns string type for a service object of type '<swarmstatereq-request>"
  "behaviour/swarmstatereqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstatereq-request)))
  "Returns string type for a service object of type 'swarmstatereq-request"
  "behaviour/swarmstatereqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarmstatereq-request>)))
  "Returns md5sum for a message object of type '<swarmstatereq-request>"
  "dcdc0995a6c9d0a85436f9cd484b8d9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarmstatereq-request)))
  "Returns md5sum for a message object of type 'swarmstatereq-request"
  "dcdc0995a6c9d0a85436f9cd484b8d9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarmstatereq-request>)))
  "Returns full string definition for message of type '<swarmstatereq-request>"
  (cl:format cl:nil "int8 pass~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarmstatereq-request)))
  "Returns full string definition for message of type 'swarmstatereq-request"
  (cl:format cl:nil "int8 pass~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarmstatereq-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarmstatereq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'swarmstatereq-request
    (cl:cons ':pass (pass msg))
))
;//! \htmlinclude swarmstatereq-response.msg.html

(cl:defclass <swarmstatereq-response> (roslisp-msg-protocol:ros-message)
  ((swarmstate
    :reader swarmstate
    :initarg :swarmstate
    :type behaviour-msg:swarmstate
    :initform (cl:make-instance 'behaviour-msg:swarmstate)))
)

(cl:defclass swarmstatereq-response (<swarmstatereq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarmstatereq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarmstatereq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<swarmstatereq-response> is deprecated: use behaviour-srv:swarmstatereq-response instead.")))

(cl:ensure-generic-function 'swarmstate-val :lambda-list '(m))
(cl:defmethod swarmstate-val ((m <swarmstatereq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:swarmstate-val is deprecated.  Use behaviour-srv:swarmstate instead.")
  (swarmstate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarmstatereq-response>) ostream)
  "Serializes a message object of type '<swarmstatereq-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmstate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarmstatereq-response>) istream)
  "Deserializes a message object of type '<swarmstatereq-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmstate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarmstatereq-response>)))
  "Returns string type for a service object of type '<swarmstatereq-response>"
  "behaviour/swarmstatereqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstatereq-response)))
  "Returns string type for a service object of type 'swarmstatereq-response"
  "behaviour/swarmstatereqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarmstatereq-response>)))
  "Returns md5sum for a message object of type '<swarmstatereq-response>"
  "dcdc0995a6c9d0a85436f9cd484b8d9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarmstatereq-response)))
  "Returns md5sum for a message object of type 'swarmstatereq-response"
  "dcdc0995a6c9d0a85436f9cd484b8d9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarmstatereq-response>)))
  "Returns full string definition for message of type '<swarmstatereq-response>"
  (cl:format cl:nil "swarmstate swarmstate~%~%================================================================================~%MSG: behaviour/swarmstate~%int8 num_mon~%int8 num_track~%int8 available_track~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarmstatereq-response)))
  "Returns full string definition for message of type 'swarmstatereq-response"
  (cl:format cl:nil "swarmstate swarmstate~%~%================================================================================~%MSG: behaviour/swarmstate~%int8 num_mon~%int8 num_track~%int8 available_track~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarmstatereq-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmstate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarmstatereq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'swarmstatereq-response
    (cl:cons ':swarmstate (swarmstate msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'swarmstatereq)))
  'swarmstatereq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'swarmstatereq)))
  'swarmstatereq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstatereq)))
  "Returns string type for a service object of type '<swarmstatereq>"
  "behaviour/swarmstatereq")