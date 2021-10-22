;; Auto-generated. Do not edit!


(when (boundp 'elfin_robot_msgs::SetString)
  (if (not (find-package "ELFIN_ROBOT_MSGS"))
    (make-package "ELFIN_ROBOT_MSGS"))
  (shadow 'SetString (find-package "ELFIN_ROBOT_MSGS")))
(unless (find-package "ELFIN_ROBOT_MSGS::SETSTRING")
  (make-package "ELFIN_ROBOT_MSGS::SETSTRING"))
(unless (find-package "ELFIN_ROBOT_MSGS::SETSTRINGREQUEST")
  (make-package "ELFIN_ROBOT_MSGS::SETSTRINGREQUEST"))
(unless (find-package "ELFIN_ROBOT_MSGS::SETSTRINGRESPONSE")
  (make-package "ELFIN_ROBOT_MSGS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass elfin_robot_msgs::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod elfin_robot_msgs::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass elfin_robot_msgs::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod elfin_robot_msgs::SetStringResponse
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

(defclass elfin_robot_msgs::SetString
  :super ros::object
  :slots ())

(setf (get elfin_robot_msgs::SetString :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get elfin_robot_msgs::SetString :datatype-) "elfin_robot_msgs/SetString")
(setf (get elfin_robot_msgs::SetString :request) elfin_robot_msgs::SetStringRequest)
(setf (get elfin_robot_msgs::SetString :response) elfin_robot_msgs::SetStringResponse)

(defmethod elfin_robot_msgs::SetStringRequest
  (:response () (instance elfin_robot_msgs::SetStringResponse :init)))

(setf (get elfin_robot_msgs::SetStringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get elfin_robot_msgs::SetStringRequest :datatype-) "elfin_robot_msgs/SetStringRequest")
(setf (get elfin_robot_msgs::SetStringRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get elfin_robot_msgs::SetStringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get elfin_robot_msgs::SetStringResponse :datatype-) "elfin_robot_msgs/SetStringResponse")
(setf (get elfin_robot_msgs::SetStringResponse :definition-)
      "string data
---
bool success
string message

")



(provide :elfin_robot_msgs/SetString "546971982e3fbbd5a41e60fb6432e357")


