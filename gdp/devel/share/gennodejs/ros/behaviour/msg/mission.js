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

class mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.points = null;
      this.lat1 = null;
      this.lat2 = null;
      this.lat3 = null;
      this.lat4 = null;
      this.lat5 = null;
      this.lat6 = null;
      this.lat7 = null;
      this.lat8 = null;
      this.lon1 = null;
      this.lon2 = null;
      this.lon3 = null;
      this.lon4 = null;
      this.lon5 = null;
      this.lon6 = null;
      this.lon7 = null;
      this.lon8 = null;
      this.alt1 = null;
      this.alt2 = null;
      this.alt3 = null;
      this.alt4 = null;
      this.alt5 = null;
      this.alt6 = null;
      this.alt7 = null;
      this.alt8 = null;
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
      if (initObj.hasOwnProperty('lat5')) {
        this.lat5 = initObj.lat5
      }
      else {
        this.lat5 = 0.0;
      }
      if (initObj.hasOwnProperty('lat6')) {
        this.lat6 = initObj.lat6
      }
      else {
        this.lat6 = 0.0;
      }
      if (initObj.hasOwnProperty('lat7')) {
        this.lat7 = initObj.lat7
      }
      else {
        this.lat7 = 0.0;
      }
      if (initObj.hasOwnProperty('lat8')) {
        this.lat8 = initObj.lat8
      }
      else {
        this.lat8 = 0.0;
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
      if (initObj.hasOwnProperty('lon5')) {
        this.lon5 = initObj.lon5
      }
      else {
        this.lon5 = 0.0;
      }
      if (initObj.hasOwnProperty('lon6')) {
        this.lon6 = initObj.lon6
      }
      else {
        this.lon6 = 0.0;
      }
      if (initObj.hasOwnProperty('lon7')) {
        this.lon7 = initObj.lon7
      }
      else {
        this.lon7 = 0.0;
      }
      if (initObj.hasOwnProperty('lon8')) {
        this.lon8 = initObj.lon8
      }
      else {
        this.lon8 = 0.0;
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
      if (initObj.hasOwnProperty('alt5')) {
        this.alt5 = initObj.alt5
      }
      else {
        this.alt5 = 0.0;
      }
      if (initObj.hasOwnProperty('alt6')) {
        this.alt6 = initObj.alt6
      }
      else {
        this.alt6 = 0.0;
      }
      if (initObj.hasOwnProperty('alt7')) {
        this.alt7 = initObj.alt7
      }
      else {
        this.alt7 = 0.0;
      }
      if (initObj.hasOwnProperty('alt8')) {
        this.alt8 = initObj.alt8
      }
      else {
        this.alt8 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission
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
    // Serialize message field [lat5]
    bufferOffset = _serializer.float64(obj.lat5, buffer, bufferOffset);
    // Serialize message field [lat6]
    bufferOffset = _serializer.float64(obj.lat6, buffer, bufferOffset);
    // Serialize message field [lat7]
    bufferOffset = _serializer.float64(obj.lat7, buffer, bufferOffset);
    // Serialize message field [lat8]
    bufferOffset = _serializer.float64(obj.lat8, buffer, bufferOffset);
    // Serialize message field [lon1]
    bufferOffset = _serializer.float64(obj.lon1, buffer, bufferOffset);
    // Serialize message field [lon2]
    bufferOffset = _serializer.float64(obj.lon2, buffer, bufferOffset);
    // Serialize message field [lon3]
    bufferOffset = _serializer.float64(obj.lon3, buffer, bufferOffset);
    // Serialize message field [lon4]
    bufferOffset = _serializer.float64(obj.lon4, buffer, bufferOffset);
    // Serialize message field [lon5]
    bufferOffset = _serializer.float64(obj.lon5, buffer, bufferOffset);
    // Serialize message field [lon6]
    bufferOffset = _serializer.float64(obj.lon6, buffer, bufferOffset);
    // Serialize message field [lon7]
    bufferOffset = _serializer.float64(obj.lon7, buffer, bufferOffset);
    // Serialize message field [lon8]
    bufferOffset = _serializer.float64(obj.lon8, buffer, bufferOffset);
    // Serialize message field [alt1]
    bufferOffset = _serializer.float32(obj.alt1, buffer, bufferOffset);
    // Serialize message field [alt2]
    bufferOffset = _serializer.float32(obj.alt2, buffer, bufferOffset);
    // Serialize message field [alt3]
    bufferOffset = _serializer.float32(obj.alt3, buffer, bufferOffset);
    // Serialize message field [alt4]
    bufferOffset = _serializer.float32(obj.alt4, buffer, bufferOffset);
    // Serialize message field [alt5]
    bufferOffset = _serializer.float32(obj.alt5, buffer, bufferOffset);
    // Serialize message field [alt6]
    bufferOffset = _serializer.float32(obj.alt6, buffer, bufferOffset);
    // Serialize message field [alt7]
    bufferOffset = _serializer.float32(obj.alt7, buffer, bufferOffset);
    // Serialize message field [alt8]
    bufferOffset = _serializer.float32(obj.alt8, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission
    let len;
    let data = new mission(null);
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
    // Deserialize message field [lat5]
    data.lat5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat6]
    data.lat6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat7]
    data.lat7 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat8]
    data.lat8 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon1]
    data.lon1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon2]
    data.lon2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon3]
    data.lon3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon4]
    data.lon4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon5]
    data.lon5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon6]
    data.lon6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon7]
    data.lon7 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon8]
    data.lon8 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt1]
    data.alt1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt2]
    data.alt2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt3]
    data.alt3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt4]
    data.alt4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt5]
    data.alt5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt6]
    data.alt6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt7]
    data.alt7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt8]
    data.alt8 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 161;
  }

  static datatype() {
    // Returns string type for a message object
    return 'behaviour/mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f50631df6e5a5b429641093d499b4615';
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
    float64 lat5
    float64 lat6
    float64 lat7
    float64 lat8
    float64 lon1
    float64 lon2
    float64 lon3
    float64 lon4
    float64 lon5
    float64 lon6
    float64 lon7
    float64 lon8
    float32 alt1
    float32 alt2
    float32 alt3
    float32 alt4
    float32 alt5
    float32 alt6
    float32 alt7
    float32 alt8
    
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
    const resolved = new mission(null);
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

    if (msg.lat5 !== undefined) {
      resolved.lat5 = msg.lat5;
    }
    else {
      resolved.lat5 = 0.0
    }

    if (msg.lat6 !== undefined) {
      resolved.lat6 = msg.lat6;
    }
    else {
      resolved.lat6 = 0.0
    }

    if (msg.lat7 !== undefined) {
      resolved.lat7 = msg.lat7;
    }
    else {
      resolved.lat7 = 0.0
    }

    if (msg.lat8 !== undefined) {
      resolved.lat8 = msg.lat8;
    }
    else {
      resolved.lat8 = 0.0
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

    if (msg.lon5 !== undefined) {
      resolved.lon5 = msg.lon5;
    }
    else {
      resolved.lon5 = 0.0
    }

    if (msg.lon6 !== undefined) {
      resolved.lon6 = msg.lon6;
    }
    else {
      resolved.lon6 = 0.0
    }

    if (msg.lon7 !== undefined) {
      resolved.lon7 = msg.lon7;
    }
    else {
      resolved.lon7 = 0.0
    }

    if (msg.lon8 !== undefined) {
      resolved.lon8 = msg.lon8;
    }
    else {
      resolved.lon8 = 0.0
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

    if (msg.alt5 !== undefined) {
      resolved.alt5 = msg.alt5;
    }
    else {
      resolved.alt5 = 0.0
    }

    if (msg.alt6 !== undefined) {
      resolved.alt6 = msg.alt6;
    }
    else {
      resolved.alt6 = 0.0
    }

    if (msg.alt7 !== undefined) {
      resolved.alt7 = msg.alt7;
    }
    else {
      resolved.alt7 = 0.0
    }

    if (msg.alt8 !== undefined) {
      resolved.alt8 = msg.alt8;
    }
    else {
      resolved.alt8 = 0.0
    }

    return resolved;
    }
};

module.exports = mission;
