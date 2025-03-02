; Auto-generated. Do not edit!


(cl:in-package f110_msgs-msg)


;//! \htmlinclude ProjOppPoint.msg.html

(cl:defclass <ProjOppPoint> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0)
   (vs
    :reader vs
    :initarg :vs
    :type cl:float
    :initform 0.0)
   (vd
    :reader vd
    :initarg :vd
    :type cl:float
    :initform 0.0)
   (is_static
    :reader is_static
    :initarg :is_static
    :type cl:boolean
    :initform cl:nil)
   (is_visible
    :reader is_visible
    :initarg :is_visible
    :type cl:boolean
    :initform cl:nil)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (s_var
    :reader s_var
    :initarg :s_var
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
    :initform 0.0)
   (vd_var
    :reader vd_var
    :initarg :vd_var
    :type cl:float
    :initform 0.0))
)

(cl:defclass ProjOppPoint (<ProjOppPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjOppPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjOppPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name f110_msgs-msg:<ProjOppPoint> is deprecated: use f110_msgs-msg:ProjOppPoint instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:s-val is deprecated.  Use f110_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:d-val is deprecated.  Use f110_msgs-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'vs-val :lambda-list '(m))
(cl:defmethod vs-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:vs-val is deprecated.  Use f110_msgs-msg:vs instead.")
  (vs m))

(cl:ensure-generic-function 'vd-val :lambda-list '(m))
(cl:defmethod vd-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:vd-val is deprecated.  Use f110_msgs-msg:vd instead.")
  (vd m))

(cl:ensure-generic-function 'is_static-val :lambda-list '(m))
(cl:defmethod is_static-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:is_static-val is deprecated.  Use f110_msgs-msg:is_static instead.")
  (is_static m))

(cl:ensure-generic-function 'is_visible-val :lambda-list '(m))
(cl:defmethod is_visible-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:is_visible-val is deprecated.  Use f110_msgs-msg:is_visible instead.")
  (is_visible m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:time-val is deprecated.  Use f110_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 's_var-val :lambda-list '(m))
(cl:defmethod s_var-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:s_var-val is deprecated.  Use f110_msgs-msg:s_var instead.")
  (s_var m))

(cl:ensure-generic-function 'd_var-val :lambda-list '(m))
(cl:defmethod d_var-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:d_var-val is deprecated.  Use f110_msgs-msg:d_var instead.")
  (d_var m))

(cl:ensure-generic-function 'vs_var-val :lambda-list '(m))
(cl:defmethod vs_var-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:vs_var-val is deprecated.  Use f110_msgs-msg:vs_var instead.")
  (vs_var m))

(cl:ensure-generic-function 'vd_var-val :lambda-list '(m))
(cl:defmethod vd_var-val ((m <ProjOppPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader f110_msgs-msg:vd_var-val is deprecated.  Use f110_msgs-msg:vd_var instead.")
  (vd_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjOppPoint>) ostream)
  "Serializes a message object of type '<ProjOppPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_static) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_visible) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's_var))))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vd_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjOppPoint>) istream)
  "Deserializes a message object of type '<ProjOppPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_static) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_var) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vd_var) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjOppPoint>)))
  "Returns string type for a message object of type '<ProjOppPoint>"
  "f110_msgs/ProjOppPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjOppPoint)))
  "Returns string type for a message object of type 'ProjOppPoint"
  "f110_msgs/ProjOppPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjOppPoint>)))
  "Returns md5sum for a message object of type '<ProjOppPoint>"
  "eda6871c789332f821761fdc46c611e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjOppPoint)))
  "Returns md5sum for a message object of type 'ProjOppPoint"
  "eda6871c789332f821761fdc46c611e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjOppPoint>)))
  "Returns full string definition for message of type '<ProjOppPoint>"
  (cl:format cl:nil "#Velocities are projected onto ego race line~%~%float64 s~%float64 d                       ~%float64 vs~%float64 vd~%bool is_static~%bool is_visible~%float64 time~%float64 s_var~%float64 d_var~%float64 vs_var~%float64 vd_var~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjOppPoint)))
  "Returns full string definition for message of type 'ProjOppPoint"
  (cl:format cl:nil "#Velocities are projected onto ego race line~%~%float64 s~%float64 d                       ~%float64 vs~%float64 vd~%bool is_static~%bool is_visible~%float64 time~%float64 s_var~%float64 d_var~%float64 vs_var~%float64 vd_var~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjOppPoint>))
  (cl:+ 0
     8
     8
     8
     8
     1
     1
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjOppPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjOppPoint
    (cl:cons ':s (s msg))
    (cl:cons ':d (d msg))
    (cl:cons ':vs (vs msg))
    (cl:cons ':vd (vd msg))
    (cl:cons ':is_static (is_static msg))
    (cl:cons ':is_visible (is_visible msg))
    (cl:cons ':time (time msg))
    (cl:cons ':s_var (s_var msg))
    (cl:cons ':d_var (d_var msg))
    (cl:cons ':vs_var (vs_var msg))
    (cl:cons ':vd_var (vd_var msg))
))
