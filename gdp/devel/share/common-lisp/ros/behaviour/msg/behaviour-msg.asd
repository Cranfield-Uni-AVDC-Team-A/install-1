
(cl:in-package :asdf)

(defsystem "behaviour-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "drone_geometry" :depends-on ("_package_drone_geometry"))
    (:file "_package_drone_geometry" :depends-on ("_package"))
    (:file "drone_hello" :depends-on ("_package_drone_hello"))
    (:file "_package_drone_hello" :depends-on ("_package"))
    (:file "drone_state" :depends-on ("_package_drone_state"))
    (:file "_package_drone_state" :depends-on ("_package"))
    (:file "members" :depends-on ("_package_members"))
    (:file "_package_members" :depends-on ("_package"))
    (:file "mission" :depends-on ("_package_mission"))
    (:file "_package_mission" :depends-on ("_package"))
    (:file "score" :depends-on ("_package_score"))
    (:file "_package_score" :depends-on ("_package"))
    (:file "swarmstate" :depends-on ("_package_swarmstate"))
    (:file "_package_swarmstate" :depends-on ("_package"))
    (:file "target" :depends-on ("_package_target"))
    (:file "_package_target" :depends-on ("_package"))
    (:file "targetlist" :depends-on ("_package_targetlist"))
    (:file "_package_targetlist" :depends-on ("_package"))
    (:file "task" :depends-on ("_package_task"))
    (:file "_package_task" :depends-on ("_package"))
    (:file "task_geometry" :depends-on ("_package_task_geometry"))
    (:file "_package_task_geometry" :depends-on ("_package"))
  ))