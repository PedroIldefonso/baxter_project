; Auto-generated. Do not edit!


(cl:in-package tfpose_ros-msg)


;//! \htmlinclude Person3D.msg.html

(cl:defclass <Person3D> (roslisp-msg-protocol:ros-message)
  ((person_id
    :reader person_id
    :initarg :person_id
    :type cl:integer
    :initform 0)
   (nose
    :reader nose
    :initarg :nose
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (neck
    :reader neck
    :initarg :neck
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_shoulder
    :reader right_shoulder
    :initarg :right_shoulder
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_elbow
    :reader right_elbow
    :initarg :right_elbow
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_wrist
    :reader right_wrist
    :initarg :right_wrist
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_shoulder
    :reader left_shoulder
    :initarg :left_shoulder
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_elbow
    :reader left_elbow
    :initarg :left_elbow
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_wrist
    :reader left_wrist
    :initarg :left_wrist
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_hip
    :reader right_hip
    :initarg :right_hip
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_knee
    :reader right_knee
    :initarg :right_knee
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_ankle
    :reader right_ankle
    :initarg :right_ankle
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_hip
    :reader left_hip
    :initarg :left_hip
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_knee
    :reader left_knee
    :initarg :left_knee
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_ankle
    :reader left_ankle
    :initarg :left_ankle
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_eye
    :reader right_eye
    :initarg :right_eye
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_eye
    :reader left_eye
    :initarg :left_eye
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (right_ear
    :reader right_ear
    :initarg :right_ear
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D))
   (left_ear
    :reader left_ear
    :initarg :left_ear
    :type tfpose_ros-msg:BodyPartElm3D
    :initform (cl:make-instance 'tfpose_ros-msg:BodyPartElm3D)))
)

(cl:defclass Person3D (<Person3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tfpose_ros-msg:<Person3D> is deprecated: use tfpose_ros-msg:Person3D instead.")))

(cl:ensure-generic-function 'person_id-val :lambda-list '(m))
(cl:defmethod person_id-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:person_id-val is deprecated.  Use tfpose_ros-msg:person_id instead.")
  (person_id m))

(cl:ensure-generic-function 'nose-val :lambda-list '(m))
(cl:defmethod nose-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:nose-val is deprecated.  Use tfpose_ros-msg:nose instead.")
  (nose m))

(cl:ensure-generic-function 'neck-val :lambda-list '(m))
(cl:defmethod neck-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:neck-val is deprecated.  Use tfpose_ros-msg:neck instead.")
  (neck m))

(cl:ensure-generic-function 'right_shoulder-val :lambda-list '(m))
(cl:defmethod right_shoulder-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_shoulder-val is deprecated.  Use tfpose_ros-msg:right_shoulder instead.")
  (right_shoulder m))

(cl:ensure-generic-function 'right_elbow-val :lambda-list '(m))
(cl:defmethod right_elbow-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_elbow-val is deprecated.  Use tfpose_ros-msg:right_elbow instead.")
  (right_elbow m))

(cl:ensure-generic-function 'right_wrist-val :lambda-list '(m))
(cl:defmethod right_wrist-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_wrist-val is deprecated.  Use tfpose_ros-msg:right_wrist instead.")
  (right_wrist m))

(cl:ensure-generic-function 'left_shoulder-val :lambda-list '(m))
(cl:defmethod left_shoulder-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_shoulder-val is deprecated.  Use tfpose_ros-msg:left_shoulder instead.")
  (left_shoulder m))

(cl:ensure-generic-function 'left_elbow-val :lambda-list '(m))
(cl:defmethod left_elbow-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_elbow-val is deprecated.  Use tfpose_ros-msg:left_elbow instead.")
  (left_elbow m))

(cl:ensure-generic-function 'left_wrist-val :lambda-list '(m))
(cl:defmethod left_wrist-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_wrist-val is deprecated.  Use tfpose_ros-msg:left_wrist instead.")
  (left_wrist m))

(cl:ensure-generic-function 'right_hip-val :lambda-list '(m))
(cl:defmethod right_hip-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_hip-val is deprecated.  Use tfpose_ros-msg:right_hip instead.")
  (right_hip m))

(cl:ensure-generic-function 'right_knee-val :lambda-list '(m))
(cl:defmethod right_knee-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_knee-val is deprecated.  Use tfpose_ros-msg:right_knee instead.")
  (right_knee m))

(cl:ensure-generic-function 'right_ankle-val :lambda-list '(m))
(cl:defmethod right_ankle-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_ankle-val is deprecated.  Use tfpose_ros-msg:right_ankle instead.")
  (right_ankle m))

(cl:ensure-generic-function 'left_hip-val :lambda-list '(m))
(cl:defmethod left_hip-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_hip-val is deprecated.  Use tfpose_ros-msg:left_hip instead.")
  (left_hip m))

(cl:ensure-generic-function 'left_knee-val :lambda-list '(m))
(cl:defmethod left_knee-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_knee-val is deprecated.  Use tfpose_ros-msg:left_knee instead.")
  (left_knee m))

(cl:ensure-generic-function 'left_ankle-val :lambda-list '(m))
(cl:defmethod left_ankle-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_ankle-val is deprecated.  Use tfpose_ros-msg:left_ankle instead.")
  (left_ankle m))

(cl:ensure-generic-function 'right_eye-val :lambda-list '(m))
(cl:defmethod right_eye-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_eye-val is deprecated.  Use tfpose_ros-msg:right_eye instead.")
  (right_eye m))

(cl:ensure-generic-function 'left_eye-val :lambda-list '(m))
(cl:defmethod left_eye-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_eye-val is deprecated.  Use tfpose_ros-msg:left_eye instead.")
  (left_eye m))

(cl:ensure-generic-function 'right_ear-val :lambda-list '(m))
(cl:defmethod right_ear-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:right_ear-val is deprecated.  Use tfpose_ros-msg:right_ear instead.")
  (right_ear m))

(cl:ensure-generic-function 'left_ear-val :lambda-list '(m))
(cl:defmethod left_ear-val ((m <Person3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:left_ear-val is deprecated.  Use tfpose_ros-msg:left_ear instead.")
  (left_ear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person3D>) ostream)
  "Serializes a message object of type '<Person3D>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'neck) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_shoulder) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_elbow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_wrist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_shoulder) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_elbow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_wrist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_hip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_knee) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_ankle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_hip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_knee) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_ankle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_ear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_ear) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person3D>) istream)
  "Deserializes a message object of type '<Person3D>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'neck) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_shoulder) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_elbow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_wrist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_shoulder) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_elbow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_wrist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_hip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_knee) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_ankle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_hip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_knee) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_ankle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_ear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_ear) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person3D>)))
  "Returns string type for a message object of type '<Person3D>"
  "tfpose_ros/Person3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person3D)))
  "Returns string type for a message object of type 'Person3D"
  "tfpose_ros/Person3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person3D>)))
  "Returns md5sum for a message object of type '<Person3D>"
  "d3bb1866b0d155de0421df7093a0acd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person3D)))
  "Returns md5sum for a message object of type 'Person3D"
  "d3bb1866b0d155de0421df7093a0acd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person3D>)))
  "Returns full string definition for message of type '<Person3D>"
  (cl:format cl:nil "uint32 person_id~%BodyPartElm3D nose~%BodyPartElm3D neck~%BodyPartElm3D right_shoulder~%BodyPartElm3D right_elbow~%BodyPartElm3D right_wrist~%BodyPartElm3D left_shoulder~%BodyPartElm3D left_elbow~%BodyPartElm3D left_wrist~%BodyPartElm3D right_hip~%BodyPartElm3D right_knee~%BodyPartElm3D right_ankle~%BodyPartElm3D left_hip~%BodyPartElm3D left_knee~%BodyPartElm3D left_ankle~%BodyPartElm3D right_eye~%BodyPartElm3D left_eye~%BodyPartElm3D right_ear~%BodyPartElm3D left_ear~%================================================================================~%MSG: tfpose_ros/BodyPartElm3D~%uint32 part_id~%float32 x~%float32 y~%float32 z~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person3D)))
  "Returns full string definition for message of type 'Person3D"
  (cl:format cl:nil "uint32 person_id~%BodyPartElm3D nose~%BodyPartElm3D neck~%BodyPartElm3D right_shoulder~%BodyPartElm3D right_elbow~%BodyPartElm3D right_wrist~%BodyPartElm3D left_shoulder~%BodyPartElm3D left_elbow~%BodyPartElm3D left_wrist~%BodyPartElm3D right_hip~%BodyPartElm3D right_knee~%BodyPartElm3D right_ankle~%BodyPartElm3D left_hip~%BodyPartElm3D left_knee~%BodyPartElm3D left_ankle~%BodyPartElm3D right_eye~%BodyPartElm3D left_eye~%BodyPartElm3D right_ear~%BodyPartElm3D left_ear~%================================================================================~%MSG: tfpose_ros/BodyPartElm3D~%uint32 part_id~%float32 x~%float32 y~%float32 z~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person3D>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'neck))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_shoulder))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_elbow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_wrist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_shoulder))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_elbow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_wrist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_hip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_knee))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_ankle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_hip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_knee))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_ankle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_ear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_ear))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Person3D
    (cl:cons ':person_id (person_id msg))
    (cl:cons ':nose (nose msg))
    (cl:cons ':neck (neck msg))
    (cl:cons ':right_shoulder (right_shoulder msg))
    (cl:cons ':right_elbow (right_elbow msg))
    (cl:cons ':right_wrist (right_wrist msg))
    (cl:cons ':left_shoulder (left_shoulder msg))
    (cl:cons ':left_elbow (left_elbow msg))
    (cl:cons ':left_wrist (left_wrist msg))
    (cl:cons ':right_hip (right_hip msg))
    (cl:cons ':right_knee (right_knee msg))
    (cl:cons ':right_ankle (right_ankle msg))
    (cl:cons ':left_hip (left_hip msg))
    (cl:cons ':left_knee (left_knee msg))
    (cl:cons ':left_ankle (left_ankle msg))
    (cl:cons ':right_eye (right_eye msg))
    (cl:cons ':left_eye (left_eye msg))
    (cl:cons ':right_ear (right_ear msg))
    (cl:cons ':left_ear (left_ear msg))
))
