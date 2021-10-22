
(cl:in-package :asdf)

(defsystem "elfin_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ElfinIODRead" :depends-on ("_package_ElfinIODRead"))
    (:file "_package_ElfinIODRead" :depends-on ("_package"))
    (:file "ElfinIODWrite" :depends-on ("_package_ElfinIODWrite"))
    (:file "_package_ElfinIODWrite" :depends-on ("_package"))
    (:file "SetFloat64" :depends-on ("_package_SetFloat64"))
    (:file "_package_SetFloat64" :depends-on ("_package"))
    (:file "SetInt16" :depends-on ("_package_SetInt16"))
    (:file "_package_SetInt16" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
  ))