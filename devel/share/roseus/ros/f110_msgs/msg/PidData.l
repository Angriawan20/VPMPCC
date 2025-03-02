;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::PidData)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'PidData (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::PIDDATA")
  (make-package "F110_MSGS::PIDDATA"))

(in-package "ROS")
;;//! \htmlinclude PidData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass f110_msgs::PidData
  :super ros::object
  :slots (_header _should _actual _error _d_value _i_value _input ))

(defmethod f110_msgs::PidData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:should __should) 0.0)
    ((:actual __actual) 0.0)
    ((:error __error) 0.0)
    ((:d_value __d_value) 0.0)
    ((:i_value __i_value) 0.0)
    ((:input __input) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _should (float __should))
   (setq _actual (float __actual))
   (setq _error (float __error))
   (setq _d_value (float __d_value))
   (setq _i_value (float __i_value))
   (setq _input (float __input))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:should
   (&optional __should)
   (if __should (setq _should __should)) _should)
  (:actual
   (&optional __actual)
   (if __actual (setq _actual __actual)) _actual)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:d_value
   (&optional __d_value)
   (if __d_value (setq _d_value __d_value)) _d_value)
  (:i_value
   (&optional __i_value)
   (if __i_value (setq _i_value __i_value)) _i_value)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _should
    8
    ;; float64 _actual
    8
    ;; float64 _error
    8
    ;; float64 _d_value
    8
    ;; float64 _i_value
    8
    ;; float64 _input
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _should
       (sys::poke _should (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _actual
       (sys::poke _actual (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_value
       (sys::poke _d_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i_value
       (sys::poke _i_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _input
       (sys::poke _input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _should
     (setq _should (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _actual
     (setq _actual (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_value
     (setq _d_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i_value
     (setq _i_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _input
     (setq _input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get f110_msgs::PidData :md5sum-) "06660779b958c3109e9e68b5c0a7b096")
(setf (get f110_msgs::PidData :datatype-) "f110_msgs/PidData")
(setf (get f110_msgs::PidData :definition-)
      "std_msgs/Header header

float64 should
float64 actual
float64 error
float64 d_value
float64 i_value
float64 input
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



(provide :f110_msgs/PidData "06660779b958c3109e9e68b5c0a7b096")


