;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::GapData)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'GapData (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::GAPDATA")
  (make-package "F110_MSGS::GAPDATA"))

(in-package "ROS")
;;//! \htmlinclude GapData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass f110_msgs::GapData
  :super ros::object
  :slots (_header _gap_diff _vs_diff _gap_int ))

(defmethod f110_msgs::GapData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gap_diff __gap_diff) 0.0)
    ((:vs_diff __vs_diff) 0.0)
    ((:gap_int __gap_int) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gap_diff (float __gap_diff))
   (setq _vs_diff (float __vs_diff))
   (setq _gap_int (float __gap_int))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gap_diff
   (&optional __gap_diff)
   (if __gap_diff (setq _gap_diff __gap_diff)) _gap_diff)
  (:vs_diff
   (&optional __vs_diff)
   (if __vs_diff (setq _vs_diff __vs_diff)) _vs_diff)
  (:gap_int
   (&optional __gap_int)
   (if __gap_int (setq _gap_int __gap_int)) _gap_int)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _gap_diff
    8
    ;; float64 _vs_diff
    8
    ;; float64 _gap_int
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _gap_diff
       (sys::poke _gap_diff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vs_diff
       (sys::poke _vs_diff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gap_int
       (sys::poke _gap_int (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _gap_diff
     (setq _gap_diff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vs_diff
     (setq _vs_diff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gap_int
     (setq _gap_int (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get f110_msgs::GapData :md5sum-) "b407209058e30969cf7468c302c926f1")
(setf (get f110_msgs::GapData :datatype-) "f110_msgs/GapData")
(setf (get f110_msgs::GapData :definition-)
      "std_msgs/Header header

float64 gap_diff
float64 vs_diff
float64 gap_int 
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



(provide :f110_msgs/GapData "b407209058e30969cf7468c302c926f1")


