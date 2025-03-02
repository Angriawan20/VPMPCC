;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::OpponentTrajectory)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'OpponentTrajectory (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::OPPONENTTRAJECTORY")
  (make-package "F110_MSGS::OPPONENTTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude OpponentTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass f110_msgs::OpponentTrajectory
  :super ros::object
  :slots (_header _lap_count _opp_is_on_trajectory _oppwpnts ))

(defmethod f110_msgs::OpponentTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lap_count __lap_count) 0.0)
    ((:opp_is_on_trajectory __opp_is_on_trajectory) nil)
    ((:oppwpnts __oppwpnts) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _lap_count (float __lap_count))
   (setq _opp_is_on_trajectory __opp_is_on_trajectory)
   (setq _oppwpnts __oppwpnts)
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
  (:opp_is_on_trajectory
   (&optional (__opp_is_on_trajectory :null))
   (if (not (eq __opp_is_on_trajectory :null)) (setq _opp_is_on_trajectory __opp_is_on_trajectory)) _opp_is_on_trajectory)
  (:oppwpnts
   (&rest __oppwpnts)
   (if (keywordp (car __oppwpnts))
       (send* _oppwpnts __oppwpnts)
     (progn
       (if __oppwpnts (setq _oppwpnts (car __oppwpnts)))
       _oppwpnts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _lap_count
    8
    ;; bool _opp_is_on_trajectory
    1
    ;; f110_msgs/OppWpnt[] _oppwpnts
    (apply #'+ (send-all _oppwpnts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _lap_count
       (sys::poke _lap_count (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _opp_is_on_trajectory
       (if _opp_is_on_trajectory (write-byte -1 s) (write-byte 0 s))
     ;; f110_msgs/OppWpnt[] _oppwpnts
     (write-long (length _oppwpnts) s)
     (dolist (elem _oppwpnts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _lap_count
     (setq _lap_count (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _opp_is_on_trajectory
     (setq _opp_is_on_trajectory (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; f110_msgs/OppWpnt[] _oppwpnts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _oppwpnts (let (r) (dotimes (i n) (push (instance f110_msgs::OppWpnt :init) r)) r))
     (dolist (elem- _oppwpnts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get f110_msgs::OpponentTrajectory :md5sum-) "fe4d653bec85c82c41a017b9bdc2a6f1")
(setf (get f110_msgs::OpponentTrajectory :datatype-) "f110_msgs/OpponentTrajectory")
(setf (get f110_msgs::OpponentTrajectory :definition-)
      "std_msgs/Header header
float64 lap_count
bool opp_is_on_trajectory
OppWpnt[] oppwpnts
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
MSG: f110_msgs/OppWpnt
int32 id

# frenet coordinates
float64 s_m
float64 d_m

# map coordinates
float64 x_m
float64 y_m

# track information
float64 proj_vs_mps
float64 vd_mps

#variance  
float64 d_var
float64 vs_var


")



(provide :f110_msgs/OpponentTrajectory "fe4d653bec85c82c41a017b9bdc2a6f1")


