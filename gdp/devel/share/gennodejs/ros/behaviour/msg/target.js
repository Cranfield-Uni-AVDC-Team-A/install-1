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

class target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.detectorid = null;
      this.detectortype = null;
      this.messagetime = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.clas = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0.0;
      }
      if (initObj.hasOwnProperty('detectorid')) {
        this.detectorid = initObj.detectorid
      }
      else {
        this.detectorid = 0;
      }
      if (initObj.hasOwnProperty('detectortype')) {
        this.detectortype = initObj.detectortype
      }
      else {
        this.detectortype = 0;
      }
      if (initObj.hasOwnProperty('messagetime')) {
        this.messagetime = initObj.messagetime
      }
      else {
        this.messagetime = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('clas')) {
        this.clas = initObj.clas
      }
      else {
        this.clas = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.float64(obj.id, buffer, bufferOffset);
    // Serialize message field [detectorid]
    bufferOffset = _serializer.int8(obj.detectorid, buffer, bufferOffset);
    // Serialize message field [detectortype]
    bufferOffset = _serializer.int8(obj.detectortype, buffer, bufferOffset);
    // Serialize message field [messagetime]
    bufferOffset = _serializer.float64(obj.messagetime, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float32(obj.alt, buffer, bufferOffset);
    // Serialize message field [clas]
    bufferOffset = _serializer.int8(obj.clas, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target
    let len;
    let data = new target(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [detectorid]
    data.detectorid = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [detectortype]
    data.detectortype = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [messagetime]
    data.messagetime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [clas]
    data.clas = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a14509c50e32bd3f512cb2569673bbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 id
    int8 detectorid
    int8 detectortype
    float64 messagetime
    float64 lat
    float64 lon
    float32 alt
    int8 clas
    float32 confidence
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
    const resolved = new target(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0.0
    }

    if (msg.detectorid !== undefined) {
      resolved.detectorid = msg.detectorid;
    }
    else {
      resolved.detectorid = 0
    }

    if (msg.detectortype !== undefined) {
      resolved.detectortype = msg.detectortype;
    }
    else {
      resolved.detectortype = 0
    }

    if (msg.messagetime !== undefined) {
      resolved.messagetime = msg.messagetime;
    }
    else {
      resolved.messagetime = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.clas !== undefined) {
      resolved.clas = msg.clas;
    }
    else {
      resolved.clas = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = target;
