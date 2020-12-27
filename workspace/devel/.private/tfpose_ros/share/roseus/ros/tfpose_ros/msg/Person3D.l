;; Auto-generated. Do not edit!


(when (boundp 'tfpose_ros::Person3D)
  (if (not (find-package "TFPOSE_ROS"))
    (make-package "TFPOSE_ROS"))
  (shadow 'Person3D (find-package "TFPOSE_ROS")))
(unless (find-package "TFPOSE_ROS::PERSON3D")
  (make-package "TFPOSE_ROS::PERSON3D"))

(in-package "ROS")
;;//! \htmlinclude Person3D.msg.html


(defclass tfpose_ros::Person3D
  :super ros::object
  :slots (_person_id _nose _neck _right_shoulder _right_elbow _right_wrist _left_shoulder _left_elbow _left_wrist _right_hip _right_knee _right_ankle _left_hip _left_knee _left_ankle _right_eye _left_eye _right_ear _left_ear ))

(defmethod tfpose_ros::Person3D
  (:init
   (&key
    ((:person_id __person_id) 0)
    ((:nose __nose) (instance tfpose_ros::BodyPartElm3D :init))
    ((:neck __neck) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_shoulder __right_shoulder) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_elbow __right_elbow) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_wrist __right_wrist) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_shoulder __left_shoulder) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_elbow __left_elbow) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_wrist __left_wrist) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_hip __right_hip) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_knee __right_knee) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_ankle __right_ankle) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_hip __left_hip) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_knee __left_knee) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_ankle __left_ankle) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_eye __right_eye) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_eye __left_eye) (instance tfpose_ros::BodyPartElm3D :init))
    ((:right_ear __right_ear) (instance tfpose_ros::BodyPartElm3D :init))
    ((:left_ear __left_ear) (instance tfpose_ros::BodyPartElm3D :init))
    )
   (send-super :init)
   (setq _person_id (round __person_id))
   (setq _nose __nose)
   (setq _neck __neck)
   (setq _right_shoulder __right_shoulder)
   (setq _right_elbow __right_elbow)
   (setq _right_wrist __right_wrist)
   (setq _left_shoulder __left_shoulder)
   (setq _left_elbow __left_elbow)
   (setq _left_wrist __left_wrist)
   (setq _right_hip __right_hip)
   (setq _right_knee __right_knee)
   (setq _right_ankle __right_ankle)
   (setq _left_hip __left_hip)
   (setq _left_knee __left_knee)
   (setq _left_ankle __left_ankle)
   (setq _right_eye __right_eye)
   (setq _left_eye __left_eye)
   (setq _right_ear __right_ear)
   (setq _left_ear __left_ear)
   self)
  (:person_id
   (&optional __person_id)
   (if __person_id (setq _person_id __person_id)) _person_id)
  (:nose
   (&rest __nose)
   (if (keywordp (car __nose))
       (send* _nose __nose)
     (progn
       (if __nose (setq _nose (car __nose)))
       _nose)))
  (:neck
   (&rest __neck)
   (if (keywordp (car __neck))
       (send* _neck __neck)
     (progn
       (if __neck (setq _neck (car __neck)))
       _neck)))
  (:right_shoulder
   (&rest __right_shoulder)
   (if (keywordp (car __right_shoulder))
       (send* _right_shoulder __right_shoulder)
     (progn
       (if __right_shoulder (setq _right_shoulder (car __right_shoulder)))
       _right_shoulder)))
  (:right_elbow
   (&rest __right_elbow)
   (if (keywordp (car __right_elbow))
       (send* _right_elbow __right_elbow)
     (progn
       (if __right_elbow (setq _right_elbow (car __right_elbow)))
       _right_elbow)))
  (:right_wrist
   (&rest __right_wrist)
   (if (keywordp (car __right_wrist))
       (send* _right_wrist __right_wrist)
     (progn
       (if __right_wrist (setq _right_wrist (car __right_wrist)))
       _right_wrist)))
  (:left_shoulder
   (&rest __left_shoulder)
   (if (keywordp (car __left_shoulder))
       (send* _left_shoulder __left_shoulder)
     (progn
       (if __left_shoulder (setq _left_shoulder (car __left_shoulder)))
       _left_shoulder)))
  (:left_elbow
   (&rest __left_elbow)
   (if (keywordp (car __left_elbow))
       (send* _left_elbow __left_elbow)
     (progn
       (if __left_elbow (setq _left_elbow (car __left_elbow)))
       _left_elbow)))
  (:left_wrist
   (&rest __left_wrist)
   (if (keywordp (car __left_wrist))
       (send* _left_wrist __left_wrist)
     (progn
       (if __left_wrist (setq _left_wrist (car __left_wrist)))
       _left_wrist)))
  (:right_hip
   (&rest __right_hip)
   (if (keywordp (car __right_hip))
       (send* _right_hip __right_hip)
     (progn
       (if __right_hip (setq _right_hip (car __right_hip)))
       _right_hip)))
  (:right_knee
   (&rest __right_knee)
   (if (keywordp (car __right_knee))
       (send* _right_knee __right_knee)
     (progn
       (if __right_knee (setq _right_knee (car __right_knee)))
       _right_knee)))
  (:right_ankle
   (&rest __right_ankle)
   (if (keywordp (car __right_ankle))
       (send* _right_ankle __right_ankle)
     (progn
       (if __right_ankle (setq _right_ankle (car __right_ankle)))
       _right_ankle)))
  (:left_hip
   (&rest __left_hip)
   (if (keywordp (car __left_hip))
       (send* _left_hip __left_hip)
     (progn
       (if __left_hip (setq _left_hip (car __left_hip)))
       _left_hip)))
  (:left_knee
   (&rest __left_knee)
   (if (keywordp (car __left_knee))
       (send* _left_knee __left_knee)
     (progn
       (if __left_knee (setq _left_knee (car __left_knee)))
       _left_knee)))
  (:left_ankle
   (&rest __left_ankle)
   (if (keywordp (car __left_ankle))
       (send* _left_ankle __left_ankle)
     (progn
       (if __left_ankle (setq _left_ankle (car __left_ankle)))
       _left_ankle)))
  (:right_eye
   (&rest __right_eye)
   (if (keywordp (car __right_eye))
       (send* _right_eye __right_eye)
     (progn
       (if __right_eye (setq _right_eye (car __right_eye)))
       _right_eye)))
  (:left_eye
   (&rest __left_eye)
   (if (keywordp (car __left_eye))
       (send* _left_eye __left_eye)
     (progn
       (if __left_eye (setq _left_eye (car __left_eye)))
       _left_eye)))
  (:right_ear
   (&rest __right_ear)
   (if (keywordp (car __right_ear))
       (send* _right_ear __right_ear)
     (progn
       (if __right_ear (setq _right_ear (car __right_ear)))
       _right_ear)))
  (:left_ear
   (&rest __left_ear)
   (if (keywordp (car __left_ear))
       (send* _left_ear __left_ear)
     (progn
       (if __left_ear (setq _left_ear (car __left_ear)))
       _left_ear)))
  (:serialization-length
   ()
   (+
    ;; uint32 _person_id
    4
    ;; tfpose_ros/BodyPartElm3D _nose
    (send _nose :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _neck
    (send _neck :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_shoulder
    (send _right_shoulder :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_elbow
    (send _right_elbow :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_wrist
    (send _right_wrist :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_shoulder
    (send _left_shoulder :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_elbow
    (send _left_elbow :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_wrist
    (send _left_wrist :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_hip
    (send _right_hip :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_knee
    (send _right_knee :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_ankle
    (send _right_ankle :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_hip
    (send _left_hip :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_knee
    (send _left_knee :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_ankle
    (send _left_ankle :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_eye
    (send _right_eye :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_eye
    (send _left_eye :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _right_ear
    (send _right_ear :serialization-length)
    ;; tfpose_ros/BodyPartElm3D _left_ear
    (send _left_ear :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _person_id
       (write-long _person_id s)
     ;; tfpose_ros/BodyPartElm3D _nose
       (send _nose :serialize s)
     ;; tfpose_ros/BodyPartElm3D _neck
       (send _neck :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_shoulder
       (send _right_shoulder :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_elbow
       (send _right_elbow :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_wrist
       (send _right_wrist :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_shoulder
       (send _left_shoulder :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_elbow
       (send _left_elbow :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_wrist
       (send _left_wrist :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_hip
       (send _right_hip :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_knee
       (send _right_knee :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_ankle
       (send _right_ankle :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_hip
       (send _left_hip :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_knee
       (send _left_knee :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_ankle
       (send _left_ankle :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_eye
       (send _right_eye :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_eye
       (send _left_eye :serialize s)
     ;; tfpose_ros/BodyPartElm3D _right_ear
       (send _right_ear :serialize s)
     ;; tfpose_ros/BodyPartElm3D _left_ear
       (send _left_ear :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _person_id
     (setq _person_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; tfpose_ros/BodyPartElm3D _nose
     (send _nose :deserialize buf ptr-) (incf ptr- (send _nose :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _neck
     (send _neck :deserialize buf ptr-) (incf ptr- (send _neck :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_shoulder
     (send _right_shoulder :deserialize buf ptr-) (incf ptr- (send _right_shoulder :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_elbow
     (send _right_elbow :deserialize buf ptr-) (incf ptr- (send _right_elbow :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_wrist
     (send _right_wrist :deserialize buf ptr-) (incf ptr- (send _right_wrist :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_shoulder
     (send _left_shoulder :deserialize buf ptr-) (incf ptr- (send _left_shoulder :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_elbow
     (send _left_elbow :deserialize buf ptr-) (incf ptr- (send _left_elbow :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_wrist
     (send _left_wrist :deserialize buf ptr-) (incf ptr- (send _left_wrist :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_hip
     (send _right_hip :deserialize buf ptr-) (incf ptr- (send _right_hip :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_knee
     (send _right_knee :deserialize buf ptr-) (incf ptr- (send _right_knee :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_ankle
     (send _right_ankle :deserialize buf ptr-) (incf ptr- (send _right_ankle :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_hip
     (send _left_hip :deserialize buf ptr-) (incf ptr- (send _left_hip :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_knee
     (send _left_knee :deserialize buf ptr-) (incf ptr- (send _left_knee :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_ankle
     (send _left_ankle :deserialize buf ptr-) (incf ptr- (send _left_ankle :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_eye
     (send _right_eye :deserialize buf ptr-) (incf ptr- (send _right_eye :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_eye
     (send _left_eye :deserialize buf ptr-) (incf ptr- (send _left_eye :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _right_ear
     (send _right_ear :deserialize buf ptr-) (incf ptr- (send _right_ear :serialization-length))
   ;; tfpose_ros/BodyPartElm3D _left_ear
     (send _left_ear :deserialize buf ptr-) (incf ptr- (send _left_ear :serialization-length))
   ;;
   self)
  )

(setf (get tfpose_ros::Person3D :md5sum-) "d3bb1866b0d155de0421df7093a0acd3")
(setf (get tfpose_ros::Person3D :datatype-) "tfpose_ros/Person3D")
(setf (get tfpose_ros::Person3D :definition-)
      "uint32 person_id
BodyPartElm3D nose
BodyPartElm3D neck
BodyPartElm3D right_shoulder
BodyPartElm3D right_elbow
BodyPartElm3D right_wrist
BodyPartElm3D left_shoulder
BodyPartElm3D left_elbow
BodyPartElm3D left_wrist
BodyPartElm3D right_hip
BodyPartElm3D right_knee
BodyPartElm3D right_ankle
BodyPartElm3D left_hip
BodyPartElm3D left_knee
BodyPartElm3D left_ankle
BodyPartElm3D right_eye
BodyPartElm3D left_eye
BodyPartElm3D right_ear
BodyPartElm3D left_ear
================================================================================
MSG: tfpose_ros/BodyPartElm3D
uint32 part_id
float32 x
float32 y
float32 z
float32 confidence
")



(provide :tfpose_ros/Person3D "d3bb1866b0d155de0421df7093a0acd3")


