; Auto-generated. Do not edit!


(cl:in-package f110_msgs-msg)


;//! \htmlinclude OpponentTrajectory.msg.html

(cl:defclass <OpponentTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lap_count
    :reader lap_count
    :initarg :lap_count
    :type cl:float
    :initform 0.0)
   (opp_is_on_trajectory
    :reader opp_is_on_trajectory
    :initarg :opp_is_on_trajectory
    :type cl:boolean
    :initform cl:nil)
   (oppwpnts
    :reader oppwpnts
    :initarg :oppwpnts
    :type (cl:vector f110_msgs-msg:OppWpnt)
   :initform (cl:make-array 0 :element-type 'f110_msgs-msg:OppWpnt :initial-element (cl:make-instance 'f110_msgs-msg:OppWpnt))))
)

(cl:defclass OpponentTrajectory (<OpponentTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpponentTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpponentTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f110_msgs-msg:<OpponentTrajectory> is deprecated: use f110_msgs-msg:OpponentTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OpponentTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:header-val is deprecated.  Use f110_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lap_count-val :lambda-list '(m))
(cl:defmethod lap_count-val ((m <OpponentTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:lap_count-val is deprecated.  Use f110_msgs-msg:lap_count instead.")
  (lap_count m))

(cl:ensure-generic-function 'opp_is_on_trajectory-val :lambda-list '(m))
(cl:defmethod opp_is_on_trajectory-val ((m <OpponentTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:opp_is_on_trajectory-val is deprecated.  Use f110_msgs-msg:opp_is_on_trajectory instead.")
  (opp_is_on_trajectory m))

(cl:ensure-generic-function 'oppwpnts-val :lambda-list '(m))
(cl:defmethod oppwpnts-val ((m <OpponentTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:oppwpnts-val is deprecated.  Use f110_msgs-msg:oppwpnts instead.")
  (oppwpnts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpponentTrajectory>) ostream)
  "Serializes a message object of type '<OpponentTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lap_count))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'opp_is_on_trajectory) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'oppwpnts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'oppwpnts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpponentTrajectory>) istream)
  "Deserializes a message object of type '<OpponentTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lap_count) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'opp_is_on_trajectory) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'oppwpnts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'oppwpnts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'f110_msgs-msg:OppWpnt))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpponentTrajectory>)))
  "Returns string type for a message object of type '<OpponentTrajectory>"
  "f110_msgs/OpponentTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpponentTrajectory)))
  "Returns string type for a message object of type 'OpponentTrajectory"
  "f110_msgs/OpponentTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpponentTrajectory>)))
  "Returns md5sum for a message object of type '<OpponentTrajectory>"
  "fe4d653bec85c82c41a017b9bdc2a6f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpponentTrajectory)))
  "Returns md5sum for a message object of type 'OpponentTrajectory"
  "fe4d653bec85c82c41a017b9bdc2a6f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpponentTrajectory>)))
  "Returns full string definition for message of type '<OpponentTrajectory>"
  (cl:format cl:nil "std_msgs/Header header~%float64 lap_count~%bool opp_is_on_trajectory~%OppWpnt[] oppwpnts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: f110_msgs/OppWpnt~%int32 id~%~%# frenet coordinates~%float64 s_m~%float64 d_m~%~%# map coordinates~%float64 x_m~%float64 y_m~%~%# track information~%float64 proj_vs_mps~%float64 vd_mps~%~%#variance  ~%float64 d_var~%float64 vs_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpponentTrajectory)))
  "Returns full string definition for message of type 'OpponentTrajectory"
  (cl:format cl:nil "std_msgs/Header header~%float64 lap_count~%bool opp_is_on_trajectory~%OppWpnt[] oppwpnts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: f110_msgs/OppWpnt~%int32 id~%~%# frenet coordinates~%float64 s_m~%float64 d_m~%~%# map coordinates~%float64 x_m~%float64 y_m~%~%# track information~%float64 proj_vs_mps~%float64 vd_mps~%~%#variance  ~%float64 d_var~%float64 vs_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpponentTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'oppwpnts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpponentTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'OpponentTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':lap_count (lap_count msg))
    (cl:cons ':opp_is_on_trajectory (opp_is_on_trajectory msg))
    (cl:cons ':oppwpnts (oppwpnts msg))
))
