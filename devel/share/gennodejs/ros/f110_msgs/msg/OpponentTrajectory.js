// Auto-generated. Do not edit!

// (in-package f110_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OppWpnt = require('./OppWpnt.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OpponentTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lap_count = null;
      this.opp_is_on_trajectory = null;
      this.oppwpnts = null;
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
        this.lap_count = 0.0;
      }
      if (initObj.hasOwnProperty('opp_is_on_trajectory')) {
        this.opp_is_on_trajectory = initObj.opp_is_on_trajectory
      }
      else {
        this.opp_is_on_trajectory = false;
      }
      if (initObj.hasOwnProperty('oppwpnts')) {
        this.oppwpnts = initObj.oppwpnts
      }
      else {
        this.oppwpnts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpponentTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lap_count]
    bufferOffset = _serializer.float64(obj.lap_count, buffer, bufferOffset);
    // Serialize message field [opp_is_on_trajectory]
    bufferOffset = _serializer.bool(obj.opp_is_on_trajectory, buffer, bufferOffset);
    // Serialize message field [oppwpnts]
    // Serialize the length for message field [oppwpnts]
    bufferOffset = _serializer.uint32(obj.oppwpnts.length, buffer, bufferOffset);
    obj.oppwpnts.forEach((val) => {
      bufferOffset = OppWpnt.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpponentTrajectory
    let len;
    let data = new OpponentTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lap_count]
    data.lap_count = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [opp_is_on_trajectory]
    data.opp_is_on_trajectory = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [oppwpnts]
    // Deserialize array length for message field [oppwpnts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.oppwpnts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.oppwpnts[i] = OppWpnt.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 68 * object.oppwpnts.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/OpponentTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe4d653bec85c82c41a017b9bdc2a6f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 lap_count
    bool opp_is_on_trajectory
    OppWpnt[] oppwpnts
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
    MSG: f110_msgs/OppWpnt
    int32 id
    
    # frenet coordinates
    float64 s_m
    float64 d_m
    
    # map coordinates
    float64 x_m
    float64 y_m
    
    # track information
    float64 proj_vs_mps
    float64 vd_mps
    
    #variance  
    float64 d_var
    float64 vs_var
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OpponentTrajectory(null);
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
      resolved.lap_count = 0.0
    }

    if (msg.opp_is_on_trajectory !== undefined) {
      resolved.opp_is_on_trajectory = msg.opp_is_on_trajectory;
    }
    else {
      resolved.opp_is_on_trajectory = false
    }

    if (msg.oppwpnts !== undefined) {
      resolved.oppwpnts = new Array(msg.oppwpnts.length);
      for (let i = 0; i < resolved.oppwpnts.length; ++i) {
        resolved.oppwpnts[i] = OppWpnt.Resolve(msg.oppwpnts[i]);
      }
    }
    else {
      resolved.oppwpnts = []
    }

    return resolved;
    }
};

module.exports = OpponentTrajectory;
