// Auto-generated. Do not edit!

// (in-package f110_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CarState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.slam_pose = null;
      this.ekf_twist = null;
    }
    else {
      if (initObj.hasOwnProperty('slam_pose')) {
        this.slam_pose = initObj.slam_pose
      }
      else {
        this.slam_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('ekf_twist')) {
        this.ekf_twist = initObj.ekf_twist
      }
      else {
        this.ekf_twist = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarState
    // Serialize message field [slam_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.slam_pose, buffer, bufferOffset);
    // Serialize message field [ekf_twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.ekf_twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarState
    let len;
    let data = new CarState(null);
    // Deserialize message field [slam_pose]
    data.slam_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [ekf_twist]
    data.ekf_twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'f110_msgs/CarState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db3b80f78749884a20d33b38f0c43c77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose  slam_pose
    geometry_msgs/Twist ekf_twist
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarState(null);
    if (msg.slam_pose !== undefined) {
      resolved.slam_pose = geometry_msgs.msg.Pose.Resolve(msg.slam_pose)
    }
    else {
      resolved.slam_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.ekf_twist !== undefined) {
      resolved.ekf_twist = geometry_msgs.msg.Twist.Resolve(msg.ekf_twist)
    }
    else {
      resolved.ekf_twist = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = CarState;
