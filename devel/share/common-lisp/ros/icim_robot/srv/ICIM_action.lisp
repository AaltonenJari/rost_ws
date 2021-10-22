; Auto-generated. Do not edit!


(cl:in-package icim_robot-srv)


;//! \htmlinclude ICIM_action-request.msg.html

(cl:defclass <ICIM_action-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (pickup
    :reader pickup
    :initarg :pickup
    :type cl:boolean
    :initform cl:nil)
   (place
    :reader place
    :initarg :place
    :type cl:boolean
    :initform cl:nil)
   (home
    :reader home
    :initarg :home
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ICIM_action-request (<ICIM_action-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ICIM_action-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ICIM_action-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icim_robot-srv:<ICIM_action-request> is deprecated: use icim_robot-srv:ICIM_action-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ICIM_action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icim_robot-srv:index-val is deprecated.  Use icim_robot-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'pickup-val :lambda-list '(m))
(cl:defmethod pickup-val ((m <ICIM_action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icim_robot-srv:pickup-val is deprecated.  Use icim_robot-srv:pickup instead.")
  (pickup m))

(cl:ensure-generic-function 'place-val :lambda-list '(m))
(cl:defmethod place-val ((m <ICIM_action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icim_robot-srv:place-val is deprecated.  Use icim_robot-srv:place instead.")
  (place m))

(cl:ensure-generic-function 'home-val :lambda-list '(m))
(cl:defmethod home-val ((m <ICIM_action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icim_robot-srv:home-val is deprecated.  Use icim_robot-srv:home instead.")
  (home m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ICIM_action-request>) ostream)
  "Serializes a message object of type '<ICIM_action-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pickup) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'place) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'home) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ICIM_action-request>) istream)
  "Deserializes a message object of type '<ICIM_action-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pickup) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'place) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'home) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ICIM_action-request>)))
  "Returns string type for a service object of type '<ICIM_action-request>"
  "icim_robot/ICIM_actionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ICIM_action-request)))
  "Returns string type for a service object of type 'ICIM_action-request"
  "icim_robot/ICIM_actionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ICIM_action-request>)))
  "Returns md5sum for a message object of type '<ICIM_action-request>"
  "ac222bde2a288d489953362d931be211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ICIM_action-request)))
  "Returns md5sum for a message object of type 'ICIM_action-request"
  "ac222bde2a288d489953362d931be211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ICIM_action-request>)))
  "Returns full string definition for message of type '<ICIM_action-request>"
  (cl:format cl:nil "uint8 index ~%bool pickup~%bool place~%bool home~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ICIM_action-request)))
  "Returns full string definition for message of type 'ICIM_action-request"
  (cl:format cl:nil "uint8 index ~%bool pickup~%bool place~%bool home~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ICIM_action-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ICIM_action-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ICIM_action-request
    (cl:cons ':index (index msg))
    (cl:cons ':pickup (pickup msg))
    (cl:cons ':place (place msg))
    (cl:cons ':home (home msg))
))
;//! \htmlinclude ICIM_action-response.msg.html

(cl:defclass <ICIM_action-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass ICIM_action-response (<ICIM_action-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ICIM_action-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ICIM_action-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icim_robot-srv:<ICIM_action-response> is deprecated: use icim_robot-srv:ICIM_action-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ICIM_action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icim_robot-srv:success-val is deprecated.  Use icim_robot-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <ICIM_action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icim_robot-srv:status_message-val is deprecated.  Use icim_robot-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ICIM_action-response>) ostream)
  "Serializes a message object of type '<ICIM_action-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ICIM_action-response>) istream)
  "Deserializes a message object of type '<ICIM_action-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ICIM_action-response>)))
  "Returns string type for a service object of type '<ICIM_action-response>"
  "icim_robot/ICIM_actionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ICIM_action-response)))
  "Returns string type for a service object of type 'ICIM_action-response"
  "icim_robot/ICIM_actionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ICIM_action-response>)))
  "Returns md5sum for a message object of type '<ICIM_action-response>"
  "ac222bde2a288d489953362d931be211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ICIM_action-response)))
  "Returns md5sum for a message object of type 'ICIM_action-response"
  "ac222bde2a288d489953362d931be211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ICIM_action-response>)))
  "Returns full string definition for message of type '<ICIM_action-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ICIM_action-response)))
  "Returns full string definition for message of type 'ICIM_action-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ICIM_action-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ICIM_action-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ICIM_action-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ICIM_action)))
  'ICIM_action-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ICIM_action)))
  'ICIM_action-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ICIM_action)))
  "Returns string type for a service object of type '<ICIM_action>"
  "icim_robot/ICIM_action")