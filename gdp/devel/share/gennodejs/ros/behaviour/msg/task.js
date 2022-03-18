// Auto-generated. Do not edit!

// (in-package behaviour.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let task_geometry = require('./task_geometry.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class task {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.task_id = null;
      this.task_geometry = null;
      this.allocated = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('task_geometry')) {
        this.task_geometry = initObj.task_geometry
      }
      else {
        this.task_geometry = new task_geometry();
      }
      if (initObj.hasOwnProperty('allocated')) {
        this.allocated = initObj.allocated
      }
      else {
        this.allocated = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type task
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.int8(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_geometry]
    bufferOffset = task_geometry.serialize(obj.task_geometry, buffer, bufferOffset);
    // Serialize message field [allocated]
    bufferOffset = _serializer.int8(obj.allocated, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type task
    let len;
    let data = new task(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [task_geometry]
    data.task_geometry = task_geometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [allocated]
    data.allocated = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += task_geometry.getMessageSize(object.task_geometry);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/task';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d31710c0e937328d90b6fc9fdf8068e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int8 task_id
    task_geometry task_geometry
    int8 allocated
    int8 type
    
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
    string frame_id
    
    ================================================================================
    MSG: behaviour/task_geometry
    Header header
    float64 lat
    float64 lon
    float32 alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new task(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.task_geometry !== undefined) {
      resolved.task_geometry = task_geometry.Resolve(msg.task_geometry)
    }
    else {
      resolved.task_geometry = new task_geometry()
    }

    if (msg.allocated !== undefined) {
      resolved.allocated = msg.allocated;
    }
    else {
      resolved.allocated = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = task;
