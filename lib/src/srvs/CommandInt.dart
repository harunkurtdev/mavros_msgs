// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandIntRequest extends RosMessage<CommandIntRequest> {
  bool broadcast;

  int frame;

  int command;

  int current;

  int autocontinue;

  double param1;

  double param2;

  double param3;

  double param4;

  int x;

  int y;

  double z;

  static CommandIntRequest $prototype = CommandIntRequest();
  CommandIntRequest({ 
    bool broadcast,
    int frame,
    int command,
    int current,
    int autocontinue,
    double param1,
    double param2,
    double param3,
    double param4,
    int x,
    int y,
    double z,
  }):
  this.broadcast = broadcast ?? false,
  this.frame = frame ?? 0,
  this.command = command ?? 0,
  this.current = current ?? 0,
  this.autocontinue = autocontinue ?? 0,
  this.param1 = param1 ?? 0.0,
  this.param2 = param2 ?? 0.0,
  this.param3 = param3 ?? 0.0,
  this.param4 = param4 ?? 0.0,
  this.x = x ?? 0,
  this.y = y ?? 0,
  this.z = z ?? 0.0;

  @override
  CommandIntRequest call({ 
    bool broadcast,
    int frame,
    int command,
    int current,
    int autocontinue,
    double param1,
    double param2,
    double param3,
    double param4,
    int x,
    int y,
    double z,
  }) => CommandIntRequest(
  broadcast: broadcast,
  frame: frame,
  command: command,
  current: current,
  autocontinue: autocontinue,
  param1: param1,
  param2: param2,
  param3: param3,
  param4: param4,
  x: x,
  y: y,
  z: z,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandIntRequest
    // Serialize message field [broadcast]
    writer.writeUint8(broadcast == false ? 0 : 1);
    // Serialize message field [frame]
    writer.writeUint8(frame);
    // Serialize message field [command]
    writer.writeUint16(command);
    // Serialize message field [current]
    writer.writeUint8(current);
    // Serialize message field [autocontinue]
    writer.writeUint8(autocontinue);
    // Serialize message field [param1]
    writer.writeFloat32(param1);
    // Serialize message field [param2]
    writer.writeFloat32(param2);
    // Serialize message field [param3]
    writer.writeFloat32(param3);
    // Serialize message field [param4]
    writer.writeFloat32(param4);
    // Serialize message field [x]
    writer.writeInt32(x);
    // Serialize message field [y]
    writer.writeInt32(y);
    // Serialize message field [z]
    writer.writeFloat32(z);
  }

  @override
  CommandIntRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandIntRequest
    final data = CommandIntRequest();
    // Deserialize message field [broadcast]
    data.broadcast = reader.readUint8() != 0;
    // Deserialize message field [frame]
    data.frame = reader.readUint8();
    // Deserialize message field [command]
    data.command = reader.readUint16();
    // Deserialize message field [current]
    data.current = reader.readUint8();
    // Deserialize message field [autocontinue]
    data.autocontinue = reader.readUint8();
    // Deserialize message field [param1]
    data.param1 = reader.readFloat32();
    // Deserialize message field [param2]
    data.param2 = reader.readFloat32();
    // Deserialize message field [param3]
    data.param3 = reader.readFloat32();
    // Deserialize message field [param4]
    data.param4 = reader.readFloat32();
    // Deserialize message field [x]
    data.x = reader.readInt32();
    // Deserialize message field [y]
    data.y = reader.readInt32();
    // Deserialize message field [z]
    data.z = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 34;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandIntRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6165959012c47e0f665b640c1ab12391';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Generic COMMAND_INT

bool broadcast # send this command in broadcast mode

uint8 frame
uint16 command
uint8 current
uint8 autocontinue
float32 param1
float32 param2
float32 param3
float32 param4
int32 x	# latitude in deg * 1E7 or local x * 1E4 m
int32 y	# longitude in deg * 1E7 or local y * 1E4 m
float32 z	# altitude

''';
  }

}

class CommandIntResponse extends RosMessage<CommandIntResponse> {
  bool success;

  static CommandIntResponse $prototype = CommandIntResponse();
  CommandIntResponse({ 
    bool success,
  }):
  this.success = success ?? false;

  @override
  CommandIntResponse call({ 
    bool success,
  }) => CommandIntResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandIntResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  CommandIntResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandIntResponse
    final data = CommandIntResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandIntResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
# seems that this message don't produce andy COMMAND_ACK messages
# so no result field


''';
  }

}

class CommandInt extends RosServiceMessage<CommandIntRequest, CommandIntResponse> {
  static final $prototype = CommandInt();
  @override
  CommandIntRequest get request => CommandIntRequest.$prototype;
  @override
  CommandIntResponse get response => CommandIntResponse.$prototype;
  @override
  String get md5sum => '5d5fd287bf3d27ad6ec508b1692f3b09';
  @override
  String get fullType => 'mavros_msgs/CommandInt';
}
