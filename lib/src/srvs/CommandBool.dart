// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class CommandBoolRequest extends RosMessage<CommandBoolRequest> {
  bool value;

  static CommandBoolRequest $prototype = CommandBoolRequest();
  CommandBoolRequest({
    bool? value,
  }) : this.value = value ?? false;

  @override
  CommandBoolRequest call({
    bool? value,
  }) =>
      CommandBoolRequest(
        value: value,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandBoolRequest
    // Serialize message field [value]
    writer.writeUint8(value == false ? 0 : 1);
  }

  @override
  CommandBoolRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandBoolRequest
    final data = CommandBoolRequest();
    // Deserialize message field [value]
    data.value = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandBoolRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e431d687bf4b2c65fbd94b12ae0cb5d9';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Common type for switch commands

bool value

''';
  }
}

class CommandBoolResponse extends RosMessage<CommandBoolResponse> {
  bool success;

  int result;

  static CommandBoolResponse $prototype = CommandBoolResponse();
  CommandBoolResponse({
    bool? success,
    int?? result,
  })  : this.success = success ?? false,
        this.result = result ?? 0;

  @override
  CommandBoolResponse call({
    bool? success,
    int?? result,
  }) =>
      CommandBoolResponse(
        success: success,
        result: result,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandBoolResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandBoolResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandBoolResponse
    final data = CommandBoolResponse();
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
    return 'mavros_msgs/CommandBoolResponse';
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
uint8 result


''';
  }
}

class CommandBool
    extends RosServiceMessage<CommandBoolRequest, CommandBoolResponse> {
  static final $prototype = CommandBool();
  @override
  CommandBoolRequest get request => CommandBoolRequest.$prototype;
  @override
  CommandBoolResponse get response => CommandBoolResponse.$prototype;
  @override
  String get md5sum => 'e09abbb4e5bae6b558e5010966eb6e9e';
  @override
  String get fullType => 'mavros_msgs/CommandBool';

  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
