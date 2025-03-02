; Auto-generated. Do not edit!


(cl:in-package f110_msgs-msg)


;//! \htmlinclude CarState.msg.html

(cl:defclass <CarState> (roslisp-msg-protocol:ros-message)
  ((slam_pose
    :reader slam_pose
    :initarg :slam_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (ekf_twist
    :reader ekf_twist
    :initarg :ekf_twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass CarState (<CarState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f110_msgs-msg:<CarState> is deprecated: use f110_msgs-msg:CarState instead.")))

(cl:ensure-generic-function 'slam_pose-val :lambda-list '(m))
(cl:defmethod slam_pose-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:slam_pose-val is deprecated.  Use f110_msgs-msg:slam_pose instead.")
  (slam_pose m))

(cl:ensure-generic-function 'ekf_twist-val :lambda-list '(m))
(cl:defmethod ekf_twist-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:ekf_twist-val is deprecated.  Use f110_msgs-msg:ekf_twist instead.")
  (ekf_twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarState>) ostream)
  "Serializes a message object of type '<CarState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slam_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ekf_twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarState>) istream)
  "Deserializes a message object of type '<CarState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slam_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ekf_twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarState>)))
  "Returns string type for a message object of type '<CarState>"
  "f110_msgs/CarState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarState)))
  "Returns string type for a message object of type 'CarState"
  "f110_msgs/CarState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarState>)))
  "Returns md5sum for a message object of type '<CarState>"
  "db3b80f78749884a20d33b38f0c43c77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarState)))
  "Returns md5sum for a message object of type 'CarState"
  "db3b80f78749884a20d33b38f0c43c77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarState>)))
  "Returns full string definition for message of type '<CarState>"
  (cl:format cl:nil "geometry_msgs/Pose  slam_pose~%geometry_msgs/Twist ekf_twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarState)))
  "Returns full string definition for message of type 'CarState"
  (cl:format cl:nil "geometry_msgs/Pose  slam_pose~%geometry_msgs/Twist ekf_twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slam_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ekf_twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarState>))
  "Converts a ROS message object to a list"
  (cl:list 'CarState
    (cl:cons ':slam_pose (slam_pose msg))
    (cl:cons ':ekf_twist (ekf_twist msg))
))
