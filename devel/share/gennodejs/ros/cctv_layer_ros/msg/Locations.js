// Auto-generated. Do not edit!

// (in-package cctv_layer_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Coordinate = require('./Coordinate.js');

//-----------------------------------------------------------

class Locations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_seq = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_seq')) {
        this.msg_seq = initObj.msg_seq
      }
      else {
        this.msg_seq = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Locations
    // Serialize message field [msg_seq]
    bufferOffset = _serializer.uint16(obj.msg_seq, buffer, bufferOffset);
    // Serialize message field [location]
    // Serialize the length for message field [location]
    bufferOffset = _serializer.uint32(obj.location.length, buffer, bufferOffset);
    obj.location.forEach((val) => {
      bufferOffset = Coordinate.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Locations
    let len;
    let data = new Locations(null);
    // Deserialize message field [msg_seq]
    data.msg_seq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [location]
    // Deserialize array length for message field [location]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.location = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.location[i] = Coordinate.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.location.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cctv_layer_ros/Locations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd39aba7ca00bf507fa36e8be0212b2bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 msg_seq
    Coordinate[] location
    
    ================================================================================
    MSG: cctv_layer_ros/Coordinate
    int16 x
    int16 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Locations(null);
    if (msg.msg_seq !== undefined) {
      resolved.msg_seq = msg.msg_seq;
    }
    else {
      resolved.msg_seq = 0
    }

    if (msg.location !== undefined) {
      resolved.location = new Array(msg.location.length);
      for (let i = 0; i < resolved.location.length; ++i) {
        resolved.location[i] = Coordinate.Resolve(msg.location[i]);
      }
    }
    else {
      resolved.location = []
    }

    return resolved;
    }
};

module.exports = Locations;
