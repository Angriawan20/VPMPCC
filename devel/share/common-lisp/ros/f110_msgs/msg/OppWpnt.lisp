; Auto-generated. Do not edit!


(cl:in-package f110_msgs-msg)


;//! \htmlinclude OppWpnt.msg.html

(cl:defclass <OppWpnt> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (s_m
    :reader s_m
    :initarg :s_m
    :type cl:float
    :initform 0.0)
   (d_m
    :reader d_m
    :initarg :d_m
    :type cl:float
    :initform 0.0)
   (x_m
    :reader x_m
    :initarg :x_m
    :type cl:float
    :initform 0.0)
   (y_m
    :reader y_m
    :initarg :y_m
    :type cl:float
    :initform 0.0)
   (proj_vs_mps
    :reader proj_vs_mps
    :initarg :proj_vs_mps
    :type cl:float
    :initform 0.0)
   (vd_mps
    :reader vd_mps
    :initarg :vd_mps
    :type cl:float
    :initform 0.0)
   (d_var
    :reader d_var
    :initarg :d_var
    :type cl:float
    :initform 0.0)
   (vs_var
    :reader vs_var
    :initarg :vs_var
    :type cl:float
    :initform 0.0))
)

(cl:defclass OppWpnt (<OppWpnt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OppWpnt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OppWpnt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f110_msgs-msg:<OppWpnt> is deprecated: use f110_msgs-msg:OppWpnt instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:id-val is deprecated.  Use f110_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 's_m-val :lambda-list '(m))
(cl:defmethod s_m-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:s_m-val is deprecated.  Use f110_msgs-msg:s_m instead.")
  (s_m m))

(cl:ensure-generic-function 'd_m-val :lambda-list '(m))
(cl:defmethod d_m-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:d_m-val is deprecated.  Use f110_msgs-msg:d_m instead.")
  (d_m m))

(cl:ensure-generic-function 'x_m-val :lambda-list '(m))
(cl:defmethod x_m-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:x_m-val is deprecated.  Use f110_msgs-msg:x_m instead.")
  (x_m m))

(cl:ensure-generic-function 'y_m-val :lambda-list '(m))
(cl:defmethod y_m-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:y_m-val is deprecated.  Use f110_msgs-msg:y_m instead.")
  (y_m m))

(cl:ensure-generic-function 'proj_vs_mps-val :lambda-list '(m))
(cl:defmethod proj_vs_mps-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:proj_vs_mps-val is deprecated.  Use f110_msgs-msg:proj_vs_mps instead.")
  (proj_vs_mps m))

(cl:ensure-generic-function 'vd_mps-val :lambda-list '(m))
(cl:defmethod vd_mps-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:vd_mps-val is deprecated.  Use f110_msgs-msg:vd_mps instead.")
  (vd_mps m))

(cl:ensure-generic-function 'd_var-val :lambda-list '(m))
(cl:defmethod d_var-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:d_var-val is deprecated.  Use f110_msgs-msg:d_var instead.")
  (d_var m))

(cl:ensure-generic-function 'vs_var-val :lambda-list '(m))
(cl:defmethod vs_var-val ((m <OppWpnt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:vs_var-val is deprecated.  Use f110_msgs-msg:vs_var instead.")
  (vs_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OppWpnt>) ostream)
  "Serializes a message object of type '<OppWpnt>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'proj_vs_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vd_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vs_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OppWpnt>) istream)
  "Deserializes a message object of type '<OppWpnt>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'proj_vs_mps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vd_mps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_var) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vs_var) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OppWpnt>)))
  "Returns string type for a message object of type '<OppWpnt>"
  "f110_msgs/OppWpnt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OppWpnt)))
  "Returns string type for a message object of type 'OppWpnt"
  "f110_msgs/OppWpnt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OppWpnt>)))
  "Returns md5sum for a message object of type '<OppWpnt>"
  "81351e4053edb61a279791df3b5554d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OppWpnt)))
  "Returns md5sum for a message object of type 'OppWpnt"
  "81351e4053edb61a279791df3b5554d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OppWpnt>)))
  "Returns full string definition for message of type '<OppWpnt>"
  (cl:format cl:nil "int32 id~%~%# frenet coordinates~%float64 s_m~%float64 d_m~%~%# map coordinates~%float64 x_m~%float64 y_m~%~%# track information~%float64 proj_vs_mps~%float64 vd_mps~%~%#variance  ~%float64 d_var~%float64 vs_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OppWpnt)))
  "Returns full string definition for message of type 'OppWpnt"
  (cl:format cl:nil "int32 id~%~%# frenet coordinates~%float64 s_m~%float64 d_m~%~%# map coordinates~%float64 x_m~%float64 y_m~%~%# track information~%float64 proj_vs_mps~%float64 vd_mps~%~%#variance  ~%float64 d_var~%float64 vs_var~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OppWpnt>))
  (cl:+ 0
     4
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OppWpnt>))
  "Converts a ROS message object to a list"
  (cl:list 'OppWpnt
    (cl:cons ':id (id msg))
    (cl:cons ':s_m (s_m msg))
    (cl:cons ':d_m (d_m msg))
    (cl:cons ':x_m (x_m msg))
    (cl:cons ':y_m (y_m msg))
    (cl:cons ':proj_vs_mps (proj_vs_mps msg))
    (cl:cons ':vd_mps (vd_mps msg))
    (cl:cons ':d_var (d_var msg))
    (cl:cons ':vs_var (vs_var msg))
))
