// Auto-generated. Do not edit!

// (in-package behaviour.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class swarmstate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_mon = null;
      this.num_track = null;
      this.available_track = null;
    }
    else {
      if (initObj.hasOwnProperty('num_mon')) {
        this.num_mon = initObj.num_mon
      }
      else {
        this.num_mon = 0;
      }
      if (initObj.hasOwnProperty('num_track')) {
        this.num_track = initObj.num_track
      }
      else {
        this.num_track = 0;
      }
      if (initObj.hasOwnProperty('available_track')) {
        this.available_track = initObj.available_track
      }
      else {
        this.available_track = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarmstate
    // Serialize message field [num_mon]
    bufferOffset = _serializer.int8(obj.num_mon, buffer, bufferOffset);
    // Serialize message field [num_track]
    bufferOffset = _serializer.int8(obj.num_track, buffer, bufferOffset);
    // Serialize message field [available_track]
    bufferOffset = _serializer.int8(obj.available_track, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarmstate
    let len;
    let data = new swarmstate(null);
    // Deserialize message field [num_mon]
    data.num_mon = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [num_track]
    data.num_track = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [available_track]
    data.available_track = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/swarmstate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a525631f8ad4b69497b0091550a7555c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 num_mon
    int8 num_track
    int8 available_track
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new swarmstate(null);
    if (msg.num_mon !== undefined) {
      resolved.num_mon = msg.num_mon;
    }
    else {
      resolved.num_mon = 0
    }

    if (msg.num_track !== undefined) {
      resolved.num_track = msg.num_track;
    }
    else {
      resolved.num_track = 0
    }

    if (msg.available_track !== undefined) {
      resolved.available_track = msg.available_track;
    }
    else {
      resolved.available_track = 0
    }

    return resolved;
    }
};

module.exports = swarmstate;
