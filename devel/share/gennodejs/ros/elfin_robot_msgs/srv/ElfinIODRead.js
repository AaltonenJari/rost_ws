// Auto-generated. Do not edit!

// (in-package elfin_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ElfinIODReadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElfinIODReadRequest
    // Serialize message field [data]
    bufferOffset = _serializer.bool(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElfinIODReadRequest
    let len;
    let data = new ElfinIODReadRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'elfin_robot_msgs/ElfinIODReadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b94c1b53db61fb6aed406028ad6332a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElfinIODReadRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = false
    }

    return resolved;
    }
};

class ElfinIODReadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_input = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_input')) {
        this.digital_input = initObj.digital_input
      }
      else {
        this.digital_input = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElfinIODReadResponse
    // Serialize message field [digital_input]
    bufferOffset = _serializer.int32(obj.digital_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElfinIODReadResponse
    let len;
    let data = new ElfinIODReadResponse(null);
    // Deserialize message field [digital_input]
    data.digital_input = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'elfin_robot_msgs/ElfinIODReadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce548173495af8ebd443f618454f7926';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 digital_input
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElfinIODReadResponse(null);
    if (msg.digital_input !== undefined) {
      resolved.digital_input = msg.digital_input;
    }
    else {
      resolved.digital_input = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ElfinIODReadRequest,
  Response: ElfinIODReadResponse,
  md5sum() { return '17d1458f56860abf97b7dcd22dda435a'; },
  datatype() { return 'elfin_robot_msgs/ElfinIODRead'; }
};
