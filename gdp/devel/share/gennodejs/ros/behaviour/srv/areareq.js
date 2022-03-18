// Auto-generated. Do not edit!

// (in-package behaviour.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class areareqRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type areareqRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int8(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type areareqRequest
    let len;
    let data = new areareqRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/areareqRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4eec2979cc688371cc0e7f01aea37ad1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new areareqRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

class areareqResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type areareqResponse
    // Serialize message field [a]
    bufferOffset = _serializer.int8(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type areareqResponse
    let len;
    let data = new areareqResponse(null);
    // Deserialize message field [a]
    data.a = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/areareqResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4eec2979cc688371cc0e7f01aea37ad1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new areareqResponse(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: areareqRequest,
  Response: areareqResponse,
  md5sum() { return 'a4a19e72d17da6e4ff5c0b9f7a7ca609'; },
  datatype() { return 'behaviour/areareq'; }
};
