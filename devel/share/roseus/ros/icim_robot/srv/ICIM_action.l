;; Auto-generated. Do not edit!


(when (boundp 'icim_robot::ICIM_action)
  (if (not (find-package "ICIM_ROBOT"))
    (make-package "ICIM_ROBOT"))
  (shadow 'ICIM_action (find-package "ICIM_ROBOT")))
(unless (find-package "ICIM_ROBOT::ICIM_ACTION")
  (make-package "ICIM_ROBOT::ICIM_ACTION"))
(unless (find-package "ICIM_ROBOT::ICIM_ACTIONREQUEST")
  (make-package "ICIM_ROBOT::ICIM_ACTIONREQUEST"))
(unless (find-package "ICIM_ROBOT::ICIM_ACTIONRESPONSE")
  (make-package "ICIM_ROBOT::ICIM_ACTIONRESPONSE"))

(in-package "ROS")





(defclass icim_robot::ICIM_actionRequest
  :super ros::object
  :slots (_index _pickup _place _home ))

(defmethod icim_robot::ICIM_actionRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:pickup __pickup) nil)
    ((:place __place) nil)
    ((:home __home) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _pickup __pickup)
   (setq _place __place)
   (setq _home __home)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:pickup
   (&optional (__pickup :null))
   (if (not (eq __pickup :null)) (setq _pickup __pickup)) _pickup)
  (:place
   (&optional (__place :null))
   (if (not (eq __place :null)) (setq _place __place)) _place)
  (:home
   (&optional (__home :null))
   (if (not (eq __home :null)) (setq _home __home)) _home)
  (:serialization-length
   ()
   (+
    ;; uint8 _index
    1
    ;; bool _pickup
    1
    ;; bool _place
    1
    ;; bool _home
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _index
       (write-byte _index s)
     ;; bool _pickup
       (if _pickup (write-byte -1 s) (write-byte 0 s))
     ;; bool _place
       (if _place (write-byte -1 s) (write-byte 0 s))
     ;; bool _home
       (if _home (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _pickup
     (setq _pickup (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _place
     (setq _place (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _home
     (setq _home (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass icim_robot::ICIM_actionResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod icim_robot::ICIM_actionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass icim_robot::ICIM_action
  :super ros::object
  :slots ())

(setf (get icim_robot::ICIM_action :md5sum-) "ac222bde2a288d489953362d931be211")
(setf (get icim_robot::ICIM_action :datatype-) "icim_robot/ICIM_action")
(setf (get icim_robot::ICIM_action :request) icim_robot::ICIM_actionRequest)
(setf (get icim_robot::ICIM_action :response) icim_robot::ICIM_actionResponse)

(defmethod icim_robot::ICIM_actionRequest
  (:response () (instance icim_robot::ICIM_actionResponse :init)))

(setf (get icim_robot::ICIM_actionRequest :md5sum-) "ac222bde2a288d489953362d931be211")
(setf (get icim_robot::ICIM_actionRequest :datatype-) "icim_robot/ICIM_actionRequest")
(setf (get icim_robot::ICIM_actionRequest :definition-)
      "uint8 index 
bool pickup
bool place
bool home
---
bool success
string status_message

")

(setf (get icim_robot::ICIM_actionResponse :md5sum-) "ac222bde2a288d489953362d931be211")
(setf (get icim_robot::ICIM_actionResponse :datatype-) "icim_robot/ICIM_actionResponse")
(setf (get icim_robot::ICIM_actionResponse :definition-)
      "uint8 index 
bool pickup
bool place
bool home
---
bool success
string status_message

")



(provide :icim_robot/ICIM_action "ac222bde2a288d489953362d931be211")


