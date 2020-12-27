;; Auto-generated. Do not edit!


(when (boundp 'tfpose_ros::GetPersons)
  (if (not (find-package "TFPOSE_ROS"))
    (make-package "TFPOSE_ROS"))
  (shadow 'GetPersons (find-package "TFPOSE_ROS")))
(unless (find-package "TFPOSE_ROS::GETPERSONS")
  (make-package "TFPOSE_ROS::GETPERSONS"))
(unless (find-package "TFPOSE_ROS::GETPERSONSREQUEST")
  (make-package "TFPOSE_ROS::GETPERSONSREQUEST"))
(unless (find-package "TFPOSE_ROS::GETPERSONSRESPONSE")
  (make-package "TFPOSE_ROS::GETPERSONSRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass tfpose_ros::GetPersonsRequest
  :super ros::object
  :slots (_image ))

(defmethod tfpose_ros::GetPersonsRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass tfpose_ros::GetPersonsResponse
  :super ros::object
  :slots (_persons ))

(defmethod tfpose_ros::GetPersonsResponse
  (:init
   (&key
    ((:persons __persons) (instance tfpose_ros::Persons :init))
    )
   (send-super :init)
   (setq _persons __persons)
   self)
  (:persons
   (&rest __persons)
   (if (keywordp (car __persons))
       (send* _persons __persons)
     (progn
       (if __persons (setq _persons (car __persons)))
       _persons)))
  (:serialization-length
   ()
   (+
    ;; tfpose_ros/Persons _persons
    (send _persons :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tfpose_ros/Persons _persons
       (send _persons :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tfpose_ros/Persons _persons
     (send _persons :deserialize buf ptr-) (incf ptr- (send _persons :serialization-length))
   ;;
   self)
  )

(defclass tfpose_ros::GetPersons
  :super ros::object
  :slots ())

(setf (get tfpose_ros::GetPersons :md5sum-) "eac1ac7f48af0b16a14c17b14c3bebc0")
(setf (get tfpose_ros::GetPersons :datatype-) "tfpose_ros/GetPersons")
(setf (get tfpose_ros::GetPersons :request) tfpose_ros::GetPersonsRequest)
(setf (get tfpose_ros::GetPersons :response) tfpose_ros::GetPersonsResponse)

(defmethod tfpose_ros::GetPersonsRequest
  (:response () (instance tfpose_ros::GetPersonsResponse :init)))

(setf (get tfpose_ros::GetPersonsRequest :md5sum-) "eac1ac7f48af0b16a14c17b14c3bebc0")
(setf (get tfpose_ros::GetPersonsRequest :datatype-) "tfpose_ros/GetPersonsRequest")
(setf (get tfpose_ros::GetPersonsRequest :definition-)
      "sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
---
Persons persons

================================================================================
MSG: tfpose_ros/Persons
Person[] persons
uint32 image_w
uint32 image_h
Header header
================================================================================
MSG: tfpose_ros/Person
BodyPartElm[] body_part
uint32 person_id
================================================================================
MSG: tfpose_ros/BodyPartElm
uint32 part_id
float32 x
float32 y
float32 confidence
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")

(setf (get tfpose_ros::GetPersonsResponse :md5sum-) "eac1ac7f48af0b16a14c17b14c3bebc0")
(setf (get tfpose_ros::GetPersonsResponse :datatype-) "tfpose_ros/GetPersonsResponse")
(setf (get tfpose_ros::GetPersonsResponse :definition-)
      "sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
---
Persons persons

================================================================================
MSG: tfpose_ros/Persons
Person[] persons
uint32 image_w
uint32 image_h
Header header
================================================================================
MSG: tfpose_ros/Person
BodyPartElm[] body_part
uint32 person_id
================================================================================
MSG: tfpose_ros/BodyPartElm
uint32 part_id
float32 x
float32 y
float32 confidence
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")



(provide :tfpose_ros/GetPersons "eac1ac7f48af0b16a14c17b14c3bebc0")


