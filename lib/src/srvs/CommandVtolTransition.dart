// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandVtolTransitionRequest extends RosMessage<CommandVtolTransitionRequest> {
  Header header;

  int state;

  static CommandVtolTransitionRequest $prototype = CommandVtolTransitionRequest();
  CommandVtolTransitionRequest({ 
    Header? header,
    int?? state,
  }):
  this.header = header ?? Header(),
  this.state = state ?? 0;

  @override
  CommandVtolTransitionRequest call({ 
    Header? header,
    int?? state,
  }) => CommandVtolTransitionRequest(
  header: header,
  state: state,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandVtolTransitionRequest
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [state]
    writer.writeUint8(state);
  }

  @override
  CommandVtolTransitionRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandVtolTransitionRequest
    final data = CommandVtolTransitionRequest();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [state]
    data.state = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandVtolTransitionRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '0f073c606cdf8c014b856a5033900f3e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''
# MAVLink command: DO_VTOL_TRANSITION
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_VTOL_TRANSITION

std_msgs/Header header

# MAV_VTOL_STATE
uint8 STATE_MC = 3
uint8 STATE_FW = 4

uint8 state              # See enum MAV_VTOL_STATE.


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

''';
  }

// Constants for message
  static const int STATE_MC = 3;
  static const int STATE_FW = 4;

}

class CommandVtolTransitionResponse extends RosMessage<CommandVtolTransitionResponse> {
  bool success;

  int result;

  static CommandVtolTransitionResponse $prototype = CommandVtolTransitionResponse();
  CommandVtolTransitionResponse({ 
    bool? success,
    int?? result,
  }):
  this.success = success ?? false,
  this.result = result ?? 0;

  @override
  CommandVtolTransitionResponse call({ 
    bool? success,
    int?? result,
  }) => CommandVtolTransitionResponse(
  success: success,
  result: result,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandVtolTransitionResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandVtolTransitionResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandVtolTransitionResponse
    final data = CommandVtolTransitionResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [result]
    data.result = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    return 2;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandVtolTransitionResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1cd894375e4e3d2861d2222772894fdb';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
uint8 result            # Raw result returned by COMMAND_ACK
 

''';
  }

}

class CommandVtolTransition extends RosServiceMessage<CommandVtolTransitionRequest, CommandVtolTransitionResponse> {
  static final $prototype = CommandVtolTransition();
  @override
  CommandVtolTransitionRequest get request => CommandVtolTransitionRequest.$prototype;
  @override
  CommandVtolTransitionResponse get response => CommandVtolTransitionResponse.$prototype;
  @override
  String get md5sum => '9fd38be6714b4cc56cabc5f733b6f095';
  @override
  String get fullType => 'mavros_msgs/CommandVtolTransition';
}
