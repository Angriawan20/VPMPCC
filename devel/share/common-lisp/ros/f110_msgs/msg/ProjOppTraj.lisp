; Auto-generated. Do not edit!


(cl:in-package f110_msgs-msg)


;//! \htmlinclude ProjOppTraj.msg.html

(cl:defclass <ProjOppTraj> (roslisp-msg-protocol:ros-message)
  ((lapcount
    :reader lapcount
    :initarg :lapcount
    :type cl:float
    :initform 0.0)
   (nrofpoints
    :reader nrofpoints
    :initarg :nrofpoints
    :type cl:float
    :initform 0.0)
   (opp_is_on_trajectory
    :reader opp_is_on_trajectory
    :initarg :opp_is_on_trajectory
    :type cl:boolean
    :initform cl:nil)
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector f110_msgs-msg:ProjOppPoint)
   :initform (cl:make-array 0 :element-type 'f110_msgs-msg:ProjOppPoint :initial-element (cl:make-instance 'f110_msgs-msg:ProjOppPoint))))
)

(cl:defclass ProjOppTraj (<ProjOppTraj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjOppTraj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjOppTraj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f110_msgs-msg:<ProjOppTraj> is deprecated: use f110_msgs-msg:ProjOppTraj instead.")))

(cl:ensure-generic-function 'lapcount-val :lambda-list '(m))
(cl:defmethod lapcount-val ((m <ProjOppTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:lapcount-val is deprecated.  Use f110_msgs-msg:lapcount instead.")
  (lapcount m))

(cl:ensure-generic-function 'nrofpoints-val :lambda-list '(m))
(cl:defmethod nrofpoints-val ((m <ProjOppTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:nrofpoints-val is deprecated.  Use f110_msgs-msg:nrofpoints instead.")
  (nrofpoints m))

(cl:ensure-generic-function 'opp_is_on_trajectory-val :lambda-list '(m))
(cl:defmethod opp_is_on_trajectory-val ((m <ProjOppTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:opp_is_on_trajectory-val is deprecated.  Use f110_msgs-msg:opp_is_on_trajectory instead.")
  (opp_is_on_trajectory m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <ProjOppTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:detections-val is deprecated.  Use f110_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjOppTraj>) ostream)
  "Serializes a message object of type '<ProjOppTraj>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lapcount))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'nrofpoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'opp_is_on_trajectory) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjOppTraj>) istream)
  "Deserializes a message object of type '<ProjOppTraj>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lapcount) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nrofpoints) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'opp_is_on_trajectory) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'f110_msgs-msg:ProjOppPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjOppTraj>)))
  "Returns string type for a message object of type '<ProjOppTraj>"
  "f110_msgs/ProjOppTraj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjOppTraj)))
  "Returns string type for a message object of type 'ProjOppTraj"
  "f110_msgs/ProjOppTraj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjOppTraj>)))
  "Returns md5sum for a message object of type '<ProjOppTraj>"
  "499738ff330d861f27f97c2965929bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjOppTraj)))
  "Returns md5sum for a message object of type 'ProjOppTraj"
  "499738ff330d861f27f97c2965929bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjOppTraj>)))
  "Returns full string definition for message of type '<ProjOppTraj>"
  (cl:format cl:nil "float64 lapcount~%float64 nrofpoints~%bool opp_is_on_trajectory~%ProjOppPoint[] detections~%================================================================================~%MSG: f110_msgs/ProjOppPoint~%#Velocities are projected onto ego race line~%~%float64 s~%float64 d                       ~%float64 vs~%float64 vd~%bool is_static~%bool is_visible~%float64 time~%float64 s_var~%float64 d_var~%float64 vs_var~%float64 vd_var~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjOppTraj)))
  "Returns full string definition for message of type 'ProjOppTraj"
  (cl:format cl:nil "float64 lapcount~%float64 nrofpoints~%bool opp_is_on_trajectory~%ProjOppPoint[] detections~%================================================================================~%MSG: f110_msgs/ProjOppPoint~%#Velocities are projected onto ego race line~%~%float64 s~%float64 d                       ~%float64 vs~%float64 vd~%bool is_static~%bool is_visible~%float64 time~%float64 s_var~%float64 d_var~%float64 vs_var~%float64 vd_var~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjOppTraj>))
  (cl:+ 0
     8
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjOppTraj>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjOppTraj
    (cl:cons ':lapcount (lapcount msg))
    (cl:cons ':nrofpoints (nrofpoints msg))
    (cl:cons ':opp_is_on_trajectory (opp_is_on_trajectory msg))
    (cl:cons ':detections (detections msg))
))
