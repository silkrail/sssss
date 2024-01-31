
(cl:in-package :asdf)

(defsystem "cctv_layer_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coordinate" :depends-on ("_package_Coordinate"))
    (:file "_package_Coordinate" :depends-on ("_package"))
    (:file "Locations" :depends-on ("_package_Locations"))
    (:file "_package_Locations" :depends-on ("_package"))
    (:file "MultiPoint" :depends-on ("_package_MultiPoint"))
    (:file "_package_MultiPoint" :depends-on ("_package"))
  ))