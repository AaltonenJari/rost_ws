
(cl:in-package :asdf)

(defsystem "icim_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ICIM_action" :depends-on ("_package_ICIM_action"))
    (:file "_package_ICIM_action" :depends-on ("_package"))
  ))