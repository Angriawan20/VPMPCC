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

class LapData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lap_count = null;
      this.lap_time = null;
      this.average_lateral_error_to_global_waypoints = null;
      this.max_lateral_error_to_global_waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lap_count')) {
        this.lap_count = initObj.lap_count
      }
      else {
        this.lap_count = 0;
      }
      if (initObj.hasOwnProperty('lap_time')) {
        this.lap_time = initObj.lap_time
      }
      else {
        this.lap_time = 0.0;
      }
      if (initObj.hasOwnProperty('average_lateral_error_to_global_waypoints')) {
        this.average_lateral_error_to_global_waypoints = initObj.average_lateral_error_to_global_waypoints
      }
      else {
        this.average_lateral_error_to_global_waypoints = 0.0;
      }
      if (initObj.hasOwnProperty('max_lateral_error_to_global_waypoints')) {
        this.max_lateral_error_to_global_waypoints = initObj.max_lateral_error_to_global_waypoints
      }
      else {
        this.max_lateral_error_to_global_waypoints = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LapData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lap_count]
    bufferOffset = _serializer.int32(obj.lap_count, buffer, bufferOffset);
    // Serialize message field [lap_time]
    bufferOffset = _serializer.float64(obj.lap_time, buffer, bufferOffset);
    // Serialize message field [average_lateral_error_to_global_waypoints]
    bufferOffset = _serializer.float64(obj.average_lateral_error_to_global_waypoints, buffer, bufferOffset);
    // Serialize message field [max_lateral_error_to_global_waypoints]
    bufferOffset = _serializer.float64(obj.max_lateral_error_to_global_waypoints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LapData
    let len;
    let data = new LapData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lap_count]
    data.lap_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lap_time]
    data.lap_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [average_lateral_error_to_global_waypoints]
    data.average_lateral_error_to_global_waypoints = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_lateral_error_to_global_waypoints]
    data.max_lateral_error_to_global_waypoints = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/LapData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5725d7beb0cea6dca3c2632d8748505b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    int32 lap_count 
    float64 lap_time
    float64 average_lateral_error_to_global_waypoints
    float64 max_lateral_error_to_global_waypoints
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
    const resolved = new LapData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lap_count !== undefined) {
      resolved.lap_count = msg.lap_count;
    }
    else {
      resolved.lap_count = 0
    }

    if (msg.lap_time !== undefined) {
      resolved.lap_time = msg.lap_time;
    }
    else {
      resolved.lap_time = 0.0
    }

    if (msg.average_lateral_error_to_global_waypoints !== undefined) {
      resolved.average_lateral_error_to_global_waypoints = msg.average_lateral_error_to_global_waypoints;
    }
    else {
      resolved.average_lateral_error_to_global_waypoints = 0.0
    }

    if (msg.max_lateral_error_to_global_waypoints !== undefined) {
      resolved.max_lateral_error_to_global_waypoints = msg.max_lateral_error_to_global_waypoints;
    }
    else {
      resolved.max_lateral_error_to_global_waypoints = 0.0
    }

    return resolved;
    }
};

module.exports = LapData;
