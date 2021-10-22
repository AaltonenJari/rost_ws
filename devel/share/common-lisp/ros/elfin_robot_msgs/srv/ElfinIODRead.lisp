; Auto-generated. Do not edit!


(cl:in-package elfin_robot_msgs-srv)


;//! \htmlinclude ElfinIODRead-request.msg.html

(cl:defclass <ElfinIODRead-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElfinIODRead-request (<ElfinIODRead-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElfinIODRead-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElfinIODRead-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name elfin_robot_msgs-srv:<ElfinIODRead-request> is deprecated: use elfin_robot_msgs-srv:ElfinIODRead-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ElfinIODRead-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elfin_robot_msgs-srv:data-val is deprecated.  Use elfin_robot_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElfinIODRead-request>) ostream)
  "Serializes a message object of type '<ElfinIODRead-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElfinIODRead-request>) istream)
  "Deserializes a message object of type '<ElfinIODRead-request>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElfinIODRead-request>)))
  "Returns string type for a service object of type '<ElfinIODRead-request>"
  "elfin_robot_msgs/ElfinIODReadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElfinIODRead-request)))
  "Returns string type for a service object of type 'ElfinIODRead-request"
  "elfin_robot_msgs/ElfinIODReadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElfinIODRead-request>)))
  "Returns md5sum for a message object of type '<ElfinIODRead-request>"
  "17d1458f56860abf97b7dcd22dda435a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElfinIODRead-request)))
  "Returns md5sum for a message object of type 'ElfinIODRead-request"
  "17d1458f56860abf97b7dcd22dda435a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElfinIODRead-request>)))
  "Returns full string definition for message of type '<ElfinIODRead-request>"
  (cl:format cl:nil "bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElfinIODRead-request)))
  "Returns full string definition for message of type 'ElfinIODRead-request"
  (cl:format cl:nil "bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElfinIODRead-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElfinIODRead-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElfinIODRead-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude ElfinIODRead-response.msg.html

(cl:defclass <ElfinIODRead-response> (roslisp-msg-protocol:ros-message)
  ((digital_input
    :reader digital_input
    :initarg :digital_input
    :type cl:integer
    :initform 0))
)

(cl:defclass ElfinIODRead-response (<ElfinIODRead-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElfinIODRead-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElfinIODRead-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name elfin_robot_msgs-srv:<ElfinIODRead-response> is deprecated: use elfin_robot_msgs-srv:ElfinIODRead-response instead.")))

(cl:ensure-generic-function 'digital_input-val :lambda-list '(m))
(cl:defmethod digital_input-val ((m <ElfinIODRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader elfin_robot_msgs-srv:digital_input-val is deprecated.  Use elfin_robot_msgs-srv:digital_input instead.")
  (digital_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElfinIODRead-response>) ostream)
  "Serializes a message object of type '<ElfinIODRead-response>"
  (cl:let* ((signed (cl:slot-value msg 'digital_input)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElfinIODRead-response>) istream)
  "Deserializes a message object of type '<ElfinIODRead-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'digital_input) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElfinIODRead-response>)))
  "Returns string type for a service object of type '<ElfinIODRead-response>"
  "elfin_robot_msgs/ElfinIODReadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElfinIODRead-response)))
  "Returns string type for a service object of type 'ElfinIODRead-response"
  "elfin_robot_msgs/ElfinIODReadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElfinIODRead-response>)))
  "Returns md5sum for a message object of type '<ElfinIODRead-response>"
  "17d1458f56860abf97b7dcd22dda435a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElfinIODRead-response)))
  "Returns md5sum for a message object of type 'ElfinIODRead-response"
  "17d1458f56860abf97b7dcd22dda435a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElfinIODRead-response>)))
  "Returns full string definition for message of type '<ElfinIODRead-response>"
  (cl:format cl:nil "int32 digital_input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElfinIODRead-response)))
  "Returns full string definition for message of type 'ElfinIODRead-response"
  (cl:format cl:nil "int32 digital_input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElfinIODRead-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElfinIODRead-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElfinIODRead-response
    (cl:cons ':digital_input (digital_input msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElfinIODRead)))
  'ElfinIODRead-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElfinIODRead)))
  'ElfinIODRead-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElfinIODRead)))
  "Returns string type for a service object of type '<ElfinIODRead>"
  "elfin_robot_msgs/ElfinIODRead")