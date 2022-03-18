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

let swarmstate = require('../msg/swarmstate.js');

//-----------------------------------------------------------

class swarmstatereqRESPONSERequest {
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
    // Serializes a message object of type swarmstatereqRESPONSERequest
    // Serialize message field [a]
    bufferOffset = _serializer.int8(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarmstatereqRESPONSERequest
    let len;
    let data = new swarmstatereqRESPONSERequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/swarmstatereqRESPONSERequest';
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
    const resolved = new swarmstatereqRESPONSERequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

class swarmstatereqRESPONSEResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swarmstate = null;
    }
    else {
      if (initObj.hasOwnProperty('swarmstate')) {
        this.swarmstate = initObj.swarmstate
      }
      else {
        this.swarmstate = new swarmstate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarmstatereqRESPONSEResponse
    // Serialize message field [swarmstate]
    bufferOffset = swarmstate.serialize(obj.swarmstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarmstatereqRESPONSEResponse
    let len;
    let data = new swarmstatereqRESPONSEResponse(null);
    // Deserialize message field [swarmstate]
    data.swarmstate = swarmstate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/swarmstatereqRESPONSEResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67bfcb736767ba918516cbb9ae24522d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    swarmstate swarmstate
    
    ================================================================================
    MSG: behaviour/swarmstate
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
    const resolved = new swarmstatereqRESPONSEResponse(null);
    if (msg.swarmstate !== undefined) {
      resolved.swarmstate = swarmstate.Resolve(msg.swarmstate)
    }
    else {
      resolved.swarmstate = new swarmstate()
    }

    return resolved;
    }
};

module.exports = {
  Request: swarmstatereqRESPONSERequest,
  Response: swarmstatereqRESPONSEResponse,
  md5sum() { return '33a7566a467e8cd83585fe87304be866'; },
  datatype() { return 'behaviour/swarmstatereqRESPONSE'; }
};
