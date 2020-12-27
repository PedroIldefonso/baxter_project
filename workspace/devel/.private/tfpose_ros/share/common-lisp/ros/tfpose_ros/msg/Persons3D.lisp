; Auto-generated. Do not edit!


(cl:in-package tfpose_ros-msg)


;//! \htmlinclude Persons3D.msg.html

(cl:defclass <Persons3D> (roslisp-msg-protocol:ros-message)
  ((persons
    :reader persons
    :initarg :persons
    :type (cl:vector tfpose_ros-msg:Person3D)
   :initform (cl:make-array 0 :element-type 'tfpose_ros-msg:Person3D :initial-element (cl:make-instance 'tfpose_ros-msg:Person3D)))
   (image_w
    :reader image_w
    :initarg :image_w
    :type cl:integer
    :initform 0)
   (image_h
    :reader image_h
    :initarg :image_h
    :type cl:integer
    :initform 0)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass Persons3D (<Persons3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Persons3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Persons3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tfpose_ros-msg:<Persons3D> is deprecated: use tfpose_ros-msg:Persons3D instead.")))

(cl:ensure-generic-function 'persons-val :lambda-list '(m))
(cl:defmethod persons-val ((m <Persons3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:persons-val is deprecated.  Use tfpose_ros-msg:persons instead.")
  (persons m))

(cl:ensure-generic-function 'image_w-val :lambda-list '(m))
(cl:defmethod image_w-val ((m <Persons3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:image_w-val is deprecated.  Use tfpose_ros-msg:image_w instead.")
  (image_w m))

(cl:ensure-generic-function 'image_h-val :lambda-list '(m))
(cl:defmethod image_h-val ((m <Persons3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:image_h-val is deprecated.  Use tfpose_ros-msg:image_h instead.")
  (image_h m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Persons3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:header-val is deprecated.  Use tfpose_ros-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Persons3D>) ostream)
  "Serializes a message object of type '<Persons3D>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'persons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'persons))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_h)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Persons3D>) istream)
  "Deserializes a message object of type '<Persons3D>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'persons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'persons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tfpose_ros-msg:Person3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_h)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Persons3D>)))
  "Returns string type for a message object of type '<Persons3D>"
  "tfpose_ros/Persons3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Persons3D)))
  "Returns string type for a message object of type 'Persons3D"
  "tfpose_ros/Persons3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Persons3D>)))
  "Returns md5sum for a message object of type '<Persons3D>"
  "c752c4c2da8af796a9eef30d5dcd52c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Persons3D)))
  "Returns md5sum for a message object of type 'Persons3D"
  "c752c4c2da8af796a9eef30d5dcd52c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Persons3D>)))
  "Returns full string definition for message of type '<Persons3D>"
  (cl:format cl:nil "Person3D[] persons~%uint32 image_w~%uint32 image_h~%Header header~%================================================================================~%MSG: tfpose_ros/Person3D~%uint32 person_id~%BodyPartElm3D nose~%BodyPartElm3D neck~%BodyPartElm3D right_shoulder~%BodyPartElm3D right_elbow~%BodyPartElm3D right_wrist~%BodyPartElm3D left_shoulder~%BodyPartElm3D left_elbow~%BodyPartElm3D left_wrist~%BodyPartElm3D right_hip~%BodyPartElm3D right_knee~%BodyPartElm3D right_ankle~%BodyPartElm3D left_hip~%BodyPartElm3D left_knee~%BodyPartElm3D left_ankle~%BodyPartElm3D right_eye~%BodyPartElm3D left_eye~%BodyPartElm3D right_ear~%BodyPartElm3D left_ear~%================================================================================~%MSG: tfpose_ros/BodyPartElm3D~%uint32 part_id~%float32 x~%float32 y~%float32 z~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Persons3D)))
  "Returns full string definition for message of type 'Persons3D"
  (cl:format cl:nil "Person3D[] persons~%uint32 image_w~%uint32 image_h~%Header header~%================================================================================~%MSG: tfpose_ros/Person3D~%uint32 person_id~%BodyPartElm3D nose~%BodyPartElm3D neck~%BodyPartElm3D right_shoulder~%BodyPartElm3D right_elbow~%BodyPartElm3D right_wrist~%BodyPartElm3D left_shoulder~%BodyPartElm3D left_elbow~%BodyPartElm3D left_wrist~%BodyPartElm3D right_hip~%BodyPartElm3D right_knee~%BodyPartElm3D right_ankle~%BodyPartElm3D left_hip~%BodyPartElm3D left_knee~%BodyPartElm3D left_ankle~%BodyPartElm3D right_eye~%BodyPartElm3D left_eye~%BodyPartElm3D right_ear~%BodyPartElm3D left_ear~%================================================================================~%MSG: tfpose_ros/BodyPartElm3D~%uint32 part_id~%float32 x~%float32 y~%float32 z~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Persons3D>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'persons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Persons3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Persons3D
    (cl:cons ':persons (persons msg))
    (cl:cons ':image_w (image_w msg))
    (cl:cons ':image_h (image_h msg))
    (cl:cons ':header (header msg))
))
