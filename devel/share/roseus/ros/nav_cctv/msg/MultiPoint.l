;; Auto-generated. Do not edit!


(when (boundp 'nav_cctv::MultiPoint)
  (if (not (find-package "NAV_CCTV"))
    (make-package "NAV_CCTV"))
  (shadow 'MultiPoint (find-package "NAV_CCTV")))
(unless (find-package "NAV_CCTV::MULTIPOINT")
  (make-package "NAV_CCTV::MULTIPOINT"))

(in-package "ROS")
;;//! \htmlinclude MultiPoint.msg.html


(defclass nav_cctv::MultiPoint
  :super ros::object
  :slots (_msg_seq _x _y ))

(defmethod nav_cctv::MultiPoint
  (:init
   (&key
    ((:msg_seq __msg_seq) 0)
    ((:x __x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _msg_seq (round __msg_seq))
   (setq _x __x)
   (setq _y __y)
   self)
  (:msg_seq
   (&optional __msg_seq)
   (if __msg_seq (setq _msg_seq __msg_seq)) _msg_seq)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint16 _msg_seq
    2
    ;; int16[] _x
    (* 2    (length _x)) 4
    ;; int16[] _y
    (* 2    (length _y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _msg_seq
       (write-word _msg_seq s)
     ;; int16[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (write-word (elt _x i) s)
       )
     ;; int16[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (write-word (elt _y i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _msg_seq
     (setq _msg_seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get nav_cctv::MultiPoint :md5sum-) "d7945ea15cd4a474c5cde09582772132")
(setf (get nav_cctv::MultiPoint :datatype-) "nav_cctv/MultiPoint")
(setf (get nav_cctv::MultiPoint :definition-)
      "uint16 msg_seq
int16[] x
int16[] y
")



(provide :nav_cctv/MultiPoint "d7945ea15cd4a474c5cde09582772132")


