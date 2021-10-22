;; Auto-generated. Do not edit!


(when (boundp 'elfin_robot_msgs::SetFloat64)
  (if (not (find-package "ELFIN_ROBOT_MSGS"))
    (make-package "ELFIN_ROBOT_MSGS"))
  (shadow 'SetFloat64 (find-package "ELFIN_ROBOT_MSGS")))
(unless (find-package "ELFIN_ROBOT_MSGS::SETFLOAT64")
  (make-package "ELFIN_ROBOT_MSGS::SETFLOAT64"))
(unless (find-package "ELFIN_ROBOT_MSGS::SETFLOAT64REQUEST")
  (make-package "ELFIN_ROBOT_MSGS::SETFLOAT64REQUEST"))
(unless (find-package "ELFIN_ROBOT_MSGS::SETFLOAT64RESPONSE")
  (make-package "ELFIN_ROBOT_MSGS::SETFLOAT64RESPONSE"))

(in-package "ROS")





(defclass elfin_robot_msgs::SetFloat64Request
  :super ros::object
  :slots (_data ))

(defmethod elfin_robot_msgs::SetFloat64Request
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass elfin_robot_msgs::SetFloat64Response
  :super ros::object
  :slots (_success _message ))

(defmethod elfin_robot_msgs::SetFloat64Response
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

(defclass elfin_robot_msgs::SetFloat64
  :super ros::object
  :slots ())

(setf (get elfin_robot_msgs::SetFloat64 :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get elfin_robot_msgs::SetFloat64 :datatype-) "elfin_robot_msgs/SetFloat64")
(setf (get elfin_robot_msgs::SetFloat64 :request) elfin_robot_msgs::SetFloat64Request)
(setf (get elfin_robot_msgs::SetFloat64 :response) elfin_robot_msgs::SetFloat64Response)

(defmethod elfin_robot_msgs::SetFloat64Request
  (:response () (instance elfin_robot_msgs::SetFloat64Response :init)))

(setf (get elfin_robot_msgs::SetFloat64Request :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get elfin_robot_msgs::SetFloat64Request :datatype-) "elfin_robot_msgs/SetFloat64Request")
(setf (get elfin_robot_msgs::SetFloat64Request :definition-)
      "float64 data
---
bool success
string message

")

(setf (get elfin_robot_msgs::SetFloat64Response :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get elfin_robot_msgs::SetFloat64Response :datatype-) "elfin_robot_msgs/SetFloat64Response")
(setf (get elfin_robot_msgs::SetFloat64Response :definition-)
      "float64 data
---
bool success
string message

")



(provide :elfin_robot_msgs/SetFloat64 "3f47c51e9da05852f0d7f484f9279955")


