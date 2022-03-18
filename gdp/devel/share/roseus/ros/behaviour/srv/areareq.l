;; Auto-generated. Do not edit!


(when (boundp 'behaviour::areareq)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'areareq (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::AREAREQ")
  (make-package "BEHAVIOUR::AREAREQ"))
(unless (find-package "BEHAVIOUR::AREAREQREQUEST")
  (make-package "BEHAVIOUR::AREAREQREQUEST"))
(unless (find-package "BEHAVIOUR::AREAREQRESPONSE")
  (make-package "BEHAVIOUR::AREAREQRESPONSE"))

(in-package "ROS")





(defclass behaviour::areareqRequest
  :super ros::object
  :slots (_a ))

(defmethod behaviour::areareqRequest
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

(defclass behaviour::areareqResponse
  :super ros::object
  :slots (_a ))

(defmethod behaviour::areareqResponse
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

(defclass behaviour::areareq
  :super ros::object
  :slots ())

(setf (get behaviour::areareq :md5sum-) "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(setf (get behaviour::areareq :datatype-) "behaviour/areareq")
(setf (get behaviour::areareq :request) behaviour::areareqRequest)
(setf (get behaviour::areareq :response) behaviour::areareqResponse)

(defmethod behaviour::areareqRequest
  (:response () (instance behaviour::areareqResponse :init)))

(setf (get behaviour::areareqRequest :md5sum-) "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(setf (get behaviour::areareqRequest :datatype-) "behaviour/areareqRequest")
(setf (get behaviour::areareqRequest :definition-)
      "int8 a
---
int8 a
")

(setf (get behaviour::areareqResponse :md5sum-) "a4a19e72d17da6e4ff5c0b9f7a7ca609")
(setf (get behaviour::areareqResponse :datatype-) "behaviour/areareqResponse")
(setf (get behaviour::areareqResponse :definition-)
      "int8 a
---
int8 a
")



(provide :behaviour/areareq "a4a19e72d17da6e4ff5c0b9f7a7ca609")


