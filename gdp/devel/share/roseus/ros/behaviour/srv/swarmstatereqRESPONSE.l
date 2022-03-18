;; Auto-generated. Do not edit!


(when (boundp 'behaviour::swarmstatereqRESPONSE)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'swarmstatereqRESPONSE (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::SWARMSTATEREQRESPONSE")
  (make-package "BEHAVIOUR::SWARMSTATEREQRESPONSE"))
(unless (find-package "BEHAVIOUR::SWARMSTATEREQRESPONSEREQUEST")
  (make-package "BEHAVIOUR::SWARMSTATEREQRESPONSEREQUEST"))
(unless (find-package "BEHAVIOUR::SWARMSTATEREQRESPONSERESPONSE")
  (make-package "BEHAVIOUR::SWARMSTATEREQRESPONSERESPONSE"))

(in-package "ROS")





(defclass behaviour::swarmstatereqRESPONSERequest
  :super ros::object
  :slots (_a ))

(defmethod behaviour::swarmstatereqRESPONSERequest
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int8 _a
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _a
       (write-byte _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _a
     (setq _a (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _a 127) (setq _a (- _a 256)))
   ;;
   self)
  )

(defclass behaviour::swarmstatereqRESPONSEResponse
  :super ros::object
  :slots (_swarmstate ))

(defmethod behaviour::swarmstatereqRESPONSEResponse
  (:init
   (&key
    ((:swarmstate __swarmstate) (instance behaviour::swarmstate :init))
    )
   (send-super :init)
   (setq _swarmstate __swarmstate)
   self)
  (:swarmstate
   (&rest __swarmstate)
   (if (keywordp (car __swarmstate))
       (send* _swarmstate __swarmstate)
     (progn
       (if __swarmstate (setq _swarmstate (car __swarmstate)))
       _swarmstate)))
  (:serialization-length
   ()
   (+
    ;; behaviour/swarmstate _swarmstate
    (send _swarmstate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; behaviour/swarmstate _swarmstate
       (send _swarmstate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; behaviour/swarmstate _swarmstate
     (send _swarmstate :deserialize buf ptr-) (incf ptr- (send _swarmstate :serialization-length))
   ;;
   self)
  )

(defclass behaviour::swarmstatereqRESPONSE
  :super ros::object
  :slots ())

(setf (get behaviour::swarmstatereqRESPONSE :md5sum-) "33a7566a467e8cd83585fe87304be866")
(setf (get behaviour::swarmstatereqRESPONSE :datatype-) "behaviour/swarmstatereqRESPONSE")
(setf (get behaviour::swarmstatereqRESPONSE :request) behaviour::swarmstatereqRESPONSERequest)
(setf (get behaviour::swarmstatereqRESPONSE :response) behaviour::swarmstatereqRESPONSEResponse)

(defmethod behaviour::swarmstatereqRESPONSERequest
  (:response () (instance behaviour::swarmstatereqRESPONSEResponse :init)))

(setf (get behaviour::swarmstatereqRESPONSERequest :md5sum-) "33a7566a467e8cd83585fe87304be866")
(setf (get behaviour::swarmstatereqRESPONSERequest :datatype-) "behaviour/swarmstatereqRESPONSERequest")
(setf (get behaviour::swarmstatereqRESPONSERequest :definition-)
      "int8 a
---
swarmstate swarmstate

================================================================================
MSG: behaviour/swarmstate
int8 num_mon
int8 num_track
")

(setf (get behaviour::swarmstatereqRESPONSEResponse :md5sum-) "33a7566a467e8cd83585fe87304be866")
(setf (get behaviour::swarmstatereqRESPONSEResponse :datatype-) "behaviour/swarmstatereqRESPONSEResponse")
(setf (get behaviour::swarmstatereqRESPONSEResponse :definition-)
      "int8 a
---
swarmstate swarmstate

================================================================================
MSG: behaviour/swarmstate
int8 num_mon
int8 num_track
")



(provide :behaviour/swarmstatereqRESPONSE "33a7566a467e8cd83585fe87304be866")


