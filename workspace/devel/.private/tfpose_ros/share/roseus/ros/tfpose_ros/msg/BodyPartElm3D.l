;; Auto-generated. Do not edit!


(when (boundp 'tfpose_ros::BodyPartElm3D)
  (if (not (find-package "TFPOSE_ROS"))
    (make-package "TFPOSE_ROS"))
  (shadow 'BodyPartElm3D (find-package "TFPOSE_ROS")))
(unless (find-package "TFPOSE_ROS::BODYPARTELM3D")
  (make-package "TFPOSE_ROS::BODYPARTELM3D"))

(in-package "ROS")
;;//! \htmlinclude BodyPartElm3D.msg.html


(defclass tfpose_ros::BodyPartElm3D
  :super ros::object
  :slots (_part_id _x _y _z _confidence ))

(defmethod tfpose_ros::BodyPartElm3D
  (:init
   (&key
    ((:part_id __part_id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _part_id (round __part_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _confidence (float __confidence))
   self)
  (:part_id
   (&optional __part_id)
   (if __part_id (setq _part_id __part_id)) _part_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; uint32 _part_id
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _part_id
       (write-long _part_id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _part_id
     (setq _part_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tfpose_ros::BodyPartElm3D :md5sum-) "eeee5595dc8784739be4dc17a4ca0b96")
(setf (get tfpose_ros::BodyPartElm3D :datatype-) "tfpose_ros/BodyPartElm3D")
(setf (get tfpose_ros::BodyPartElm3D :definition-)
      "uint32 part_id
float32 x
float32 y
float32 z
float32 confidence
")



(provide :tfpose_ros/BodyPartElm3D "eeee5595dc8784739be4dc17a4ca0b96")


