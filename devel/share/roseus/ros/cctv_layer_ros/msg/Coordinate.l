;; Auto-generated. Do not edit!


(when (boundp 'cctv_layer_ros::Coordinate)
  (if (not (find-package "CCTV_LAYER_ROS"))
    (make-package "CCTV_LAYER_ROS"))
  (shadow 'Coordinate (find-package "CCTV_LAYER_ROS")))
(unless (find-package "CCTV_LAYER_ROS::COORDINATE")
  (make-package "CCTV_LAYER_ROS::COORDINATE"))

(in-package "ROS")
;;//! \htmlinclude Coordinate.msg.html


(defclass cctv_layer_ros::Coordinate
  :super ros::object
  :slots (_x _y ))

(defmethod cctv_layer_ros::Coordinate
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get cctv_layer_ros::Coordinate :md5sum-) "6d78a6b8c9650c754bf0432d3d1707c3")
(setf (get cctv_layer_ros::Coordinate :datatype-) "cctv_layer_ros/Coordinate")
(setf (get cctv_layer_ros::Coordinate :definition-)
      "int16 x
int16 y

")



(provide :cctv_layer_ros/Coordinate "6d78a6b8c9650c754bf0432d3d1707c3")


