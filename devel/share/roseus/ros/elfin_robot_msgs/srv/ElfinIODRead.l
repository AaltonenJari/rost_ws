;; Auto-generated. Do not edit!


(when (boundp 'elfin_robot_msgs::ElfinIODRead)
  (if (not (find-package "ELFIN_ROBOT_MSGS"))
    (make-package "ELFIN_ROBOT_MSGS"))
  (shadow 'ElfinIODRead (find-package "ELFIN_ROBOT_MSGS")))
(unless (find-package "ELFIN_ROBOT_MSGS::ELFINIODREAD")
  (make-package "ELFIN_ROBOT_MSGS::ELFINIODREAD"))
(unless (find-package "ELFIN_ROBOT_MSGS::ELFINIODREADREQUEST")
  (make-package "ELFIN_ROBOT_MSGS::ELFINIODREADREQUEST"))
(unless (find-package "ELFIN_ROBOT_MSGS::ELFINIODREADRESPONSE")
  (make-package "ELFIN_ROBOT_MSGS::ELFINIODREADRESPONSE"))

(in-package "ROS")





(defclass elfin_robot_msgs::ElfinIODReadRequest
  :super ros::object
  :slots (_data ))

(defmethod elfin_robot_msgs::ElfinIODReadRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass elfin_robot_msgs::ElfinIODReadResponse
  :super ros::object
  :slots (_digital_input ))

(defmethod elfin_robot_msgs::ElfinIODReadResponse
  (:init
   (&key
    ((:digital_input __digital_input) 0)
    )
   (send-super :init)
   (setq _digital_input (round __digital_input))
   self)
  (:digital_input
   (&optional __digital_input)
   (if __digital_input (setq _digital_input __digital_input)) _digital_input)
  (:serialization-length
   ()
   (+
    ;; int32 _digital_input
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _digital_input
       (write-long _digital_input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _digital_input
     (setq _digital_input (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass elfin_robot_msgs::ElfinIODRead
  :super ros::object
  :slots ())

(setf (get elfin_robot_msgs::ElfinIODRead :md5sum-) "17d1458f56860abf97b7dcd22dda435a")
(setf (get elfin_robot_msgs::ElfinIODRead :datatype-) "elfin_robot_msgs/ElfinIODRead")
(setf (get elfin_robot_msgs::ElfinIODRead :request) elfin_robot_msgs::ElfinIODReadRequest)
(setf (get elfin_robot_msgs::ElfinIODRead :response) elfin_robot_msgs::ElfinIODReadResponse)

(defmethod elfin_robot_msgs::ElfinIODReadRequest
  (:response () (instance elfin_robot_msgs::ElfinIODReadResponse :init)))

(setf (get elfin_robot_msgs::ElfinIODReadRequest :md5sum-) "17d1458f56860abf97b7dcd22dda435a")
(setf (get elfin_robot_msgs::ElfinIODReadRequest :datatype-) "elfin_robot_msgs/ElfinIODReadRequest")
(setf (get elfin_robot_msgs::ElfinIODReadRequest :definition-)
      "bool data
---
int32 digital_input

")

(setf (get elfin_robot_msgs::ElfinIODReadResponse :md5sum-) "17d1458f56860abf97b7dcd22dda435a")
(setf (get elfin_robot_msgs::ElfinIODReadResponse :datatype-) "elfin_robot_msgs/ElfinIODReadResponse")
(setf (get elfin_robot_msgs::ElfinIODReadResponse :definition-)
      "bool data
---
int32 digital_input

")



(provide :elfin_robot_msgs/ElfinIODRead "17d1458f56860abf97b7dcd22dda435a")


