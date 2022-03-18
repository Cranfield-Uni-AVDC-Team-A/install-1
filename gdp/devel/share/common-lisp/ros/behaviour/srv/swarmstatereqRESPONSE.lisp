; Auto-generated. Do not edit!


(cl:in-package behaviour-srv)


;//! \htmlinclude swarmstatereqRESPONSE-request.msg.html

(cl:defclass <swarmstatereqRESPONSE-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:fixnum
    :initform 0))
)

(cl:defclass swarmstatereqRESPONSE-request (<swarmstatereqRESPONSE-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarmstatereqRESPONSE-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarmstatereqRESPONSE-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<swarmstatereqRESPONSE-request> is deprecated: use behaviour-srv:swarmstatereqRESPONSE-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <swarmstatereqRESPONSE-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:a-val is deprecated.  Use behaviour-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarmstatereqRESPONSE-request>) ostream)
  "Serializes a message object of type '<swarmstatereqRESPONSE-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarmstatereqRESPONSE-request>) istream)
  "Deserializes a message object of type '<swarmstatereqRESPONSE-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarmstatereqRESPONSE-request>)))
  "Returns string type for a service object of type '<swarmstatereqRESPONSE-request>"
  "behaviour/swarmstatereqRESPONSERequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstatereqRESPONSE-request)))
  "Returns string type for a service object of type 'swarmstatereqRESPONSE-request"
  "behaviour/swarmstatereqRESPONSERequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarmstatereqRESPONSE-request>)))
  "Returns md5sum for a message object of type '<swarmstatereqRESPONSE-request>"
  "33a7566a467e8cd83585fe87304be866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarmstatereqRESPONSE-request)))
  "Returns md5sum for a message object of type 'swarmstatereqRESPONSE-request"
  "33a7566a467e8cd83585fe87304be866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarmstatereqRESPONSE-request>)))
  "Returns full string definition for message of type '<swarmstatereqRESPONSE-request>"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarmstatereqRESPONSE-request)))
  "Returns full string definition for message of type 'swarmstatereqRESPONSE-request"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarmstatereqRESPONSE-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarmstatereqRESPONSE-request>))
  "Converts a ROS message object to a list"
  (cl:list 'swarmstatereqRESPONSE-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude swarmstatereqRESPONSE-response.msg.html

(cl:defclass <swarmstatereqRESPONSE-response> (roslisp-msg-protocol:ros-message)
  ((swarmstate
    :reader swarmstate
    :initarg :swarmstate
    :type behaviour-msg:swarmstate
    :initform (cl:make-instance 'behaviour-msg:swarmstate)))
)

(cl:defclass swarmstatereqRESPONSE-response (<swarmstatereqRESPONSE-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarmstatereqRESPONSE-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarmstatereqRESPONSE-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<swarmstatereqRESPONSE-response> is deprecated: use behaviour-srv:swarmstatereqRESPONSE-response instead.")))

(cl:ensure-generic-function 'swarmstate-val :lambda-list '(m))
(cl:defmethod swarmstate-val ((m <swarmstatereqRESPONSE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:swarmstate-val is deprecated.  Use behaviour-srv:swarmstate instead.")
  (swarmstate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarmstatereqRESPONSE-response>) ostream)
  "Serializes a message object of type '<swarmstatereqRESPONSE-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swarmstate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarmstatereqRESPONSE-response>) istream)
  "Deserializes a message object of type '<swarmstatereqRESPONSE-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swarmstate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarmstatereqRESPONSE-response>)))
  "Returns string type for a service object of type '<swarmstatereqRESPONSE-response>"
  "behaviour/swarmstatereqRESPONSEResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstatereqRESPONSE-response)))
  "Returns string type for a service object of type 'swarmstatereqRESPONSE-response"
  "behaviour/swarmstatereqRESPONSEResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarmstatereqRESPONSE-response>)))
  "Returns md5sum for a message object of type '<swarmstatereqRESPONSE-response>"
  "33a7566a467e8cd83585fe87304be866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarmstatereqRESPONSE-response)))
  "Returns md5sum for a message object of type 'swarmstatereqRESPONSE-response"
  "33a7566a467e8cd83585fe87304be866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarmstatereqRESPONSE-response>)))
  "Returns full string definition for message of type '<swarmstatereqRESPONSE-response>"
  (cl:format cl:nil "swarmstate swarmstate~%~%================================================================================~%MSG: behaviour/swarmstate~%int8 num_mon~%int8 num_track~%int8 available_track~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarmstatereqRESPONSE-response)))
  "Returns full string definition for message of type 'swarmstatereqRESPONSE-response"
  (cl:format cl:nil "swarmstate swarmstate~%~%================================================================================~%MSG: behaviour/swarmstate~%int8 num_mon~%int8 num_track~%int8 available_track~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarmstatereqRESPONSE-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swarmstate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarmstatereqRESPONSE-response>))
  "Converts a ROS message object to a list"
  (cl:list 'swarmstatereqRESPONSE-response
    (cl:cons ':swarmstate (swarmstate msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'swarmstatereqRESPONSE)))
  'swarmstatereqRESPONSE-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'swarmstatereqRESPONSE)))
  'swarmstatereqRESPONSE-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstatereqRESPONSE)))
  "Returns string type for a service object of type '<swarmstatereqRESPONSE>"
  "behaviour/swarmstatereqRESPONSE")