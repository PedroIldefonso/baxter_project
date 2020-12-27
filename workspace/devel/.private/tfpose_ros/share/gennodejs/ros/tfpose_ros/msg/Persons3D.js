// Auto-generated. Do not edit!

// (in-package tfpose_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Person3D = require('./Person3D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Persons3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.persons = null;
      this.image_w = null;
      this.image_h = null;
      this.header = null;
    }
    else {
      if (initObj.hasOwnProperty('persons')) {
        this.persons = initObj.persons
      }
      else {
        this.persons = [];
      }
      if (initObj.hasOwnProperty('image_w')) {
        this.image_w = initObj.image_w
      }
      else {
        this.image_w = 0;
      }
      if (initObj.hasOwnProperty('image_h')) {
        this.image_h = initObj.image_h
      }
      else {
        this.image_h = 0;
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Persons3D
    // Serialize message field [persons]
    // Serialize the length for message field [persons]
    bufferOffset = _serializer.uint32(obj.persons.length, buffer, bufferOffset);
    obj.persons.forEach((val) => {
      bufferOffset = Person3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [image_w]
    bufferOffset = _serializer.uint32(obj.image_w, buffer, bufferOffset);
    // Serialize message field [image_h]
    bufferOffset = _serializer.uint32(obj.image_h, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Persons3D
    let len;
    let data = new Persons3D(null);
    // Deserialize message field [persons]
    // Deserialize array length for message field [persons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.persons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.persons[i] = Person3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [image_w]
    data.image_w = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [image_h]
    data.image_h = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 364 * object.persons.length;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tfpose_ros/Persons3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c752c4c2da8af796a9eef30d5dcd52c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Person3D[] persons
    uint32 image_w
    uint32 image_h
    Header header
    ================================================================================
    MSG: tfpose_ros/Person3D
    uint32 person_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Persons3D(null);
    if (msg.persons !== undefined) {
      resolved.persons = new Array(msg.persons.length);
      for (let i = 0; i < resolved.persons.length; ++i) {
        resolved.persons[i] = Person3D.Resolve(msg.persons[i]);
      }
    }
    else {
      resolved.persons = []
    }

    if (msg.image_w !== undefined) {
      resolved.image_w = msg.image_w;
    }
    else {
      resolved.image_w = 0
    }

    if (msg.image_h !== undefined) {
      resolved.image_h = msg.image_h;
    }
    else {
      resolved.image_h = 0
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    return resolved;
    }
};

module.exports = Persons3D;
