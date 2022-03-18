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

class swarmstatereqRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pass = null;
    }
    else {
      if (initObj.hasOwnProperty('pass')) {
        this.pass = initObj.pass
      }
      else {
        this.pass = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type swarmstatereqRequest
    // Serialize message field [pass]
    bufferOffset = _serializer.int8(obj.pass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarmstatereqRequest
    let len;
    let data = new swarmstatereqRequest(null);
    // Deserialize message field [pass]
    data.pass = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/swarmstatereqRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e370fd289e7d098aaf730ef08ac3ee10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 pass
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new swarmstatereqRequest(null);
    if (msg.pass !== undefined) {
      resolved.pass = msg.pass;
    }
    else {
      resolved.pass = 0
    }

    return resolved;
    }
};

class swarmstatereqResponse {
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
    // Serializes a message object of type swarmstatereqResponse
    // Serialize message field [swarmstate]
    bufferOffset = swarmstate.serialize(obj.swarmstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type swarmstatereqResponse
    let len;
    let data = new swarmstatereqResponse(null);
    // Deserialize message field [swarmstate]
    data.swarmstate = swarmstate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'behaviour/swarmstatereqResponse';
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
    const resolved = new swarmstatereqResponse(null);
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
  Request: swarmstatereqRequest,
  Response: swarmstatereqResponse,
  md5sum() { return 'dcdc0995a6c9d0a85436f9cd484b8d9c'; },
  datatype() { return 'behaviour/swarmstatereq'; }
};
