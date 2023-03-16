// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
// import 'package:dartros/dartros.dart';

import 'package:dartros/dartros.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class CommandAckRequest extends RosMessage<CommandAckRequest> {
  int command;

  int result;

  int progress;

  int result_param2;

  static CommandAckRequest $prototype = CommandAckRequest();
  CommandAckRequest({
    int? command,
    int? result,
    int? progress,
    int? result_param2,
  })  : this.command = command ?? 0,
        this.result = result ?? 0,
        this.progress = progress ?? 0,
        this.result_param2 = result_param2 ?? 0;

  @override
  CommandAckRequest call({
    int? command,
    int? result,
    int? progress,
    int? result_param2,
  }) =>
      CommandAckRequest(
        command: command,
        result: result,
        progress: progress,
        result_param2: result_param2,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandAckRequest
    // Serialize message field [command]
    writer.writeUint16(command);
    // Serialize message field [result]
    writer.writeUint8(result);
    // Serialize message field [progress]
    writer.writeUint8(progress);
    // Serialize message field [result_param2]
    writer.writeUint32(result_param2);
  }

  @override
  CommandAckRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandAckRequest
    final data = CommandAckRequest();
    // Deserialize message field [command]
    data.command = reader.readUint16();
    // Deserialize message field [result]
    data.result = reader.readUint8();
    // Deserialize message field [progress]
    data.progress = reader.readUint8();
    // Deserialize message field [result_param2]
    data.result_param2 = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandAckRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1972b10ca14298d11f768e548d4d9e68';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Generic COMMAND_ACK

uint16 command
uint8 result
uint8 progress
uint32 result_param2


''';
  }
}

class CommandAckResponse extends RosMessage<CommandAckResponse> {
  bool success;

  int result;

  static CommandAckResponse $prototype = CommandAckResponse();
  CommandAckResponse({
    bool? success,
    int? result,
  })  : this.success = success ?? false,
        this.result = result ?? 0;

  @override
  CommandAckResponse call({
    bool? success,
    int? result,
  }) =>
      CommandAckResponse(
        success: success,
        result: result,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandAckResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandAckResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandAckResponse
    final data = CommandAckResponse();
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
    return 'mavros_msgs/CommandAckResponse';
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

class CommandAck
    extends RosServiceMessage<CommandAckRequest, CommandAckResponse> {
  static final $prototype = CommandAck();
  @override
  CommandAckRequest get request => CommandAckRequest.$prototype;
  @override
  CommandAckResponse get response => CommandAckResponse.$prototype;
  @override
  String get md5sum => 'a3d0814a86c597ac57373d872df6d1d3';
  @override
  String get fullType => 'mavros_msgs/CommandAck';

  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
