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

class ElfinIODWriteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_output = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_output')) {
        this.digital_output = initObj.digital_output
      }
      else {
        this.digital_output = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElfinIODWriteRequest
    // Serialize message field [digital_output]
    bufferOffset = _serializer.int32(obj.digital_output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElfinIODWriteRequest
    let len;
    let data = new ElfinIODWriteRequest(null);
    // Deserialize message field [digital_output]
    data.digital_output = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'elfin_robot_msgs/ElfinIODWriteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a04cc47addbf52d91fd317bd3f71fcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 digital_output
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElfinIODWriteRequest(null);
    if (msg.digital_output !== undefined) {
      resolved.digital_output = msg.digital_output;
    }
    else {
      resolved.digital_output = 0
    }

    return resolved;
    }
};

class ElfinIODWriteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElfinIODWriteResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElfinIODWriteResponse
    let len;
    let data = new ElfinIODWriteResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'elfin_robot_msgs/ElfinIODWriteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElfinIODWriteResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ElfinIODWriteRequest,
  Response: ElfinIODWriteResponse,
  md5sum() { return '0fc64fac1c3cd738d439b721e21f91e5'; },
  datatype() { return 'elfin_robot_msgs/ElfinIODWrite'; }
};
