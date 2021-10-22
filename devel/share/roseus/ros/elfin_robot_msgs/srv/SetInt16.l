;; Auto-generated. Do not edit!


(when (boundp 'elfin_robot_msgs::SetInt16)
  (if (not (find-package "ELFIN_ROBOT_MSGS"))
    (make-package "ELFIN_ROBOT_MSGS"))
  (shadow 'SetInt16 (find-package "ELFIN_ROBOT_MSGS")))
(unless (find-package "ELFIN_ROBOT_MSGS::SETINT16")
  (make-package "ELFIN_ROBOT_MSGS::SETINT16"))
(unless (find-package "ELFIN_ROBOT_MSGS::SETINT16REQUEST")
  (make-package "ELFIN_ROBOT_MSGS::SETINT16REQUEST"))
(unless (find-package "ELFIN_ROBOT_MSGS::SETINT16RESPONSE")
  (make-package "ELFIN_ROBOT_MSGS::SETINT16RESPONSE"))

(in-package "ROS")





(defclass elfin_robot_msgs::SetInt16Request
  :super ros::object
  :slots (_data ))

(defmethod elfin_robot_msgs::SetInt16Request
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _data
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _data
       (write-word _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _data
     (setq _data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass elfin_robot_msgs::SetInt16Response
  :super ros::object
  :slots (_success _message ))

(defmethod elfin_robot_msgs::SetInt16Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass elfin_robot_msgs::SetInt16
  :super ros::object
  :slots ())

(setf (get elfin_robot_msgs::SetInt16 :md5sum-) "04ca3f7f71c32c01ec29368d8fc87b04")
(setf (get elfin_robot_msgs::SetInt16 :datatype-) "elfin_robot_msgs/SetInt16")
(setf (get elfin_robot_msgs::SetInt16 :request) elfin_robot_msgs::SetInt16Request)
(setf (get elfin_robot_msgs::SetInt16 :response) elfin_robot_msgs::SetInt16Response)

(defmethod elfin_robot_msgs::SetInt16Request
  (:response () (instance elfin_robot_msgs::SetInt16Response :init)))

(setf (get elfin_robot_msgs::SetInt16Request :md5sum-) "04ca3f7f71c32c01ec29368d8fc87b04")
(setf (get elfin_robot_msgs::SetInt16Request :datatype-) "elfin_robot_msgs/SetInt16Request")
(setf (get elfin_robot_msgs::SetInt16Request :definition-)
      "int16 data
---
bool success
string message

")

(setf (get elfin_robot_msgs::SetInt16Response :md5sum-) "04ca3f7f71c32c01ec29368d8fc87b04")
(setf (get elfin_robot_msgs::SetInt16Response :datatype-) "elfin_robot_msgs/SetInt16Response")
(setf (get elfin_robot_msgs::SetInt16Response :definition-)
      "int16 data
---
bool success
string message

")



(provide :elfin_robot_msgs/SetInt16 "04ca3f7f71c32c01ec29368d8fc87b04")


