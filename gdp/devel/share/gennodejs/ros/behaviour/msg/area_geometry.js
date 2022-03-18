// Auto-generated. Do not edit!

// (in-package behaviour.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class area_geometry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.points = null;
      this.lat1 = null;
      this.lat2 = null;
      this.lat3 = null;
      this.lat4 = null;
      this.lon1 = null;
      this.lon2 = null;
      this.lon3 = null;
      this.lon4 = null;
      this.alt1 = null;
      this.alt2 = null;
      this.alt3 = null;
      this.alt4 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = 0;
      }
      if (initObj.hasOwnProperty('lat1')) {
        this.lat1 = initObj.lat1
      }
      else {
        this.lat1 = 0.0;
      }
      if (initObj.hasOwnProperty('lat2')) {
        this.lat2 = initObj.lat2
      }
      else {
        this.lat2 = 0.0;
      }
      if (initObj.hasOwnProperty('lat3')) {
        this.lat3 = initObj.lat3
      }
      else {
        this.lat3 = 0.0;
      }
      if (initObj.hasOwnProperty('lat4')) {
        this.lat4 = initObj.lat4
      }
      else {
        this.lat4 = 0.0;
      }
      if (initObj.hasOwnProperty('lon1')) {
        this.lon1 = initObj.lon1
      }
      else {
        this.lon1 = 0.0;
      }
      if (initObj.hasOwnProperty('lon2')) {
        this.lon2 = initObj.lon2
      }
      else {
        this.lon2 = 0.0;
      }
      if (initObj.hasOwnProperty('lon3')) {
        this.lon3 = initObj.lon3
      }
      else {
        this.lon3 = 0.0;
      }
      if (initObj.hasOwnProperty('lon4')) {
        this.lon4 = initObj.lon4
      }
      else {
        this.lon4 = 0.0;
      }
      if (initObj.hasOwnProperty('alt1')) {
        this.alt1 = initObj.alt1
      }
      else {
        this.alt1 = 0.0;
      }
      if (initObj.hasOwnProperty('alt2')) {
        this.alt2 = initObj.alt2
      }
      else {
        this.alt2 = 0.0;
      }
      if (initObj.hasOwnProperty('alt3')) {
        this.alt3 = initObj.alt3
      }
      else {
        this.alt3 = 0.0;
      }
      if (initObj.hasOwnProperty('alt4')) {
        this.alt4 = initObj.alt4
      }
      else {
        this.alt4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type area_geometry
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [points]
    bufferOffset = _serializer.int8(obj.points, buffer, bufferOffset);
    // Serialize message field [lat1]
    bufferOffset = _serializer.float64(obj.lat1, buffer, bufferOffset);
    // Serialize message field [lat2]
    bufferOffset = _serializer.float64(obj.lat2, buffer, bufferOffset);
    // Serialize message field [lat3]
    bufferOffset = _serializer.float64(obj.lat3, buffer, bufferOffset);
    // Serialize message field [lat4]
    bufferOffset = _serializer.float64(obj.lat4, buffer, bufferOffset);
    // Serialize message field [lon1]
    bufferOffset = _serializer.float64(obj.lon1, buffer, bufferOffset);
    // Serialize message field [lon2]
    bufferOffset = _serializer.float64(obj.lon2, buffer, bufferOffset);
    // Serialize message field [lon3]
    bufferOffset = _serializer.float64(obj.lon3, buffer, bufferOffset);
    // Serialize message field [lon4]
    bufferOffset = _serializer.float64(obj.lon4, buffer, bufferOffset);
    // Serialize message field [alt1]
    bufferOffset = _serializer.float32(obj.alt1, buffer, bufferOffset);
    // Serialize message field [alt2]
    bufferOffset = _serializer.float32(obj.alt2, buffer, bufferOffset);
    // Serialize message field [alt3]
    bufferOffset = _serializer.float32(obj.alt3, buffer, bufferOffset);
    // Serialize message field [alt4]
    bufferOffset = _serializer.float32(obj.alt4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type area_geometry
    let len;
    let data = new area_geometry(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    data.points = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lat1]
    data.lat1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat2]
    data.lat2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat3]
    data.lat3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat4]
    data.lat4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon1]
    data.lon1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon2]
    data.lon2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon3]
    data.lon3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon4]
    data.lon4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt1]
    data.alt1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt2]
    data.alt2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt3]
    data.alt3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt4]
    data.alt4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 81;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/area_geometry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da2d0d4b375b18348bd16d548b3bb2d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int8 points
    float64 lat1
    float64 lat2
    float64 lat3
    float64 lat4
    float64 lon1
    float64 lon2
    float64 lon3
    float64 lon4
    float32 alt1
    float32 alt2
    float32 alt3
    float32 alt4
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new area_geometry(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.points !== undefined) {
      resolved.points = msg.points;
    }
    else {
      resolved.points = 0
    }

    if (msg.lat1 !== undefined) {
      resolved.lat1 = msg.lat1;
    }
    else {
      resolved.lat1 = 0.0
    }

    if (msg.lat2 !== undefined) {
      resolved.lat2 = msg.lat2;
    }
    else {
      resolved.lat2 = 0.0
    }

    if (msg.lat3 !== undefined) {
      resolved.lat3 = msg.lat3;
    }
    else {
      resolved.lat3 = 0.0
    }

    if (msg.lat4 !== undefined) {
      resolved.lat4 = msg.lat4;
    }
    else {
      resolved.lat4 = 0.0
    }

    if (msg.lon1 !== undefined) {
      resolved.lon1 = msg.lon1;
    }
    else {
      resolved.lon1 = 0.0
    }

    if (msg.lon2 !== undefined) {
      resolved.lon2 = msg.lon2;
    }
    else {
      resolved.lon2 = 0.0
    }

    if (msg.lon3 !== undefined) {
      resolved.lon3 = msg.lon3;
    }
    else {
      resolved.lon3 = 0.0
    }

    if (msg.lon4 !== undefined) {
      resolved.lon4 = msg.lon4;
    }
    else {
      resolved.lon4 = 0.0
    }

    if (msg.alt1 !== undefined) {
      resolved.alt1 = msg.alt1;
    }
    else {
      resolved.alt1 = 0.0
    }

    if (msg.alt2 !== undefined) {
      resolved.alt2 = msg.alt2;
    }
    else {
      resolved.alt2 = 0.0
    }

    if (msg.alt3 !== undefined) {
      resolved.alt3 = msg.alt3;
    }
    else {
      resolved.alt3 = 0.0
    }

    if (msg.alt4 !== undefined) {
      resolved.alt4 = msg.alt4;
    }
    else {
      resolved.alt4 = 0.0
    }

    return resolved;
    }
};

module.exports = area_geometry;
