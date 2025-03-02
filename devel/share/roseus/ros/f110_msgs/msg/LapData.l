;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::LapData)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'LapData (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::LAPDATA")
  (make-package "F110_MSGS::LAPDATA"))

(in-package "ROS")
;;//! \htmlinclude LapData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass f110_msgs::LapData
  :super ros::object
  :slots (_header _lap_count _lap_time _average_lateral_error_to_global_waypoints _max_lateral_error_to_global_waypoints ))

(defmethod f110_msgs::LapData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lap_count __lap_count) 0)
    ((:lap_time __lap_time) 0.0)
    ((:average_lateral_error_to_global_waypoints __average_lateral_error_to_global_waypoints) 0.0)
    ((:max_lateral_error_to_global_waypoints __max_lateral_error_to_global_waypoints) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lap_count (round __lap_count))
   (setq _lap_time (float __lap_time))
   (setq _average_lateral_error_to_global_waypoints (float __average_lateral_error_to_global_waypoints))
   (setq _max_lateral_error_to_global_waypoints (float __max_lateral_error_to_global_waypoints))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lap_count
   (&optional __lap_count)
   (if __lap_count (setq _lap_count __lap_count)) _lap_count)
  (:lap_time
   (&optional __lap_time)
   (if __lap_time (setq _lap_time __lap_time)) _lap_time)
  (:average_lateral_error_to_global_waypoints
   (&optional __average_lateral_error_to_global_waypoints)
   (if __average_lateral_error_to_global_waypoints (setq _average_lateral_error_to_global_waypoints __average_lateral_error_to_global_waypoints)) _average_lateral_error_to_global_waypoints)
  (:max_lateral_error_to_global_waypoints
   (&optional __max_lateral_error_to_global_waypoints)
   (if __max_lateral_error_to_global_waypoints (setq _max_lateral_error_to_global_waypoints __max_lateral_error_to_global_waypoints)) _max_lateral_error_to_global_waypoints)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _lap_count
    4
    ;; float64 _lap_time
    8
    ;; float64 _average_lateral_error_to_global_waypoints
    8
    ;; float64 _max_lateral_error_to_global_waypoints
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _lap_count
       (write-long _lap_count s)
     ;; float64 _lap_time
       (sys::poke _lap_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _average_lateral_error_to_global_waypoints
       (sys::poke _average_lateral_error_to_global_waypoints (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_lateral_error_to_global_waypoints
       (sys::poke _max_lateral_error_to_global_waypoints (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _lap_count
     (setq _lap_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _lap_time
     (setq _lap_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _average_lateral_error_to_global_waypoints
     (setq _average_lateral_error_to_global_waypoints (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_lateral_error_to_global_waypoints
     (setq _max_lateral_error_to_global_waypoints (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get f110_msgs::LapData :md5sum-) "5725d7beb0cea6dca3c2632d8748505b")
(setf (get f110_msgs::LapData :datatype-) "f110_msgs/LapData")
(setf (get f110_msgs::LapData :definition-)
      "std_msgs/Header header

int32 lap_count 
float64 lap_time
float64 average_lateral_error_to_global_waypoints
float64 max_lateral_error_to_global_waypoints
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

")



(provide :f110_msgs/LapData "5725d7beb0cea6dca3c2632d8748505b")


