; Auto-generated. Do not edit!


(cl:in-package elfin_robot_msgs-srv)


;//! \htmlinclude ElfinIODWrite-request.msg.html

(cl:defclass <ElfinIODWrite-request> (roslisp-msg-protocol:ros-message)
  ((digital_output
    :reader digital_output
    :initarg :digital_output
    :type cl:integer
    :initform 0))
)

(cl:defclass ElfinIODWrite-request (<ElfinIODWrite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElfinIODWrite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElfinIODWrite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name elfin_robot_msgs-srv:<ElfinIODWrite-request> is deprecated: use elfin_robot_msgs-srv:ElfinIODWrite-request instead.")))

(cl:ensure-generic-function 'digital_output-val :lambda-list '(m))
(cl:defmethod digital_output-val ((m <ElfinIODWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elfin_robot_msgs-srv:digital_output-val is deprecated.  Use elfin_robot_msgs-srv:digital_output instead.")
  (digital_output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElfinIODWrite-request>) ostream)
  "Serializes a message object of type '<ElfinIODWrite-request>"
  (cl:let* ((signed (cl:slot-value msg 'digital_output)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElfinIODWrite-request>) istream)
  "Deserializes a message object of type '<ElfinIODWrite-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'digital_output) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElfinIODWrite-request>)))
  "Returns string type for a service object of type '<ElfinIODWrite-request>"
  "elfin_robot_msgs/ElfinIODWriteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElfinIODWrite-request)))
  "Returns string type for a service object of type 'ElfinIODWrite-request"
  "elfin_robot_msgs/ElfinIODWriteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElfinIODWrite-request>)))
  "Returns md5sum for a message object of type '<ElfinIODWrite-request>"
  "0fc64fac1c3cd738d439b721e21f91e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElfinIODWrite-request)))
  "Returns md5sum for a message object of type 'ElfinIODWrite-request"
  "0fc64fac1c3cd738d439b721e21f91e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElfinIODWrite-request>)))
  "Returns full string definition for message of type '<ElfinIODWrite-request>"
  (cl:format cl:nil "int32 digital_output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElfinIODWrite-request)))
  "Returns full string definition for message of type 'ElfinIODWrite-request"
  (cl:format cl:nil "int32 digital_output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElfinIODWrite-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElfinIODWrite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElfinIODWrite-request
    (cl:cons ':digital_output (digital_output msg))
))
;//! \htmlinclude ElfinIODWrite-response.msg.html

(cl:defclass <ElfinIODWrite-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElfinIODWrite-response (<ElfinIODWrite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElfinIODWrite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElfinIODWrite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name elfin_robot_msgs-srv:<ElfinIODWrite-response> is deprecated: use elfin_robot_msgs-srv:ElfinIODWrite-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ElfinIODWrite-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elfin_robot_msgs-srv:success-val is deprecated.  Use elfin_robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElfinIODWrite-response>) ostream)
  "Serializes a message object of type '<ElfinIODWrite-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElfinIODWrite-response>) istream)
  "Deserializes a message object of type '<ElfinIODWrite-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElfinIODWrite-response>)))
  "Returns string type for a service object of type '<ElfinIODWrite-response>"
  "elfin_robot_msgs/ElfinIODWriteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElfinIODWrite-response)))
  "Returns string type for a service object of type 'ElfinIODWrite-response"
  "elfin_robot_msgs/ElfinIODWriteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElfinIODWrite-response>)))
  "Returns md5sum for a message object of type '<ElfinIODWrite-response>"
  "0fc64fac1c3cd738d439b721e21f91e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElfinIODWrite-response)))
  "Returns md5sum for a message object of type 'ElfinIODWrite-response"
  "0fc64fac1c3cd738d439b721e21f91e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElfinIODWrite-response>)))
  "Returns full string definition for message of type '<ElfinIODWrite-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElfinIODWrite-response)))
  "Returns full string definition for message of type 'ElfinIODWrite-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElfinIODWrite-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElfinIODWrite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElfinIODWrite-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElfinIODWrite)))
  'ElfinIODWrite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElfinIODWrite)))
  'ElfinIODWrite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElfinIODWrite)))
  "Returns string type for a service object of type '<ElfinIODWrite>"
  "elfin_robot_msgs/ElfinIODWrite")