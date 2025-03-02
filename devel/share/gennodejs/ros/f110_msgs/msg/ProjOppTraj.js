// Auto-generated. Do not edit!

// (in-package f110_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProjOppPoint = require('./ProjOppPoint.js');

//-----------------------------------------------------------

class ProjOppTraj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lapcount = null;
      this.nrofpoints = null;
      this.opp_is_on_trajectory = null;
      this.detections = null;
    }
    else {
      if (initObj.hasOwnProperty('lapcount')) {
        this.lapcount = initObj.lapcount
      }
      else {
        this.lapcount = 0.0;
      }
      if (initObj.hasOwnProperty('nrofpoints')) {
        this.nrofpoints = initObj.nrofpoints
      }
      else {
        this.nrofpoints = 0.0;
      }
      if (initObj.hasOwnProperty('opp_is_on_trajectory')) {
        this.opp_is_on_trajectory = initObj.opp_is_on_trajectory
      }
      else {
        this.opp_is_on_trajectory = false;
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProjOppTraj
    // Serialize message field [lapcount]
    bufferOffset = _serializer.float64(obj.lapcount, buffer, bufferOffset);
    // Serialize message field [nrofpoints]
    bufferOffset = _serializer.float64(obj.nrofpoints, buffer, bufferOffset);
    // Serialize message field [opp_is_on_trajectory]
    bufferOffset = _serializer.bool(obj.opp_is_on_trajectory, buffer, bufferOffset);
    // Serialize message field [detections]
    // Serialize the length for message field [detections]
    bufferOffset = _serializer.uint32(obj.detections.length, buffer, bufferOffset);
    obj.detections.forEach((val) => {
      bufferOffset = ProjOppPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProjOppTraj
    let len;
    let data = new ProjOppTraj(null);
    // Deserialize message field [lapcount]
    data.lapcount = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nrofpoints]
    data.nrofpoints = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [opp_is_on_trajectory]
    data.opp_is_on_trajectory = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [detections]
    // Deserialize array length for message field [detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detections[i] = ProjOppPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 74 * object.detections.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/ProjOppTraj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '499738ff330d861f27f97c2965929bae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 lapcount
    float64 nrofpoints
    bool opp_is_on_trajectory
    ProjOppPoint[] detections
    ================================================================================
    MSG: f110_msgs/ProjOppPoint
    #Velocities are projected onto ego race line
    
    float64 s
    float64 d                       
    float64 vs
    float64 vd
    bool is_static
    bool is_visible
    float64 time
    float64 s_var
    float64 d_var
    float64 vs_var
    float64 vd_var
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProjOppTraj(null);
    if (msg.lapcount !== undefined) {
      resolved.lapcount = msg.lapcount;
    }
    else {
      resolved.lapcount = 0.0
    }

    if (msg.nrofpoints !== undefined) {
      resolved.nrofpoints = msg.nrofpoints;
    }
    else {
      resolved.nrofpoints = 0.0
    }

    if (msg.opp_is_on_trajectory !== undefined) {
      resolved.opp_is_on_trajectory = msg.opp_is_on_trajectory;
    }
    else {
      resolved.opp_is_on_trajectory = false
    }

    if (msg.detections !== undefined) {
      resolved.detections = new Array(msg.detections.length);
      for (let i = 0; i < resolved.detections.length; ++i) {
        resolved.detections[i] = ProjOppPoint.Resolve(msg.detections[i]);
      }
    }
    else {
      resolved.detections = []
    }

    return resolved;
    }
};

module.exports = ProjOppTraj;
