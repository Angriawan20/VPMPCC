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

class OppWpnt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.s_m = null;
      this.d_m = null;
      this.x_m = null;
      this.y_m = null;
      this.proj_vs_mps = null;
      this.vd_mps = null;
      this.d_var = null;
      this.vs_var = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('s_m')) {
        this.s_m = initObj.s_m
      }
      else {
        this.s_m = 0.0;
      }
      if (initObj.hasOwnProperty('d_m')) {
        this.d_m = initObj.d_m
      }
      else {
        this.d_m = 0.0;
      }
      if (initObj.hasOwnProperty('x_m')) {
        this.x_m = initObj.x_m
      }
      else {
        this.x_m = 0.0;
      }
      if (initObj.hasOwnProperty('y_m')) {
        this.y_m = initObj.y_m
      }
      else {
        this.y_m = 0.0;
      }
      if (initObj.hasOwnProperty('proj_vs_mps')) {
        this.proj_vs_mps = initObj.proj_vs_mps
      }
      else {
        this.proj_vs_mps = 0.0;
      }
      if (initObj.hasOwnProperty('vd_mps')) {
        this.vd_mps = initObj.vd_mps
      }
      else {
        this.vd_mps = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OppWpnt
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [s_m]
    bufferOffset = _serializer.float64(obj.s_m, buffer, bufferOffset);
    // Serialize message field [d_m]
    bufferOffset = _serializer.float64(obj.d_m, buffer, bufferOffset);
    // Serialize message field [x_m]
    bufferOffset = _serializer.float64(obj.x_m, buffer, bufferOffset);
    // Serialize message field [y_m]
    bufferOffset = _serializer.float64(obj.y_m, buffer, bufferOffset);
    // Serialize message field [proj_vs_mps]
    bufferOffset = _serializer.float64(obj.proj_vs_mps, buffer, bufferOffset);
    // Serialize message field [vd_mps]
    bufferOffset = _serializer.float64(obj.vd_mps, buffer, bufferOffset);
    // Serialize message field [d_var]
    bufferOffset = _serializer.float64(obj.d_var, buffer, bufferOffset);
    // Serialize message field [vs_var]
    bufferOffset = _serializer.float64(obj.vs_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OppWpnt
    let len;
    let data = new OppWpnt(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [s_m]
    data.s_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_m]
    data.d_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_m]
    data.x_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_m]
    data.y_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [proj_vs_mps]
    data.proj_vs_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vd_mps]
    data.vd_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_var]
    data.d_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vs_var]
    data.vs_var = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/OppWpnt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81351e4053edb61a279791df3b5554d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new OppWpnt(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.s_m !== undefined) {
      resolved.s_m = msg.s_m;
    }
    else {
      resolved.s_m = 0.0
    }

    if (msg.d_m !== undefined) {
      resolved.d_m = msg.d_m;
    }
    else {
      resolved.d_m = 0.0
    }

    if (msg.x_m !== undefined) {
      resolved.x_m = msg.x_m;
    }
    else {
      resolved.x_m = 0.0
    }

    if (msg.y_m !== undefined) {
      resolved.y_m = msg.y_m;
    }
    else {
      resolved.y_m = 0.0
    }

    if (msg.proj_vs_mps !== undefined) {
      resolved.proj_vs_mps = msg.proj_vs_mps;
    }
    else {
      resolved.proj_vs_mps = 0.0
    }

    if (msg.vd_mps !== undefined) {
      resolved.vd_mps = msg.vd_mps;
    }
    else {
      resolved.vd_mps = 0.0
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

    return resolved;
    }
};

module.exports = OppWpnt;
