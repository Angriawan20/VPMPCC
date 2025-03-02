;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::ProjOppPoint)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'ProjOppPoint (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::PROJOPPPOINT")
  (make-package "F110_MSGS::PROJOPPPOINT"))

(in-package "ROS")
;;//! \htmlinclude ProjOppPoint.msg.html


(defclass f110_msgs::ProjOppPoint
  :super ros::object
  :slots (_s _d _vs _vd _is_static _is_visible _time _s_var _d_var _vs_var _vd_var ))

(defmethod f110_msgs::ProjOppPoint
  (:init
   (&key
    ((:s __s) 0.0)
    ((:d __d) 0.0)
    ((:vs __vs) 0.0)
    ((:vd __vd) 0.0)
    ((:is_static __is_static) nil)
    ((:is_visible __is_visible) nil)
    ((:time __time) 0.0)
    ((:s_var __s_var) 0.0)
    ((:d_var __d_var) 0.0)
    ((:vs_var __vs_var) 0.0)
    ((:vd_var __vd_var) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _d (float __d))
   (setq _vs (float __vs))
   (setq _vd (float __vd))
   (setq _is_static __is_static)
   (setq _is_visible __is_visible)
   (setq _time (float __time))
   (setq _s_var (float __s_var))
   (setq _d_var (float __d_var))
   (setq _vs_var (float __vs_var))
   (setq _vd_var (float __vd_var))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:vs
   (&optional __vs)
   (if __vs (setq _vs __vs)) _vs)
  (:vd
   (&optional __vd)
   (if __vd (setq _vd __vd)) _vd)
  (:is_static
   (&optional (__is_static :null))
   (if (not (eq __is_static :null)) (setq _is_static __is_static)) _is_static)
  (:is_visible
   (&optional (__is_visible :null))
   (if (not (eq __is_visible :null)) (setq _is_visible __is_visible)) _is_visible)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:s_var
   (&optional __s_var)
   (if __s_var (setq _s_var __s_var)) _s_var)
  (:d_var
   (&optional __d_var)
   (if __d_var (setq _d_var __d_var)) _d_var)
  (:vs_var
   (&optional __vs_var)
   (if __vs_var (setq _vs_var __vs_var)) _vs_var)
  (:vd_var
   (&optional __vd_var)
   (if __vd_var (setq _vd_var __vd_var)) _vd_var)
  (:serialization-length
   ()
   (+
    ;; float64 _s
    8
    ;; float64 _d
    8
    ;; float64 _vs
    8
    ;; float64 _vd
    8
    ;; bool _is_static
    1
    ;; bool _is_visible
    1
    ;; float64 _time
    8
    ;; float64 _s_var
    8
    ;; float64 _d_var
    8
    ;; float64 _vs_var
    8
    ;; float64 _vd_var
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vs
       (sys::poke _vs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vd
       (sys::poke _vd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_static
       (if _is_static (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_visible
       (if _is_visible (write-byte -1 s) (write-byte 0 s))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s_var
       (sys::poke _s_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_var
       (sys::poke _d_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vs_var
       (sys::poke _vs_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vd_var
       (sys::poke _vd_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vs
     (setq _vs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vd
     (setq _vd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_static
     (setq _is_static (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_visible
     (setq _is_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s_var
     (setq _s_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_var
     (setq _d_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vs_var
     (setq _vs_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vd_var
     (setq _vd_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get f110_msgs::ProjOppPoint :md5sum-) "eda6871c789332f821761fdc46c611e3")
(setf (get f110_msgs::ProjOppPoint :datatype-) "f110_msgs/ProjOppPoint")
(setf (get f110_msgs::ProjOppPoint :definition-)
      "#Velocities are projected onto ego race line

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



(provide :f110_msgs/ProjOppPoint "eda6871c789332f821761fdc46c611e3")


