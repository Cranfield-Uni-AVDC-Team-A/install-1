;; Auto-generated. Do not edit!


(when (boundp 'behaviour::swarmstate)
  (if (not (find-package "BEHAVIOUR"))
    (make-package "BEHAVIOUR"))
  (shadow 'swarmstate (find-package "BEHAVIOUR")))
(unless (find-package "BEHAVIOUR::SWARMSTATE")
  (make-package "BEHAVIOUR::SWARMSTATE"))

(in-package "ROS")
;;//! \htmlinclude swarmstate.msg.html


(defclass behaviour::swarmstate
  :super ros::object
  :slots (_num_mon _num_track _available_track ))

(defmethod behaviour::swarmstate
  (:init
   (&key
    ((:num_mon __num_mon) 0)
    ((:num_track __num_track) 0)
    ((:available_track __available_track) 0)
    )
   (send-super :init)
   (setq _num_mon (round __num_mon))
   (setq _num_track (round __num_track))
   (setq _available_track (round __available_track))
   self)
  (:num_mon
   (&optional __num_mon)
   (if __num_mon (setq _num_mon __num_mon)) _num_mon)
  (:num_track
   (&optional __num_track)
   (if __num_track (setq _num_track __num_track)) _num_track)
  (:available_track
   (&optional __available_track)
   (if __available_track (setq _available_track __available_track)) _available_track)
  (:serialization-length
   ()
   (+
    ;; int8 _num_mon
    1
    ;; int8 _num_track
    1
    ;; int8 _available_track
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _num_mon
       (write-byte _num_mon s)
     ;; int8 _num_track
       (write-byte _num_track s)
     ;; int8 _available_track
       (write-byte _available_track s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _num_mon
     (setq _num_mon (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_mon 127) (setq _num_mon (- _num_mon 256)))
   ;; int8 _num_track
     (setq _num_track (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_track 127) (setq _num_track (- _num_track 256)))
   ;; int8 _available_track
     (setq _available_track (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _available_track 127) (setq _available_track (- _available_track 256)))
   ;;
   self)
  )

(setf (get behaviour::swarmstate :md5sum-) "a525631f8ad4b69497b0091550a7555c")
(setf (get behaviour::swarmstate :datatype-) "behaviour/swarmstate")
(setf (get behaviour::swarmstate :definition-)
      "int8 num_mon
int8 num_track
int8 available_track
")



(provide :behaviour/swarmstate "a525631f8ad4b69497b0091550a7555c")


