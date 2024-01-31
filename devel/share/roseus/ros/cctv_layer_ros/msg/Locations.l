;; Auto-generated. Do not edit!


(when (boundp 'cctv_layer_ros::Locations)
  (if (not (find-package "CCTV_LAYER_ROS"))
    (make-package "CCTV_LAYER_ROS"))
  (shadow 'Locations (find-package "CCTV_LAYER_ROS")))
(unless (find-package "CCTV_LAYER_ROS::LOCATIONS")
  (make-package "CCTV_LAYER_ROS::LOCATIONS"))

(in-package "ROS")
;;//! \htmlinclude Locations.msg.html


(defclass cctv_layer_ros::Locations
  :super ros::object
  :slots (_msg_seq _location ))

(defmethod cctv_layer_ros::Locations
  (:init
   (&key
    ((:msg_seq __msg_seq) 0)
    ((:location __location) ())
    )
   (send-super :init)
   (setq _msg_seq (round __msg_seq))
   (setq _location __location)
   self)
  (:msg_seq
   (&optional __msg_seq)
   (if __msg_seq (setq _msg_seq __msg_seq)) _msg_seq)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; uint16 _msg_seq
    2
    ;; cctv_layer_ros/Coordinate[] _location
    (apply #'+ (send-all _location :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _msg_seq
       (write-word _msg_seq s)
     ;; cctv_layer_ros/Coordinate[] _location
     (write-long (length _location) s)
     (dolist (elem _location)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _msg_seq
     (setq _msg_seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; cctv_layer_ros/Coordinate[] _location
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location (let (r) (dotimes (i n) (push (instance cctv_layer_ros::Coordinate :init) r)) r))
     (dolist (elem- _location)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cctv_layer_ros::Locations :md5sum-) "d39aba7ca00bf507fa36e8be0212b2bd")
(setf (get cctv_layer_ros::Locations :datatype-) "cctv_layer_ros/Locations")
(setf (get cctv_layer_ros::Locations :definition-)
      "uint16 msg_seq
Coordinate[] location

================================================================================
MSG: cctv_layer_ros/Coordinate
int16 x
int16 y

")



(provide :cctv_layer_ros/Locations "d39aba7ca00bf507fa36e8be0212b2bd")


