// Auto-generated. Do not edit!

// (in-package nav_cctv.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MultiPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_seq = null;
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_seq')) {
        this.msg_seq = initObj.msg_seq
      }
      else {
        this.msg_seq = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiPoint
    // Serialize message field [msg_seq]
    bufferOffset = _serializer.uint16(obj.msg_seq, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.int16(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.int16(obj.y, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiPoint
    let len;
    let data = new MultiPoint(null);
    // Deserialize message field [msg_seq]
    data.msg_seq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.x.length;
    length += 2 * object.y.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nav_cctv/MultiPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7945ea15cd4a474c5cde09582772132';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 msg_seq
    int16[] x
    int16[] y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiPoint(null);
    if (msg.msg_seq !== undefined) {
      resolved.msg_seq = msg.msg_seq;
    }
    else {
      resolved.msg_seq = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    return resolved;
    }
};

module.exports = MultiPoint;
