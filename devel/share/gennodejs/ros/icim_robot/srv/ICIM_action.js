// Auto-generated. Do not edit!

// (in-package icim_robot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ICIM_actionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.pickup = null;
      this.place = null;
      this.home = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('pickup')) {
        this.pickup = initObj.pickup
      }
      else {
        this.pickup = false;
      }
      if (initObj.hasOwnProperty('place')) {
        this.place = initObj.place
      }
      else {
        this.place = false;
      }
      if (initObj.hasOwnProperty('home')) {
        this.home = initObj.home
      }
      else {
        this.home = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ICIM_actionRequest
    // Serialize message field [index]
    bufferOffset = _serializer.uint8(obj.index, buffer, bufferOffset);
    // Serialize message field [pickup]
    bufferOffset = _serializer.bool(obj.pickup, buffer, bufferOffset);
    // Serialize message field [place]
    bufferOffset = _serializer.bool(obj.place, buffer, bufferOffset);
    // Serialize message field [home]
    bufferOffset = _serializer.bool(obj.home, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ICIM_actionRequest
    let len;
    let data = new ICIM_actionRequest(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pickup]
    data.pickup = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [place]
    data.place = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [home]
    data.home = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'icim_robot/ICIM_actionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '645a960607d26fe459ebdf53d78687f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 index 
    bool pickup
    bool place
    bool home
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ICIM_actionRequest(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.pickup !== undefined) {
      resolved.pickup = msg.pickup;
    }
    else {
      resolved.pickup = false
    }

    if (msg.place !== undefined) {
      resolved.place = msg.place;
    }
    else {
      resolved.place = false
    }

    if (msg.home !== undefined) {
      resolved.home = msg.home;
    }
    else {
      resolved.home = false
    }

    return resolved;
    }
};

class ICIM_actionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ICIM_actionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ICIM_actionResponse
    let len;
    let data = new ICIM_actionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'icim_robot/ICIM_actionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec6f3eff0161f4257b808b12bc830c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ICIM_actionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ICIM_actionRequest,
  Response: ICIM_actionResponse,
  md5sum() { return 'ac222bde2a288d489953362d931be211'; },
  datatype() { return 'icim_robot/ICIM_action'; }
};
