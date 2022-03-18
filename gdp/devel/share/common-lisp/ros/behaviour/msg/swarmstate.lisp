; Auto-generated. Do not edit!


(cl:in-package behaviour-msg)


;//! \htmlinclude swarmstate.msg.html

(cl:defclass <swarmstate> (roslisp-msg-protocol:ros-message)
  ((num_mon
    :reader num_mon
    :initarg :num_mon
    :type cl:fixnum
    :initform 0)
   (num_track
    :reader num_track
    :initarg :num_track
    :type cl:fixnum
    :initform 0)
   (available_track
    :reader available_track
    :initarg :available_track
    :type cl:fixnum
    :initform 0))
)

(cl:defclass swarmstate (<swarmstate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarmstate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarmstate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name behaviour-msg:<swarmstate> is deprecated: use behaviour-msg:swarmstate instead.")))

(cl:ensure-generic-function 'num_mon-val :lambda-list '(m))
(cl:defmethod num_mon-val ((m <swarmstate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:num_mon-val is deprecated.  Use behaviour-msg:num_mon instead.")
  (num_mon m))

(cl:ensure-generic-function 'num_track-val :lambda-list '(m))
(cl:defmethod num_track-val ((m <swarmstate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:num_track-val is deprecated.  Use behaviour-msg:num_track instead.")
  (num_track m))

(cl:ensure-generic-function 'available_track-val :lambda-list '(m))
(cl:defmethod available_track-val ((m <swarmstate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader behaviour-msg:available_track-val is deprecated.  Use behaviour-msg:available_track instead.")
  (available_track m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarmstate>) ostream)
  "Serializes a message object of type '<swarmstate>"
  (cl:let* ((signed (cl:slot-value msg 'num_mon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_track)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'available_track)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarmstate>) istream)
  "Deserializes a message object of type '<swarmstate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_mon) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_track) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'available_track) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarmstate>)))
  "Returns string type for a message object of type '<swarmstate>"
  "behaviour/swarmstate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarmstate)))
  "Returns string type for a message object of type 'swarmstate"
  "behaviour/swarmstate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarmstate>)))
  "Returns md5sum for a message object of type '<swarmstate>"
  "a525631f8ad4b69497b0091550a7555c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarmstate)))
  "Returns md5sum for a message object of type 'swarmstate"
  "a525631f8ad4b69497b0091550a7555c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarmstate>)))
  "Returns full string definition for message of type '<swarmstate>"
  (cl:format cl:nil "int8 num_mon~%int8 num_track~%int8 available_track~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarmstate)))
  "Returns full string definition for message of type 'swarmstate"
  (cl:format cl:nil "int8 num_mon~%int8 num_track~%int8 available_track~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarmstate>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarmstate>))
  "Converts a ROS message object to a list"
  (cl:list 'swarmstate
    (cl:cons ':num_mon (num_mon msg))
    (cl:cons ':num_track (num_track msg))
    (cl:cons ':available_track (available_track msg))
))
