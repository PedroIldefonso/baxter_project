// Auto-generated. Do not edit!

// (in-package tfpose_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BodyPartElm3D = require('./BodyPartElm3D.js');

//-----------------------------------------------------------

class Person3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.person_id = null;
      this.nose = null;
      this.neck = null;
      this.right_shoulder = null;
      this.right_elbow = null;
      this.right_wrist = null;
      this.left_shoulder = null;
      this.left_elbow = null;
      this.left_wrist = null;
      this.right_hip = null;
      this.right_knee = null;
      this.right_ankle = null;
      this.left_hip = null;
      this.left_knee = null;
      this.left_ankle = null;
      this.right_eye = null;
      this.left_eye = null;
      this.right_ear = null;
      this.left_ear = null;
    }
    else {
      if (initObj.hasOwnProperty('person_id')) {
        this.person_id = initObj.person_id
      }
      else {
        this.person_id = 0;
      }
      if (initObj.hasOwnProperty('nose')) {
        this.nose = initObj.nose
      }
      else {
        this.nose = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('neck')) {
        this.neck = initObj.neck
      }
      else {
        this.neck = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_shoulder')) {
        this.right_shoulder = initObj.right_shoulder
      }
      else {
        this.right_shoulder = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_elbow')) {
        this.right_elbow = initObj.right_elbow
      }
      else {
        this.right_elbow = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_wrist')) {
        this.right_wrist = initObj.right_wrist
      }
      else {
        this.right_wrist = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_shoulder')) {
        this.left_shoulder = initObj.left_shoulder
      }
      else {
        this.left_shoulder = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_elbow')) {
        this.left_elbow = initObj.left_elbow
      }
      else {
        this.left_elbow = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_wrist')) {
        this.left_wrist = initObj.left_wrist
      }
      else {
        this.left_wrist = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_hip')) {
        this.right_hip = initObj.right_hip
      }
      else {
        this.right_hip = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_knee')) {
        this.right_knee = initObj.right_knee
      }
      else {
        this.right_knee = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_ankle')) {
        this.right_ankle = initObj.right_ankle
      }
      else {
        this.right_ankle = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_hip')) {
        this.left_hip = initObj.left_hip
      }
      else {
        this.left_hip = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_knee')) {
        this.left_knee = initObj.left_knee
      }
      else {
        this.left_knee = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_ankle')) {
        this.left_ankle = initObj.left_ankle
      }
      else {
        this.left_ankle = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_eye')) {
        this.right_eye = initObj.right_eye
      }
      else {
        this.right_eye = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_eye')) {
        this.left_eye = initObj.left_eye
      }
      else {
        this.left_eye = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('right_ear')) {
        this.right_ear = initObj.right_ear
      }
      else {
        this.right_ear = new BodyPartElm3D();
      }
      if (initObj.hasOwnProperty('left_ear')) {
        this.left_ear = initObj.left_ear
      }
      else {
        this.left_ear = new BodyPartElm3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person3D
    // Serialize message field [person_id]
    bufferOffset = _serializer.uint32(obj.person_id, buffer, bufferOffset);
    // Serialize message field [nose]
    bufferOffset = BodyPartElm3D.serialize(obj.nose, buffer, bufferOffset);
    // Serialize message field [neck]
    bufferOffset = BodyPartElm3D.serialize(obj.neck, buffer, bufferOffset);
    // Serialize message field [right_shoulder]
    bufferOffset = BodyPartElm3D.serialize(obj.right_shoulder, buffer, bufferOffset);
    // Serialize message field [right_elbow]
    bufferOffset = BodyPartElm3D.serialize(obj.right_elbow, buffer, bufferOffset);
    // Serialize message field [right_wrist]
    bufferOffset = BodyPartElm3D.serialize(obj.right_wrist, buffer, bufferOffset);
    // Serialize message field [left_shoulder]
    bufferOffset = BodyPartElm3D.serialize(obj.left_shoulder, buffer, bufferOffset);
    // Serialize message field [left_elbow]
    bufferOffset = BodyPartElm3D.serialize(obj.left_elbow, buffer, bufferOffset);
    // Serialize message field [left_wrist]
    bufferOffset = BodyPartElm3D.serialize(obj.left_wrist, buffer, bufferOffset);
    // Serialize message field [right_hip]
    bufferOffset = BodyPartElm3D.serialize(obj.right_hip, buffer, bufferOffset);
    // Serialize message field [right_knee]
    bufferOffset = BodyPartElm3D.serialize(obj.right_knee, buffer, bufferOffset);
    // Serialize message field [right_ankle]
    bufferOffset = BodyPartElm3D.serialize(obj.right_ankle, buffer, bufferOffset);
    // Serialize message field [left_hip]
    bufferOffset = BodyPartElm3D.serialize(obj.left_hip, buffer, bufferOffset);
    // Serialize message field [left_knee]
    bufferOffset = BodyPartElm3D.serialize(obj.left_knee, buffer, bufferOffset);
    // Serialize message field [left_ankle]
    bufferOffset = BodyPartElm3D.serialize(obj.left_ankle, buffer, bufferOffset);
    // Serialize message field [right_eye]
    bufferOffset = BodyPartElm3D.serialize(obj.right_eye, buffer, bufferOffset);
    // Serialize message field [left_eye]
    bufferOffset = BodyPartElm3D.serialize(obj.left_eye, buffer, bufferOffset);
    // Serialize message field [right_ear]
    bufferOffset = BodyPartElm3D.serialize(obj.right_ear, buffer, bufferOffset);
    // Serialize message field [left_ear]
    bufferOffset = BodyPartElm3D.serialize(obj.left_ear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person3D
    let len;
    let data = new Person3D(null);
    // Deserialize message field [person_id]
    data.person_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nose]
    data.nose = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [neck]
    data.neck = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_shoulder]
    data.right_shoulder = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_elbow]
    data.right_elbow = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_wrist]
    data.right_wrist = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_shoulder]
    data.left_shoulder = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_elbow]
    data.left_elbow = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_wrist]
    data.left_wrist = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_hip]
    data.right_hip = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_knee]
    data.right_knee = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_ankle]
    data.right_ankle = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_hip]
    data.left_hip = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_knee]
    data.left_knee = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_ankle]
    data.left_ankle = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_eye]
    data.right_eye = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_eye]
    data.left_eye = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_ear]
    data.right_ear = BodyPartElm3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_ear]
    data.left_ear = BodyPartElm3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 364;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tfpose_ros/Person3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3bb1866b0d155de0421df7093a0acd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person3D(null);
    if (msg.person_id !== undefined) {
      resolved.person_id = msg.person_id;
    }
    else {
      resolved.person_id = 0
    }

    if (msg.nose !== undefined) {
      resolved.nose = BodyPartElm3D.Resolve(msg.nose)
    }
    else {
      resolved.nose = new BodyPartElm3D()
    }

    if (msg.neck !== undefined) {
      resolved.neck = BodyPartElm3D.Resolve(msg.neck)
    }
    else {
      resolved.neck = new BodyPartElm3D()
    }

    if (msg.right_shoulder !== undefined) {
      resolved.right_shoulder = BodyPartElm3D.Resolve(msg.right_shoulder)
    }
    else {
      resolved.right_shoulder = new BodyPartElm3D()
    }

    if (msg.right_elbow !== undefined) {
      resolved.right_elbow = BodyPartElm3D.Resolve(msg.right_elbow)
    }
    else {
      resolved.right_elbow = new BodyPartElm3D()
    }

    if (msg.right_wrist !== undefined) {
      resolved.right_wrist = BodyPartElm3D.Resolve(msg.right_wrist)
    }
    else {
      resolved.right_wrist = new BodyPartElm3D()
    }

    if (msg.left_shoulder !== undefined) {
      resolved.left_shoulder = BodyPartElm3D.Resolve(msg.left_shoulder)
    }
    else {
      resolved.left_shoulder = new BodyPartElm3D()
    }

    if (msg.left_elbow !== undefined) {
      resolved.left_elbow = BodyPartElm3D.Resolve(msg.left_elbow)
    }
    else {
      resolved.left_elbow = new BodyPartElm3D()
    }

    if (msg.left_wrist !== undefined) {
      resolved.left_wrist = BodyPartElm3D.Resolve(msg.left_wrist)
    }
    else {
      resolved.left_wrist = new BodyPartElm3D()
    }

    if (msg.right_hip !== undefined) {
      resolved.right_hip = BodyPartElm3D.Resolve(msg.right_hip)
    }
    else {
      resolved.right_hip = new BodyPartElm3D()
    }

    if (msg.right_knee !== undefined) {
      resolved.right_knee = BodyPartElm3D.Resolve(msg.right_knee)
    }
    else {
      resolved.right_knee = new BodyPartElm3D()
    }

    if (msg.right_ankle !== undefined) {
      resolved.right_ankle = BodyPartElm3D.Resolve(msg.right_ankle)
    }
    else {
      resolved.right_ankle = new BodyPartElm3D()
    }

    if (msg.left_hip !== undefined) {
      resolved.left_hip = BodyPartElm3D.Resolve(msg.left_hip)
    }
    else {
      resolved.left_hip = new BodyPartElm3D()
    }

    if (msg.left_knee !== undefined) {
      resolved.left_knee = BodyPartElm3D.Resolve(msg.left_knee)
    }
    else {
      resolved.left_knee = new BodyPartElm3D()
    }

    if (msg.left_ankle !== undefined) {
      resolved.left_ankle = BodyPartElm3D.Resolve(msg.left_ankle)
    }
    else {
      resolved.left_ankle = new BodyPartElm3D()
    }

    if (msg.right_eye !== undefined) {
      resolved.right_eye = BodyPartElm3D.Resolve(msg.right_eye)
    }
    else {
      resolved.right_eye = new BodyPartElm3D()
    }

    if (msg.left_eye !== undefined) {
      resolved.left_eye = BodyPartElm3D.Resolve(msg.left_eye)
    }
    else {
      resolved.left_eye = new BodyPartElm3D()
    }

    if (msg.right_ear !== undefined) {
      resolved.right_ear = BodyPartElm3D.Resolve(msg.right_ear)
    }
    else {
      resolved.right_ear = new BodyPartElm3D()
    }

    if (msg.left_ear !== undefined) {
      resolved.left_ear = BodyPartElm3D.Resolve(msg.left_ear)
    }
    else {
      resolved.left_ear = new BodyPartElm3D()
    }

    return resolved;
    }
};

module.exports = Person3D;
