// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class CommandTriggerintervalRequest
    extends RosMessage<CommandTriggerintervalRequest> {
  double cycle_time;

  double integration_time;

  static CommandTriggerintervalRequest $prototype =
      CommandTriggerintervalRequest();
  CommandTriggerintervalRequest({
    double? cycle_time,
    double? integration_time,
  })  : this.cycle_time = cycle_time ?? 0.0,
        this.integration_time = integration_time ?? 0.0;

  @override
  CommandTriggerintervalRequest call({
    double? cycle_time,
    double? integration_time,
  }) =>
      CommandTriggerintervalRequest(
        cycle_time: cycle_time,
        integration_time: integration_time,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTriggerintervalRequest
    // Serialize message field [cycle_time]
    writer.writeFloat32(cycle_time);
    // Serialize message field [integration_time]
    writer.writeFloat32(integration_time);
  }

  @override
  CommandTriggerintervalRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTriggerintervalRequest
    final data = CommandTriggerintervalRequest();
    // Deserialize message field [cycle_time]
    data.cycle_time = reader.readFloat32();
    // Deserialize message field [integration_time]
    data.integration_time = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTriggerintervalRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '54f6167a076ced593aa096ea6eb1a519';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Type for controlling camera trigger interval and integration time

float32   cycle_time			# Trigger cycle_time (interval between to triggers) - set to 0 to ignore command
float32   integration_time	# Camera shutter integration_time - set to 0 to ignore command

''';
  }
}

class CommandTriggerintervalResponse
    extends RosMessage<CommandTriggerintervalResponse> {
  bool success;

  int result;

  static CommandTriggerintervalResponse $prototype =
      CommandTriggerintervalResponse();
  CommandTriggerintervalResponse({
    bool? success,
    int? result,
  })  : this.success = success ?? false,
        this.result = result ?? 0;

  @override
  CommandTriggerintervalResponse call({
    bool? success,
    int? result,
  }) =>
      CommandTriggerintervalResponse(
        success: success,
        result: result,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTriggerintervalResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandTriggerintervalResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTriggerintervalResponse
    final data = CommandTriggerintervalResponse();
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
    return 'mavros_msgs/CommandTriggerintervalResponse';
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

class CommandTriggerinterval extends RosServiceMessage<
    CommandTriggerintervalRequest, CommandTriggerintervalResponse> {
  static final $prototype = CommandTriggerinterval();
  @override
  CommandTriggerintervalRequest get request =>
      CommandTriggerintervalRequest.$prototype;
  @override
  CommandTriggerintervalResponse get response =>
      CommandTriggerintervalResponse.$prototype;
  @override
  String get md5sum => 'b16f28a04389d5d47ddaa9e025e7383a';
  @override
  String get fullType => 'mavros_msgs/CommandTriggerinterval';
}
