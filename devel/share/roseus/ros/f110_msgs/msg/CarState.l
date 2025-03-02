;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::CarState)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'CarState (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::CARSTATE")
  (make-package "F110_MSGS::CARSTATE"))

(in-package "ROS")
;;//! \htmlinclude CarState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass f110_msgs::CarState
  :super ros::object
  :slots (_slam_pose _ekf_twist ))

(defmethod f110_msgs::CarState
  (:init
   (&key
    ((:slam_pose __slam_pose) (instance geometry_msgs::Pose :init))
    ((:ekf_twist __ekf_twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _slam_pose __slam_pose)
   (setq _ekf_twist __ekf_twist)
   self)
  (:slam_pose
   (&rest __slam_pose)
   (if (keywordp (car __slam_pose))
       (send* _slam_pose __slam_pose)
     (progn
       (if __slam_pose (setq _slam_pose (car __slam_pose)))
       _slam_pose)))
  (:ekf_twist
   (&rest __ekf_twist)
   (if (keywordp (car __ekf_twist))
       (send* _ekf_twist __ekf_twist)
     (progn
       (if __ekf_twist (setq _ekf_twist (car __ekf_twist)))
       _ekf_twist)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _slam_pose
    (send _slam_pose :serialization-length)
    ;; geometry_msgs/Twist _ekf_twist
    (send _ekf_twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _slam_pose
       (send _slam_pose :serialize s)
     ;; geometry_msgs/Twist _ekf_twist
       (send _ekf_twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _slam_pose
     (send _slam_pose :deserialize buf ptr-) (incf ptr- (send _slam_pose :serialization-length))
   ;; geometry_msgs/Twist _ekf_twist
     (send _ekf_twist :deserialize buf ptr-) (incf ptr- (send _ekf_twist :serialization-length))
   ;;
   self)
  )

(setf (get f110_msgs::CarState :md5sum-) "db3b80f78749884a20d33b38f0c43c77")
(setf (get f110_msgs::CarState :datatype-) "f110_msgs/CarState")
(setf (get f110_msgs::CarState :definition-)
      "geometry_msgs/Pose  slam_pose
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



(provide :f110_msgs/CarState "db3b80f78749884a20d33b38f0c43c77")


