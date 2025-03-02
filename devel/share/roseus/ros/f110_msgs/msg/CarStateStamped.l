;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::CarStateStamped)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'CarStateStamped (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::CARSTATESTAMPED")
  (make-package "F110_MSGS::CARSTATESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude CarStateStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass f110_msgs::CarStateStamped
  :super ros::object
  :slots (_header _state ))

(defmethod f110_msgs::CarStateStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance f110_msgs::CarState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; f110_msgs/CarState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; f110_msgs/CarState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; f110_msgs/CarState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get f110_msgs::CarStateStamped :md5sum-) "bd673c15842396b7ea0972d6080e327c")
(setf (get f110_msgs::CarStateStamped :datatype-) "f110_msgs/CarStateStamped")
(setf (get f110_msgs::CarStateStamped :definition-)
      "std_msgs/Header  header
CarState state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: f110_msgs/CarState
geometry_msgs/Pose  slam_pose
geometry_msgs/Twist ekf_twist

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :f110_msgs/CarStateStamped "bd673c15842396b7ea0972d6080e327c")


