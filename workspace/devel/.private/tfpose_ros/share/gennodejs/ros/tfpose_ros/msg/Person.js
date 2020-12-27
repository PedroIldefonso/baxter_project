// Auto-generated. Do not edit!

// (in-package tfpose_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BodyPartElm = require('./BodyPartElm.js');

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.body_part = null;
      this.person_id = null;
    }
    else {
      if (initObj.hasOwnProperty('body_part')) {
        this.body_part = initObj.body_part
      }
      else {
        this.body_part = [];
      }
      if (initObj.hasOwnProperty('person_id')) {
        this.person_id = initObj.person_id
      }
      else {
        this.person_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [body_part]
    // Serialize the length for message field [body_part]
    bufferOffset = _serializer.uint32(obj.body_part.length, buffer, bufferOffset);
    obj.body_part.forEach((val) => {
      bufferOffset = BodyPartElm.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [person_id]
    bufferOffset = _serializer.uint32(obj.person_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [body_part]
    // Deserialize array length for message field [body_part]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.body_part = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.body_part[i] = BodyPartElm.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [person_id]
    data.person_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.body_part.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tfpose_ros/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '379a7ed9a6f5d7f9d6691ecb0d4740f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    BodyPartElm[] body_part
    uint32 person_id
    ================================================================================
    MSG: tfpose_ros/BodyPartElm
    uint32 part_id
    float32 x
    float32 y
    float32 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person(null);
    if (msg.body_part !== undefined) {
      resolved.body_part = new Array(msg.body_part.length);
      for (let i = 0; i < resolved.body_part.length; ++i) {
        resolved.body_part[i] = BodyPartElm.Resolve(msg.body_part[i]);
      }
    }
    else {
      resolved.body_part = []
    }

    if (msg.person_id !== undefined) {
      resolved.person_id = msg.person_id;
    }
    else {
      resolved.person_id = 0
    }

    return resolved;
    }
};

module.exports = Person;
