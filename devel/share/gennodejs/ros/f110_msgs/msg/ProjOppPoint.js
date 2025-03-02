// Auto-generated. Do not edit!

// (in-package f110_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProjOppPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.d = null;
      this.vs = null;
      this.vd = null;
      this.is_static = null;
      this.is_visible = null;
      this.time = null;
      this.s_var = null;
      this.d_var = null;
      this.vs_var = null;
      this.vd_var = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
      if (initObj.hasOwnProperty('vs')) {
        this.vs = initObj.vs
      }
      else {
        this.vs = 0.0;
      }
      if (initObj.hasOwnProperty('vd')) {
        this.vd = initObj.vd
      }
      else {
        this.vd = 0.0;
      }
      if (initObj.hasOwnProperty('is_static')) {
        this.is_static = initObj.is_static
      }
      else {
        this.is_static = false;
      }
      if (initObj.hasOwnProperty('is_visible')) {
        this.is_visible = initObj.is_visible
      }
      else {
        this.is_visible = false;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('s_var')) {
        this.s_var = initObj.s_var
      }
      else {
        this.s_var = 0.0;
      }
      if (initObj.hasOwnProperty('d_var')) {
        this.d_var = initObj.d_var
      }
      else {
        this.d_var = 0.0;
      }
      if (initObj.hasOwnProperty('vs_var')) {
        this.vs_var = initObj.vs_var
      }
      else {
        this.vs_var = 0.0;
      }
      if (initObj.hasOwnProperty('vd_var')) {
        this.vd_var = initObj.vd_var
      }
      else {
        this.vd_var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProjOppPoint
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float64(obj.d, buffer, bufferOffset);
    // Serialize message field [vs]
    bufferOffset = _serializer.float64(obj.vs, buffer, bufferOffset);
    // Serialize message field [vd]
    bufferOffset = _serializer.float64(obj.vd, buffer, bufferOffset);
    // Serialize message field [is_static]
    bufferOffset = _serializer.bool(obj.is_static, buffer, bufferOffset);
    // Serialize message field [is_visible]
    bufferOffset = _serializer.bool(obj.is_visible, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [s_var]
    bufferOffset = _serializer.float64(obj.s_var, buffer, bufferOffset);
    // Serialize message field [d_var]
    bufferOffset = _serializer.float64(obj.d_var, buffer, bufferOffset);
    // Serialize message field [vs_var]
    bufferOffset = _serializer.float64(obj.vs_var, buffer, bufferOffset);
    // Serialize message field [vd_var]
    bufferOffset = _serializer.float64(obj.vd_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProjOppPoint
    let len;
    let data = new ProjOppPoint(null);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vs]
    data.vs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vd]
    data.vd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_static]
    data.is_static = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_visible]
    data.is_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s_var]
    data.s_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_var]
    data.d_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vs_var]
    data.vs_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vd_var]
    data.vd_var = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/ProjOppPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eda6871c789332f821761fdc46c611e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ProjOppPoint(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    if (msg.vs !== undefined) {
      resolved.vs = msg.vs;
    }
    else {
      resolved.vs = 0.0
    }

    if (msg.vd !== undefined) {
      resolved.vd = msg.vd;
    }
    else {
      resolved.vd = 0.0
    }

    if (msg.is_static !== undefined) {
      resolved.is_static = msg.is_static;
    }
    else {
      resolved.is_static = false
    }

    if (msg.is_visible !== undefined) {
      resolved.is_visible = msg.is_visible;
    }
    else {
      resolved.is_visible = false
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.s_var !== undefined) {
      resolved.s_var = msg.s_var;
    }
    else {
      resolved.s_var = 0.0
    }

    if (msg.d_var !== undefined) {
      resolved.d_var = msg.d_var;
    }
    else {
      resolved.d_var = 0.0
    }

    if (msg.vs_var !== undefined) {
      resolved.vs_var = msg.vs_var;
    }
    else {
      resolved.vs_var = 0.0
    }

    if (msg.vd_var !== undefined) {
      resolved.vd_var = msg.vd_var;
    }
    else {
      resolved.vd_var = 0.0
    }

    return resolved;
    }
};

module.exports = ProjOppPoint;
