;; Auto-generated. Do not edit!


(when (boundp 'f110_msgs::OppWpnt)
  (if (not (find-package "F110_MSGS"))
    (make-package "F110_MSGS"))
  (shadow 'OppWpnt (find-package "F110_MSGS")))
(unless (find-package "F110_MSGS::OPPWPNT")
  (make-package "F110_MSGS::OPPWPNT"))

(in-package "ROS")
;;//! \htmlinclude OppWpnt.msg.html


(defclass f110_msgs::OppWpnt
  :super ros::object
  :slots (_id _s_m _d_m _x_m _y_m _proj_vs_mps _vd_mps _d_var _vs_var ))

(defmethod f110_msgs::OppWpnt
  (:init
   (&key
    ((:id __id) 0)
    ((:s_m __s_m) 0.0)
    ((:d_m __d_m) 0.0)
    ((:x_m __x_m) 0.0)
    ((:y_m __y_m) 0.0)
    ((:proj_vs_mps __proj_vs_mps) 0.0)
    ((:vd_mps __vd_mps) 0.0)
    ((:d_var __d_var) 0.0)
    ((:vs_var __vs_var) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _s_m (float __s_m))
   (setq _d_m (float __d_m))
   (setq _x_m (float __x_m))
   (setq _y_m (float __y_m))
   (setq _proj_vs_mps (float __proj_vs_mps))
   (setq _vd_mps (float __vd_mps))
   (setq _d_var (float __d_var))
   (setq _vs_var (float __vs_var))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:s_m
   (&optional __s_m)
   (if __s_m (setq _s_m __s_m)) _s_m)
  (:d_m
   (&optional __d_m)
   (if __d_m (setq _d_m __d_m)) _d_m)
  (:x_m
   (&optional __x_m)
   (if __x_m (setq _x_m __x_m)) _x_m)
  (:y_m
   (&optional __y_m)
   (if __y_m (setq _y_m __y_m)) _y_m)
  (:proj_vs_mps
   (&optional __proj_vs_mps)
   (if __proj_vs_mps (setq _proj_vs_mps __proj_vs_mps)) _proj_vs_mps)
  (:vd_mps
   (&optional __vd_mps)
   (if __vd_mps (setq _vd_mps __vd_mps)) _vd_mps)
  (:d_var
   (&optional __d_var)
   (if __d_var (setq _d_var __d_var)) _d_var)
  (:vs_var
   (&optional __vs_var)
   (if __vs_var (setq _vs_var __vs_var)) _vs_var)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64 _s_m
    8
    ;; float64 _d_m
    8
    ;; float64 _x_m
    8
    ;; float64 _y_m
    8
    ;; float64 _proj_vs_mps
    8
    ;; float64 _vd_mps
    8
    ;; float64 _d_var
    8
    ;; float64 _vs_var
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _s_m
       (sys::poke _s_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_m
       (sys::poke _d_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_m
       (sys::poke _x_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_m
       (sys::poke _y_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _proj_vs_mps
       (sys::poke _proj_vs_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vd_mps
       (sys::poke _vd_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_var
       (sys::poke _d_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vs_var
       (sys::poke _vs_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _s_m
     (setq _s_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_m
     (setq _d_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_m
     (setq _x_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_m
     (setq _y_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _proj_vs_mps
     (setq _proj_vs_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vd_mps
     (setq _vd_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_var
     (setq _d_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vs_var
     (setq _vs_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get f110_msgs::OppWpnt :md5sum-) "81351e4053edb61a279791df3b5554d5")
(setf (get f110_msgs::OppWpnt :datatype-) "f110_msgs/OppWpnt")
(setf (get f110_msgs::OppWpnt :definition-)
      "int32 id

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



(provide :f110_msgs/OppWpnt "81351e4053edb61a279791df3b5554d5")


