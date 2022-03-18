; Auto-generated. Do not edit!


(cl:in-package behaviour-srv)


;//! \htmlinclude areareq-request.msg.html

(cl:defclass <areareq-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:fixnum
    :initform 0))
)

(cl:defclass areareq-request (<areareq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <areareq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'areareq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<areareq-request> is deprecated: use behaviour-srv:areareq-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <areareq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:a-val is deprecated.  Use behaviour-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <areareq-request>) ostream)
  "Serializes a message object of type '<areareq-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <areareq-request>) istream)
  "Deserializes a message object of type '<areareq-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<areareq-request>)))
  "Returns string type for a service object of type '<areareq-request>"
  "behaviour/areareqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'areareq-request)))
  "Returns string type for a service object of type 'areareq-request"
  "behaviour/areareqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<areareq-request>)))
  "Returns md5sum for a message object of type '<areareq-request>"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'areareq-request)))
  "Returns md5sum for a message object of type 'areareq-request"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<areareq-request>)))
  "Returns full string definition for message of type '<areareq-request>"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'areareq-request)))
  "Returns full string definition for message of type 'areareq-request"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <areareq-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <areareq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'areareq-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude areareq-response.msg.html

(cl:defclass <areareq-response> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:fixnum
    :initform 0))
)

(cl:defclass areareq-response (<areareq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <areareq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'areareq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-srv:<areareq-response> is deprecated: use behaviour-srv:areareq-response instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <areareq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-srv:a-val is deprecated.  Use behaviour-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <areareq-response>) ostream)
  "Serializes a message object of type '<areareq-response>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <areareq-response>) istream)
  "Deserializes a message object of type '<areareq-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<areareq-response>)))
  "Returns string type for a service object of type '<areareq-response>"
  "behaviour/areareqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'areareq-response)))
  "Returns string type for a service object of type 'areareq-response"
  "behaviour/areareqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<areareq-response>)))
  "Returns md5sum for a message object of type '<areareq-response>"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'areareq-response)))
  "Returns md5sum for a message object of type 'areareq-response"
  "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<areareq-response>)))
  "Returns full string definition for message of type '<areareq-response>"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'areareq-response)))
  "Returns full string definition for message of type 'areareq-response"
  (cl:format cl:nil "int8 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <areareq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <areareq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'areareq-response
    (cl:cons ':a (a msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'areareq)))
  'areareq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'areareq)))
  'areareq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'areareq)))
  "Returns string type for a service object of type '<areareq>"
  "behaviour/areareq")