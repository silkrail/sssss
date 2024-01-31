; Auto-generated. Do not edit!


(cl:in-package nav_cctv-msg)


;//! \htmlinclude MultiPoint.msg.html

(cl:defclass <MultiPoint> (roslisp-msg-protocol:ros-message)
  ((msg_seq
    :reader msg_seq
    :initarg :msg_seq
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MultiPoint (<MultiPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_cctv-msg:<MultiPoint> is deprecated: use nav_cctv-msg:MultiPoint instead.")))

(cl:ensure-generic-function 'msg_seq-val :lambda-list '(m))
(cl:defmethod msg_seq-val ((m <MultiPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_cctv-msg:msg_seq-val is deprecated.  Use nav_cctv-msg:msg_seq instead.")
  (msg_seq m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MultiPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_cctv-msg:x-val is deprecated.  Use nav_cctv-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MultiPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_cctv-msg:y-val is deprecated.  Use nav_cctv-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiPoint>) ostream)
  "Serializes a message object of type '<MultiPoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_seq)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'y))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiPoint>) istream)
  "Deserializes a message object of type '<MultiPoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_seq)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiPoint>)))
  "Returns string type for a message object of type '<MultiPoint>"
  "nav_cctv/MultiPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiPoint)))
  "Returns string type for a message object of type 'MultiPoint"
  "nav_cctv/MultiPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiPoint>)))
  "Returns md5sum for a message object of type '<MultiPoint>"
  "d7945ea15cd4a474c5cde09582772132")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiPoint)))
  "Returns md5sum for a message object of type 'MultiPoint"
  "d7945ea15cd4a474c5cde09582772132")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiPoint>)))
  "Returns full string definition for message of type '<MultiPoint>"
  (cl:format cl:nil "uint16 msg_seq~%int16[] x~%int16[] y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiPoint)))
  "Returns full string definition for message of type 'MultiPoint"
  (cl:format cl:nil "uint16 msg_seq~%int16[] x~%int16[] y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiPoint>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiPoint
    (cl:cons ':msg_seq (msg_seq msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
