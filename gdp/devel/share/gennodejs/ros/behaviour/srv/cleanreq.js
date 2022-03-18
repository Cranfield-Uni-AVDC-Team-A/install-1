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

class cleanreqRequest {
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
    // Serializes a message object of type cleanreqRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int8(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cleanreqRequest
    let len;
    let data = new cleanreqRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/cleanreqRequest';
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
    const resolved = new cleanreqRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

class cleanreqResponse {
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
    // Serializes a message object of type cleanreqResponse
    // Serialize message field [a]
    bufferOffset = _serializer.int8(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cleanreqResponse
    let len;
    let data = new cleanreqResponse(null);
    // Deserialize message field [a]
    data.a = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/cleanreqResponse';
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
    const resolved = new cleanreqResponse(null);
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
  Request: cleanreqRequest,
  Response: cleanreqResponse,
  md5sum() { return 'a4a19e72d17da6e4ff5c0b9f7a7ca609'; },
  datatype() { return 'behaviour/cleanreq'; }
};
