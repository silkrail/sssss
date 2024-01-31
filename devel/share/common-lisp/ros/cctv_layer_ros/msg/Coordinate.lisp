; Auto-generated. Do not edit!


(cl:in-package cctv_layer_ros-msg)


;//! \htmlinclude Coordinate.msg.html

(cl:defclass <Coordinate> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Coordinate (<Coordinate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coordinate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coordinate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cctv_layer_ros-msg:<Coordinate> is deprecated: use cctv_layer_ros-msg:Coordinate instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Coordinate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cctv_layer_ros-msg:x-val is deprecated.  Use cctv_layer_ros-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Coordinate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cctv_layer_ros-msg:y-val is deprecated.  Use cctv_layer_ros-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coordinate>) ostream)
  "Serializes a message object of type '<Coordinate>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coordinate>) istream)
  "Deserializes a message object of type '<Coordinate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coordinate>)))
  "Returns string type for a message object of type '<Coordinate>"
  "cctv_layer_ros/Coordinate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coordinate)))
  "Returns string type for a message object of type 'Coordinate"
  "cctv_layer_ros/Coordinate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coordinate>)))
  "Returns md5sum for a message object of type '<Coordinate>"
  "6d78a6b8c9650c754bf0432d3d1707c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coordinate)))
  "Returns md5sum for a message object of type 'Coordinate"
  "6d78a6b8c9650c754bf0432d3d1707c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coordinate>)))
  "Returns full string definition for message of type '<Coordinate>"
  (cl:format cl:nil "int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coordinate)))
  "Returns full string definition for message of type 'Coordinate"
  (cl:format cl:nil "int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coordinate>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coordinate>))
  "Converts a ROS message object to a list"
  (cl:list 'Coordinate
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
