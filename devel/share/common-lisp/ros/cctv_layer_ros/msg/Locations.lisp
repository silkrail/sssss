; Auto-generated. Do not edit!


(cl:in-package cctv_layer_ros-msg)


;//! \htmlinclude Locations.msg.html

(cl:defclass <Locations> (roslisp-msg-protocol:ros-message)
  ((msg_seq
    :reader msg_seq
    :initarg :msg_seq
    :type cl:fixnum
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type (cl:vector cctv_layer_ros-msg:Coordinate)
   :initform (cl:make-array 0 :element-type 'cctv_layer_ros-msg:Coordinate :initial-element (cl:make-instance 'cctv_layer_ros-msg:Coordinate))))
)

(cl:defclass Locations (<Locations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Locations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Locations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cctv_layer_ros-msg:<Locations> is deprecated: use cctv_layer_ros-msg:Locations instead.")))

(cl:ensure-generic-function 'msg_seq-val :lambda-list '(m))
(cl:defmethod msg_seq-val ((m <Locations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cctv_layer_ros-msg:msg_seq-val is deprecated.  Use cctv_layer_ros-msg:msg_seq instead.")
  (msg_seq m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <Locations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cctv_layer_ros-msg:location-val is deprecated.  Use cctv_layer_ros-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Locations>) ostream)
  "Serializes a message object of type '<Locations>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_seq)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Locations>) istream)
  "Deserializes a message object of type '<Locations>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_seq)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'location) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'location)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cctv_layer_ros-msg:Coordinate))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Locations>)))
  "Returns string type for a message object of type '<Locations>"
  "cctv_layer_ros/Locations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Locations)))
  "Returns string type for a message object of type 'Locations"
  "cctv_layer_ros/Locations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Locations>)))
  "Returns md5sum for a message object of type '<Locations>"
  "d39aba7ca00bf507fa36e8be0212b2bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Locations)))
  "Returns md5sum for a message object of type 'Locations"
  "d39aba7ca00bf507fa36e8be0212b2bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Locations>)))
  "Returns full string definition for message of type '<Locations>"
  (cl:format cl:nil "uint16 msg_seq~%Coordinate[] location~%~%================================================================================~%MSG: cctv_layer_ros/Coordinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Locations)))
  "Returns full string definition for message of type 'Locations"
  (cl:format cl:nil "uint16 msg_seq~%Coordinate[] location~%~%================================================================================~%MSG: cctv_layer_ros/Coordinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Locations>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'location) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Locations>))
  "Converts a ROS message object to a list"
  (cl:list 'Locations
    (cl:cons ':msg_seq (msg_seq msg))
    (cl:cons ':location (location msg))
))
