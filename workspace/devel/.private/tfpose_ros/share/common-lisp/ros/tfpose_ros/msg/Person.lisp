; Auto-generated. Do not edit!


(cl:in-package tfpose_ros-msg)


;//! \htmlinclude Person.msg.html

(cl:defclass <Person> (roslisp-msg-protocol:ros-message)
  ((body_part
    :reader body_part
    :initarg :body_part
    :type (cl:vector tfpose_ros-msg:BodyPartElm)
   :initform (cl:make-array 0 :element-type 'tfpose_ros-msg:BodyPartElm :initial-element (cl:make-instance 'tfpose_ros-msg:BodyPartElm)))
   (person_id
    :reader person_id
    :initarg :person_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Person (<Person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tfpose_ros-msg:<Person> is deprecated: use tfpose_ros-msg:Person instead.")))

(cl:ensure-generic-function 'body_part-val :lambda-list '(m))
(cl:defmethod body_part-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:body_part-val is deprecated.  Use tfpose_ros-msg:body_part instead.")
  (body_part m))

(cl:ensure-generic-function 'person_id-val :lambda-list '(m))
(cl:defmethod person_id-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tfpose_ros-msg:person_id-val is deprecated.  Use tfpose_ros-msg:person_id instead.")
  (person_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person>) ostream)
  "Serializes a message object of type '<Person>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'body_part))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'body_part))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person>) istream)
  "Deserializes a message object of type '<Person>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'body_part) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'body_part)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tfpose_ros-msg:BodyPartElm))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person>)))
  "Returns string type for a message object of type '<Person>"
  "tfpose_ros/Person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person)))
  "Returns string type for a message object of type 'Person"
  "tfpose_ros/Person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person>)))
  "Returns md5sum for a message object of type '<Person>"
  "379a7ed9a6f5d7f9d6691ecb0d4740f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person)))
  "Returns md5sum for a message object of type 'Person"
  "379a7ed9a6f5d7f9d6691ecb0d4740f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person>)))
  "Returns full string definition for message of type '<Person>"
  (cl:format cl:nil "BodyPartElm[] body_part~%uint32 person_id~%================================================================================~%MSG: tfpose_ros/BodyPartElm~%uint32 part_id~%float32 x~%float32 y~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person)))
  "Returns full string definition for message of type 'Person"
  (cl:format cl:nil "BodyPartElm[] body_part~%uint32 person_id~%================================================================================~%MSG: tfpose_ros/BodyPartElm~%uint32 part_id~%float32 x~%float32 y~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'body_part) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person>))
  "Converts a ROS message object to a list"
  (cl:list 'Person
    (cl:cons ':body_part (body_part msg))
    (cl:cons ':person_id (person_id msg))
))
