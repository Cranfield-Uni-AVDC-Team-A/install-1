; Auto-generated. Do not edit!


(cl:in-package behaviour-srv)


;//! \htmlinclude cleanreq-request.msg.html

(cl:defclass <cleanreq-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:fixnum
    :initform 0))
)

(cl:defclass cleanreq-request (<cleanreq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cleanreq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cleanreq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<cleanreq-request> is deprecated: use behaviour-srv:cleanreq-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <cleanreq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:a-val is deprecated.  Use behaviour-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cleanreq-request>) ostream)
  "Serializes a message object of type '<cleanreq-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cleanreq-request>) istream)
  "Deserializes a message object of type '<cleanreq-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cleanreq-request>)))
  "Returns string type for a service object of type '<cleanreq-request>"
  "behaviour/cleanreqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cleanreq-request)))
  "Returns string type for a service object of type 'cleanreq-request"
  "behaviour/cleanreqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cleanreq-request>)))
  "Returns md5sum for a message object of type '<cleanreq-request>"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cleanreq-request)))
  "Returns md5sum for a message object of type 'cleanreq-request"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cleanreq-request>)))
  "Returns full string definition for message of type '<cleanreq-request>"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cleanreq-request)))
  "Returns full string definition for message of type 'cleanreq-request"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cleanreq-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cleanreq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cleanreq-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude cleanreq-response.msg.html

(cl:defclass <cleanreq-response> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:fixnum
    :initform 0))
)

(cl:defclass cleanreq-response (<cleanreq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cleanreq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cleanreq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<cleanreq-response> is deprecated: use behaviour-srv:cleanreq-response instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <cleanreq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:a-val is deprecated.  Use behaviour-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cleanreq-response>) ostream)
  "Serializes a message object of type '<cleanreq-response>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cleanreq-response>) istream)
  "Deserializes a message object of type '<cleanreq-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cleanreq-response>)))
  "Returns string type for a service object of type '<cleanreq-response>"
  "behaviour/cleanreqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cleanreq-response)))
  "Returns string type for a service object of type 'cleanreq-response"
  "behaviour/cleanreqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cleanreq-response>)))
  "Returns md5sum for a message object of type '<cleanreq-response>"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cleanreq-response)))
  "Returns md5sum for a message object of type 'cleanreq-response"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cleanreq-response>)))
  "Returns full string definition for message of type '<cleanreq-response>"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cleanreq-response)))
  "Returns full string definition for message of type 'cleanreq-response"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cleanreq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cleanreq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cleanreq-response
    (cl:cons ':a (a msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cleanreq)))
  'cleanreq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cleanreq)))
  'cleanreq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cleanreq)))
  "Returns string type for a service object of type '<cleanreq>"
  "behaviour/cleanreq")