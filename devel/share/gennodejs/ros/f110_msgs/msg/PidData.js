// Auto-generated. Do not edit!

// (in-package f110_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PidData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.should = null;
      this.actual = null;
      this.error = null;
      this.d_value = null;
      this.i_value = null;
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('should')) {
        this.should = initObj.should
      }
      else {
        this.should = 0.0;
      }
      if (initObj.hasOwnProperty('actual')) {
        this.actual = initObj.actual
      }
      else {
        this.actual = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
      if (initObj.hasOwnProperty('d_value')) {
        this.d_value = initObj.d_value
      }
      else {
        this.d_value = 0.0;
      }
      if (initObj.hasOwnProperty('i_value')) {
        this.i_value = initObj.i_value
      }
      else {
        this.i_value = 0.0;
      }
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [should]
    bufferOffset = _serializer.float64(obj.should, buffer, bufferOffset);
    // Serialize message field [actual]
    bufferOffset = _serializer.float64(obj.actual, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float64(obj.error, buffer, bufferOffset);
    // Serialize message field [d_value]
    bufferOffset = _serializer.float64(obj.d_value, buffer, bufferOffset);
    // Serialize message field [i_value]
    bufferOffset = _serializer.float64(obj.i_value, buffer, bufferOffset);
    // Serialize message field [input]
    bufferOffset = _serializer.float64(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidData
    let len;
    let data = new PidData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [should]
    data.should = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actual]
    data.actual = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_value]
    data.d_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [i_value]
    data.i_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [input]
    data.input = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/PidData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06660779b958c3109e9e68b5c0a7b096';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 should
    float64 actual
    float64 error
    float64 d_value
    float64 i_value
    float64 input
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
    const resolved = new PidData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.should !== undefined) {
      resolved.should = msg.should;
    }
    else {
      resolved.should = 0.0
    }

    if (msg.actual !== undefined) {
      resolved.actual = msg.actual;
    }
    else {
      resolved.actual = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    if (msg.d_value !== undefined) {
      resolved.d_value = msg.d_value;
    }
    else {
      resolved.d_value = 0.0
    }

    if (msg.i_value !== undefined) {
      resolved.i_value = msg.i_value;
    }
    else {
      resolved.i_value = 0.0
    }

    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = 0.0
    }

    return resolved;
    }
};

module.exports = PidData;
