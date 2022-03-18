
(cl:in-package :asdf)

(defsystem "behaviour-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :behaviour-msg
)
  :components ((:file "_package")
    (:file "areareq" :depends-on ("_package_areareq"))
    (:file "_package_areareq" :depends-on ("_package"))
    (:file "cleanreq" :depends-on ("_package_cleanreq"))
    (:file "_package_cleanreq" :depends-on ("_package"))
    (:file "swarmstatereq" :depends-on ("_package_swarmstatereq"))
    (:file "_package_swarmstatereq" :depends-on ("_package"))
    (:file "swarmstatereqRESPONSE" :depends-on ("_package_swarmstatereqRESPONSE"))
    (:file "_package_swarmstatereqRESPONSE" :depends-on ("_package"))
  ))