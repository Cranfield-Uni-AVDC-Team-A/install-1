;; Auto-generated. Do not edit!


(when (boundp 'behaviour::swarmstatereq)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'swarmstatereq (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::SWARMSTATEREQ")
  (make-package "BEHAVIOUR::SWARMSTATEREQ"))
(unless (find-package "BEHAVIOUR::SWARMSTATEREQREQUEST")
  (make-package "BEHAVIOUR::SWARMSTATEREQREQUEST"))
(unless (find-package "BEHAVIOUR::SWARMSTATEREQRESPONSE")
  (make-package "BEHAVIOUR::SWARMSTATEREQRESPONSE"))

(in-package "ROS")





(defclass behaviour::swarmstatereqRequest
  :super ros::object
  :slots (_pass ))

(defmethod behaviour::swarmstatereqRequest
  (:init
   (&key
    ((:pass __pass) 0)
    )
   (send-super :init)
   (setq _pass (round __pass))
   self)
  (:pass
   (&optional __pass)
   (if __pass (setq _pass __pass)) _pass)
  (:serialization-length
   ()
   (+
    ;; int8 _pass
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pass
       (write-byte _pass s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pass
     (setq _pass (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pass 127) (setq _pass (- _pass 256)))
   ;;
   self)
  )

(defclass behaviour::swarmstatereqResponse
  :super ros::object
  :slots (_swarmstate ))

(defmethod behaviour::swarmstatereqResponse
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

(defclass behaviour::swarmstatereq
  :super ros::object
  :slots ())

(setf (get behaviour::swarmstatereq :md5sum-) "dcdc0995a6c9d0a85436f9cd484b8d9c")
(setf (get behaviour::swarmstatereq :datatype-) "behaviour/swarmstatereq")
(setf (get behaviour::swarmstatereq :request) behaviour::swarmstatereqRequest)
(setf (get behaviour::swarmstatereq :response) behaviour::swarmstatereqResponse)

(defmethod behaviour::swarmstatereqRequest
  (:response () (instance behaviour::swarmstatereqResponse :init)))

(setf (get behaviour::swarmstatereqRequest :md5sum-) "dcdc0995a6c9d0a85436f9cd484b8d9c")
(setf (get behaviour::swarmstatereqRequest :datatype-) "behaviour/swarmstatereqRequest")
(setf (get behaviour::swarmstatereqRequest :definition-)
      "int8 pass
---
swarmstate swarmstate

================================================================================
MSG: behaviour/swarmstate
int8 num_mon
int8 num_track
")

(setf (get behaviour::swarmstatereqResponse :md5sum-) "dcdc0995a6c9d0a85436f9cd484b8d9c")
(setf (get behaviour::swarmstatereqResponse :datatype-) "behaviour/swarmstatereqResponse")
(setf (get behaviour::swarmstatereqResponse :definition-)
      "int8 pass
---
swarmstate swarmstate

================================================================================
MSG: behaviour/swarmstate
int8 num_mon
int8 num_track
")



(provide :behaviour/swarmstatereq "dcdc0995a6c9d0a85436f9cd484b8d9c")


