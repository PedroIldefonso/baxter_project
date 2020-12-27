
(cl:in-package :asdf)

(defsystem "tfpose_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :tfpose_ros-msg
)
  :components ((:file "_package")
    (:file "GetPersons" :depends-on ("_package_GetPersons"))
    (:file "_package_GetPersons" :depends-on ("_package"))
  ))