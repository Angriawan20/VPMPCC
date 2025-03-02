; Auto-generated. Do not edit!


(cl:in-package f110_msgs-msg)


;//! \htmlinclude LapData.msg.html

(cl:defclass <LapData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lap_count
    :reader lap_count
    :initarg :lap_count
    :type cl:integer
    :initform 0)
   (lap_time
    :reader lap_time
    :initarg :lap_time
    :type cl:float
    :initform 0.0)
   (average_lateral_error_to_global_waypoints
    :reader average_lateral_error_to_global_waypoints
    :initarg :average_lateral_error_to_global_waypoints
    :type cl:float
    :initform 0.0)
   (max_lateral_error_to_global_waypoints
    :reader max_lateral_error_to_global_waypoints
    :initarg :max_lateral_error_to_global_waypoints
    :type cl:float
    :initform 0.0))
)

(cl:defclass LapData (<LapData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LapData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LapData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f110_msgs-msg:<LapData> is deprecated: use f110_msgs-msg:LapData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:header-val is deprecated.  Use f110_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lap_count-val :lambda-list '(m))
(cl:defmethod lap_count-val ((m <LapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:lap_count-val is deprecated.  Use f110_msgs-msg:lap_count instead.")
  (lap_count m))

(cl:ensure-generic-function 'lap_time-val :lambda-list '(m))
(cl:defmethod lap_time-val ((m <LapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:lap_time-val is deprecated.  Use f110_msgs-msg:lap_time instead.")
  (lap_time m))

(cl:ensure-generic-function 'average_lateral_error_to_global_waypoints-val :lambda-list '(m))
(cl:defmethod average_lateral_error_to_global_waypoints-val ((m <LapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:average_lateral_error_to_global_waypoints-val is deprecated.  Use f110_msgs-msg:average_lateral_error_to_global_waypoints instead.")
  (average_lateral_error_to_global_waypoints m))

(cl:ensure-generic-function 'max_lateral_error_to_global_waypoints-val :lambda-list '(m))
(cl:defmethod max_lateral_error_to_global_waypoints-val ((m <LapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:max_lateral_error_to_global_waypoints-val is deprecated.  Use f110_msgs-msg:max_lateral_error_to_global_waypoints instead.")
  (max_lateral_error_to_global_waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LapData>) ostream)
  "Serializes a message object of type '<LapData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lap_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lap_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'average_lateral_error_to_global_waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_lateral_error_to_global_waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LapData>) istream)
  "Deserializes a message object of type '<LapData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lap_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lap_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_lateral_error_to_global_waypoints) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_lateral_error_to_global_waypoints) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LapData>)))
  "Returns string type for a message object of type '<LapData>"
  "f110_msgs/LapData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LapData)))
  "Returns string type for a message object of type 'LapData"
  "f110_msgs/LapData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LapData>)))
  "Returns md5sum for a message object of type '<LapData>"
  "5725d7beb0cea6dca3c2632d8748505b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LapData)))
  "Returns md5sum for a message object of type 'LapData"
  "5725d7beb0cea6dca3c2632d8748505b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LapData>)))
  "Returns full string definition for message of type '<LapData>"
  (cl:format cl:nil "std_msgs/Header header~%~%int32 lap_count ~%float64 lap_time~%float64 average_lateral_error_to_global_waypoints~%float64 max_lateral_error_to_global_waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LapData)))
  "Returns full string definition for message of type 'LapData"
  (cl:format cl:nil "std_msgs/Header header~%~%int32 lap_count ~%float64 lap_time~%float64 average_lateral_error_to_global_waypoints~%float64 max_lateral_error_to_global_waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LapData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LapData>))
  "Converts a ROS message object to a list"
  (cl:list 'LapData
    (cl:cons ':header (header msg))
    (cl:cons ':lap_count (lap_count msg))
    (cl:cons ':lap_time (lap_time msg))
    (cl:cons ':average_lateral_error_to_global_waypoints (average_lateral_error_to_global_waypoints msg))
    (cl:cons ':max_lateral_error_to_global_waypoints (max_lateral_error_to_global_waypoints msg))
))
