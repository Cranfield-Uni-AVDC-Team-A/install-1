;; Auto-generated. Do not edit!


(when (boundp 'behaviour::cleanreq)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'cleanreq (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::CLEANREQ")
  (make-package "BEHAVIOUR::CLEANREQ"))
(unless (find-package "BEHAVIOUR::CLEANREQREQUEST")
  (make-package "BEHAVIOUR::CLEANREQREQUEST"))
(unless (find-package "BEHAVIOUR::CLEANREQRESPONSE")
  (make-package "BEHAVIOUR::CLEANREQRESPONSE"))

(in-package "ROS")





(defclass behaviour::cleanreqRequest
  :super ros::object
  :slots (_a ))

(defmethod behaviour::cleanreqRequest
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

(defclass behaviour::cleanreqResponse
  :super ros::object
  :slots (_a ))

(defmethod behaviour::cleanreqResponse
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

(defclass behaviour::cleanreq
  :super ros::object
  :slots ())

(setf (get behaviour::cleanreq :md5sum-) "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(setf (get behaviour::cleanreq :datatype-) "behaviour/cleanreq")
(setf (get behaviour::cleanreq :request) behaviour::cleanreqRequest)
(setf (get behaviour::cleanreq :response) behaviour::cleanreqResponse)

(defmethod behaviour::cleanreqRequest
  (:response () (instance behaviour::cleanreqResponse :init)))

(setf (get behaviour::cleanreqRequest :md5sum-) "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(setf (get behaviour::cleanreqRequest :datatype-) "behaviour/cleanreqRequest")
(setf (get behaviour::cleanreqRequest :definition-)
      "int8 a
---
int8 a
")

(setf (get behaviour::cleanreqResponse :md5sum-) "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(setf (get behaviour::cleanreqResponse :datatype-) "behaviour/cleanreqResponse")
(setf (get behaviour::cleanreqResponse :definition-)
      "int8 a
---
int8 a
")



(provide :behaviour/cleanreq "a4a19e72d17da6e4ff5c0b9f7a7ca609")


