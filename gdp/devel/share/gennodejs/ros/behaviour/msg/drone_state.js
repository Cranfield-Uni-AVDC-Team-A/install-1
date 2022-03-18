// Auto-generated. Do not edit!

// (in-package behaviour.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let drone_geometry = require('./drone_geometry.js');
let score = require('./score.js');
let task = require('./task.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class drone_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_id = null;
      this.mode = null;
      this.type = null;
      this.messagetime = null;
      this.drone_geometry = null;
      this.battery = null;
      this.drone_soh = null;
      this.score = null;
      this.task = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('messagetime')) {
        this.messagetime = initObj.messagetime
      }
      else {
        this.messagetime = 0.0;
      }
      if (initObj.hasOwnProperty('drone_geometry')) {
        this.drone_geometry = initObj.drone_geometry
      }
      else {
        this.drone_geometry = new drone_geometry();
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0;
      }
      if (initObj.hasOwnProperty('drone_soh')) {
        this.drone_soh = initObj.drone_soh
      }
      else {
        this.drone_soh = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = new score();
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = new task();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone_state
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.int8(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [messagetime]
    bufferOffset = _serializer.float64(obj.messagetime, buffer, bufferOffset);
    // Serialize message field [drone_geometry]
    bufferOffset = drone_geometry.serialize(obj.drone_geometry, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.int8(obj.battery, buffer, bufferOffset);
    // Serialize message field [drone_soh]
    bufferOffset = _serializer.int8(obj.drone_soh, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = score.serialize(obj.score, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = task.serialize(obj.task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_state
    let len;
    let data = new drone_state(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [messagetime]
    data.messagetime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [drone_geometry]
    data.drone_geometry = drone_geometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [drone_soh]
    data.drone_soh = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = score.deserialize(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = task.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += drone_geometry.getMessageSize(object.drone_geometry);
    length += score.getMessageSize(object.score);
    length += task.getMessageSize(object.task);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/drone_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5309d0e3c8a877ad2b981cbca29cefc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int8 drone_id
    int8 mode
    int8 type
    float64 messagetime
    drone_geometry drone_geometry
    int8 battery
    int8 drone_soh
    score score
    task task
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
    MSG: behaviour/drone_geometry
    Header header
    float64 lat
    float64 lon
    float32 alt
    float32 yaw
    float32 roll
    float32 pitch
    ================================================================================
    MSG: behaviour/score
    Header header
    int8 drone_id
    int8 task_id
    float32 score
    
    ================================================================================
    MSG: behaviour/task
    Header header
    int8 task_id
    task_geometry task_geometry
    int8 allocated
    int8 type
    
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
    const resolved = new drone_state(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.messagetime !== undefined) {
      resolved.messagetime = msg.messagetime;
    }
    else {
      resolved.messagetime = 0.0
    }

    if (msg.drone_geometry !== undefined) {
      resolved.drone_geometry = drone_geometry.Resolve(msg.drone_geometry)
    }
    else {
      resolved.drone_geometry = new drone_geometry()
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0
    }

    if (msg.drone_soh !== undefined) {
      resolved.drone_soh = msg.drone_soh;
    }
    else {
      resolved.drone_soh = 0
    }

    if (msg.score !== undefined) {
      resolved.score = score.Resolve(msg.score)
    }
    else {
      resolved.score = new score()
    }

    if (msg.task !== undefined) {
      resolved.task = task.Resolve(msg.task)
    }
    else {
      resolved.task = new task()
    }

    return resolved;
    }
};

module.exports = drone_state;
