;; Auto-generated. Do not edit!


(when (boundp 'tfpose_ros::Person)
  (if (not (find-package "TFPOSE_ROS"))
    (make-package "TFPOSE_ROS"))
  (shadow 'Person (find-package "TFPOSE_ROS")))
(unless (find-package "TFPOSE_ROS::PERSON")
  (make-package "TFPOSE_ROS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass tfpose_ros::Person
  :super ros::object
  :slots (_body_part _person_id ))

(defmethod tfpose_ros::Person
  (:init
   (&key
    ((:body_part __body_part) (let (r) (dotimes (i 0) (push (instance tfpose_ros::BodyPartElm :init) r)) r))
    ((:person_id __person_id) 0)
    )
   (send-super :init)
   (setq _body_part __body_part)
   (setq _person_id (round __person_id))
   self)
  (:body_part
   (&rest __body_part)
   (if (keywordp (car __body_part))
       (send* _body_part __body_part)
     (progn
       (if __body_part (setq _body_part (car __body_part)))
       _body_part)))
  (:person_id
   (&optional __person_id)
   (if __person_id (setq _person_id __person_id)) _person_id)
  (:serialization-length
   ()
   (+
    ;; tfpose_ros/BodyPartElm[] _body_part
    (apply #'+ (send-all _body_part :serialization-length)) 4
    ;; uint32 _person_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tfpose_ros/BodyPartElm[] _body_part
     (write-long (length _body_part) s)
     (dolist (elem _body_part)
       (send elem :serialize s)
       )
     ;; uint32 _person_id
       (write-long _person_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tfpose_ros/BodyPartElm[] _body_part
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_part (let (r) (dotimes (i n) (push (instance tfpose_ros::BodyPartElm :init) r)) r))
     (dolist (elem- _body_part)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _person_id
     (setq _person_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tfpose_ros::Person :md5sum-) "379a7ed9a6f5d7f9d6691ecb0d4740f6")
(setf (get tfpose_ros::Person :datatype-) "tfpose_ros/Person")
(setf (get tfpose_ros::Person :definition-)
      "BodyPartElm[] body_part
uint32 person_id
================================================================================
MSG: tfpose_ros/BodyPartElm
uint32 part_id
float32 x
float32 y
float32 confidence
")



(provide :tfpose_ros/Person "379a7ed9a6f5d7f9d6691ecb0d4740f6")


