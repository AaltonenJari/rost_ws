;; Auto-generated. Do not edit!


(when (boundp 'elfin_robot_msgs::ElfinIODWrite)
  (if (not (find-package "ELFIN_ROBOT_MSGS"))
    (make-package "ELFIN_ROBOT_MSGS"))
  (shadow 'ElfinIODWrite (find-package "ELFIN_ROBOT_MSGS")))
(unless (find-package "ELFIN_ROBOT_MSGS::ELFINIODWRITE")
  (make-package "ELFIN_ROBOT_MSGS::ELFINIODWRITE"))
(unless (find-package "ELFIN_ROBOT_MSGS::ELFINIODWRITEREQUEST")
  (make-package "ELFIN_ROBOT_MSGS::ELFINIODWRITEREQUEST"))
(unless (find-package "ELFIN_ROBOT_MSGS::ELFINIODWRITERESPONSE")
  (make-package "ELFIN_ROBOT_MSGS::ELFINIODWRITERESPONSE"))

(in-package "ROS")





(defclass elfin_robot_msgs::ElfinIODWriteRequest
  :super ros::object
  :slots (_digital_output ))

(defmethod elfin_robot_msgs::ElfinIODWriteRequest
  (:init
   (&key
    ((:digital_output __digital_output) 0)
    )
   (send-super :init)
   (setq _digital_output (round __digital_output))
   self)
  (:digital_output
   (&optional __digital_output)
   (if __digital_output (setq _digital_output __digital_output)) _digital_output)
  (:serialization-length
   ()
   (+
    ;; int32 _digital_output
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _digital_output
       (write-long _digital_output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _digital_output
     (setq _digital_output (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass elfin_robot_msgs::ElfinIODWriteResponse
  :super ros::object
  :slots (_success ))

(defmethod elfin_robot_msgs::ElfinIODWriteResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass elfin_robot_msgs::ElfinIODWrite
  :super ros::object
  :slots ())

(setf (get elfin_robot_msgs::ElfinIODWrite :md5sum-) "0fc64fac1c3cd738d439b721e21f91e5")
(setf (get elfin_robot_msgs::ElfinIODWrite :datatype-) "elfin_robot_msgs/ElfinIODWrite")
(setf (get elfin_robot_msgs::ElfinIODWrite :request) elfin_robot_msgs::ElfinIODWriteRequest)
(setf (get elfin_robot_msgs::ElfinIODWrite :response) elfin_robot_msgs::ElfinIODWriteResponse)

(defmethod elfin_robot_msgs::ElfinIODWriteRequest
  (:response () (instance elfin_robot_msgs::ElfinIODWriteResponse :init)))

(setf (get elfin_robot_msgs::ElfinIODWriteRequest :md5sum-) "0fc64fac1c3cd738d439b721e21f91e5")
(setf (get elfin_robot_msgs::ElfinIODWriteRequest :datatype-) "elfin_robot_msgs/ElfinIODWriteRequest")
(setf (get elfin_robot_msgs::ElfinIODWriteRequest :definition-)
      "int32 digital_output
---
bool success

")

(setf (get elfin_robot_msgs::ElfinIODWriteResponse :md5sum-) "0fc64fac1c3cd738d439b721e21f91e5")
(setf (get elfin_robot_msgs::ElfinIODWriteResponse :datatype-) "elfin_robot_msgs/ElfinIODWriteResponse")
(setf (get elfin_robot_msgs::ElfinIODWriteResponse :definition-)
      "int32 digital_output
---
bool success

")



(provide :elfin_robot_msgs/ElfinIODWrite "0fc64fac1c3cd738d439b721e21f91e5")


