// Auto-generated. Do not edit!

// (in-package behaviour.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let drone_state = require('./drone_state.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class members {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_states = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_states')) {
        this.drone_states = initObj.drone_states
      }
      else {
        this.drone_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type members
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_states]
    // Serialize the length for message field [drone_states]
    bufferOffset = _serializer.uint32(obj.drone_states.length, buffer, bufferOffset);
    obj.drone_states.forEach((val) => {
      bufferOffset = drone_state.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type members
    let len;
    let data = new members(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_states]
    // Deserialize array length for message field [drone_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drone_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drone_states[i] = drone_state.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.drone_states.forEach((val) => {
      length += drone_state.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/members';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2196bf9ce28bd860ccf7a719e388ff5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    drone_state[] drone_states
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
    MSG: behaviour/drone_state
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
    const resolved = new members(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_states !== undefined) {
      resolved.drone_states = new Array(msg.drone_states.length);
      for (let i = 0; i < resolved.drone_states.length; ++i) {
        resolved.drone_states[i] = drone_state.Resolve(msg.drone_states[i]);
      }
    }
    else {
      resolved.drone_states = []
    }

    return resolved;
    }
};

module.exports = members;
