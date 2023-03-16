// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandLongRequest extends RosMessage<CommandLongRequest> {
  bool broadcast;

  int command;

  int confirmation;

  double param1;

  double param2;

  double param3;

  double param4;

  double param5;

  double param6;

  double param7;

  static CommandLongRequest $prototype = CommandLongRequest();
  CommandLongRequest({ 
    bool? broadcast,
    int? command,
    int? confirmation,
    double? param1,
    double? param2,
    double? param3,
    double? param4,
    double? param5,
    double? param6,
    double? param7,
  }):
  this.broadcast = broadcast ?? false,
  this.command = command ?? 0,
  this.confirmation = confirmation ?? 0,
  this.param1 = param1 ?? 0.0,
  this.param2 = param2 ?? 0.0,
  this.param3 = param3 ?? 0.0,
  this.param4 = param4 ?? 0.0,
  this.param5 = param5 ?? 0.0,
  this.param6 = param6 ?? 0.0,
  this.param7 = param7 ?? 0.0;

  @override
  CommandLongRequest call({ 
    bool? broadcast,
    int? command,
    int? confirmation,
    double? param1,
    double? param2,
    double? param3,
    double? param4,
    double? param5,
    double? param6,
    double? param7,
  }) => CommandLongRequest(
  broadcast: broadcast,
  command: command,
  confirmation: confirmation,
  param1: param1,
  param2: param2,
  param3: param3,
  param4: param4,
  param5: param5,
  param6: param6,
  param7: param7,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandLongRequest
    // Serialize message field [broadcast]
    writer.writeUint8(broadcast == false ? 0 : 1);
    // Serialize message field [command]
    writer.writeUint16(command);
    // Serialize message field [confirmation]
    writer.writeUint8(confirmation);
    // Serialize message field [param1]
    writer.writeFloat32(param1);
    // Serialize message field [param2]
    writer.writeFloat32(param2);
    // Serialize message field [param3]
    writer.writeFloat32(param3);
    // Serialize message field [param4]
    writer.writeFloat32(param4);
    // Serialize message field [param5]
    writer.writeFloat32(param5);
    // Serialize message field [param6]
    writer.writeFloat32(param6);
    // Serialize message field [param7]
    writer.writeFloat32(param7);
  }

  @override
  CommandLongRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandLongRequest
    final data = CommandLongRequest();
    // Deserialize message field [broadcast]
    data.broadcast = reader.readUint8() != 0;
    // Deserialize message field [command]
    data.command = reader.readUint16();
    // Deserialize message field [confirmation]
    data.confirmation = reader.readUint8();
    // Deserialize message field [param1]
    data.param1 = reader.readFloat32();
    // Deserialize message field [param2]
    data.param2 = reader.readFloat32();
    // Deserialize message field [param3]
    data.param3 = reader.readFloat32();
    // Deserialize message field [param4]
    data.param4 = reader.readFloat32();
    // Deserialize message field [param5]
    data.param5 = reader.readFloat32();
    // Deserialize message field [param6]
    data.param6 = reader.readFloat32();
    // Deserialize message field [param7]
    data.param7 = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 32;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandLongRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '0ad16dd8ca2c8f209bfc6c32c71c0dd8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Generic COMMAND_LONG

bool broadcast # send this command in broadcast mode

uint16 command
uint8 confirmation
float32 param1
float32 param2
float32 param3
float32 param4
float32 param5	# x_lat
float32 param6	# y_lon
float32 param7	# z_alt

''';
  }

}

class CommandLongResponse extends RosMessage<CommandLongResponse> {
  bool success;

  int result;

  static CommandLongResponse $prototype = CommandLongResponse();
  CommandLongResponse({ 
    bool? success,
    int? result,
  }):
  this.success = success ?? false,
  this.result = result ?? 0;

  @override
  CommandLongResponse call({ 
    bool? success,
    int? result,
  }) => CommandLongResponse(
  success: success,
  result: result,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandLongResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandLongResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandLongResponse
    final data = CommandLongResponse();
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
    return 'mavros_msgs/CommandLongResponse';
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
# raw result returned by COMMAND_ACK
uint8 result


''';
  }

}

class CommandLong extends RosServiceMessage<CommandLongRequest, CommandLongResponse> {
  static final $prototype = CommandLong();
  @override
  CommandLongRequest get request => CommandLongRequest.$prototype;
  @override
  CommandLongResponse get response => CommandLongResponse.$prototype;
  @override
  String get md5sum => 'eb9034afc87577c0a235d45b8f3437d2';
  @override
  String get fullType => 'mavros_msgs/CommandLong';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
