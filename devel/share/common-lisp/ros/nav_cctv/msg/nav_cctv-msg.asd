
(cl:in-package :asdf)

(defsystem "nav_cctv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MultiPoint" :depends-on ("_package_MultiPoint"))
    (:file "_package_MultiPoint" :depends-on ("_package"))
  ))