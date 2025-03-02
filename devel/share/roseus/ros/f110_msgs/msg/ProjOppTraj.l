;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::ProjOppTraj)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'ProjOppTraj (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::PROJOPPTRAJ")
  (make-package "F110_MSGS::PROJOPPTRAJ"))

(in-package "ROS")
;;//! \htmlinclude ProjOppTraj.msg.html


(defclass f110_msgs::ProjOppTraj
  :super ros::object
  :slots (_lapcount _nrofpoints _opp_is_on_trajectory _detections ))

(defmethod f110_msgs::ProjOppTraj
  (:init
   (&key
    ((:lapcount __lapcount) 0.0)
    ((:nrofpoints __nrofpoints) 0.0)
    ((:opp_is_on_trajectory __opp_is_on_trajectory) nil)
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _lapcount (float __lapcount))
   (setq _nrofpoints (float __nrofpoints))
   (setq _opp_is_on_trajectory __opp_is_on_trajectory)
   (setq _detections __detections)
   self)
  (:lapcount
   (&optional __lapcount)
   (if __lapcount (setq _lapcount __lapcount)) _lapcount)
  (:nrofpoints
   (&optional __nrofpoints)
   (if __nrofpoints (setq _nrofpoints __nrofpoints)) _nrofpoints)
  (:opp_is_on_trajectory
   (&optional (__opp_is_on_trajectory :null))
   (if (not (eq __opp_is_on_trajectory :null)) (setq _opp_is_on_trajectory __opp_is_on_trajectory)) _opp_is_on_trajectory)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; float64 _lapcount
    8
    ;; float64 _nrofpoints
    8
    ;; bool _opp_is_on_trajectory
    1
    ;; f110_msgs/ProjOppPoint[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lapcount
       (sys::poke _lapcount (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _nrofpoints
       (sys::poke _nrofpoints (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _opp_is_on_trajectory
       (if _opp_is_on_trajectory (write-byte -1 s) (write-byte 0 s))
     ;; f110_msgs/ProjOppPoint[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lapcount
     (setq _lapcount (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _nrofpoints
     (setq _nrofpoints (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _opp_is_on_trajectory
     (setq _opp_is_on_trajectory (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; f110_msgs/ProjOppPoint[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance f110_msgs::ProjOppPoint :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get f110_msgs::ProjOppTraj :md5sum-) "499738ff330d861f27f97c2965929bae")
(setf (get f110_msgs::ProjOppTraj :datatype-) "f110_msgs/ProjOppTraj")
(setf (get f110_msgs::ProjOppTraj :definition-)
      "float64 lapcount
float64 nrofpoints
bool opp_is_on_trajectory
ProjOppPoint[] detections
================================================================================
MSG: f110_msgs/ProjOppPoint
#Velocities are projected onto ego race line

float64 s
float64 d                       
float64 vs
float64 vd
bool is_static
bool is_visible
float64 time
float64 s_var
float64 d_var
float64 vs_var
float64 vd_var
")



(provide :f110_msgs/ProjOppTraj "499738ff330d861f27f97c2965929bae")


