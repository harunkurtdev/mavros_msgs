// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandTriggerIntervalRequest extends RosMessage<CommandTriggerIntervalRequest> {
  double cycle_time;

  double integration_time;

  static CommandTriggerIntervalRequest $prototype = CommandTriggerIntervalRequest();
  CommandTriggerIntervalRequest({ 
    double? cycle_time,
    double? integration_time,
  }):
  this.cycle_time = cycle_time ?? 0.0,
  this.integration_time = integration_time ?? 0.0;

  @override
  CommandTriggerIntervalRequest call({ 
    double? cycle_time,
    double? integration_time,
  }) => CommandTriggerIntervalRequest(
  cycle_time: cycle_time,
  integration_time: integration_time,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTriggerIntervalRequest
    // Serialize message field [cycle_time]
    writer.writeFloat32(cycle_time);
    // Serialize message field [integration_time]
    writer.writeFloat32(integration_time);
  }

  @override
  CommandTriggerIntervalRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTriggerIntervalRequest
    final data = CommandTriggerIntervalRequest();
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
    return 'mavros_msgs/CommandTriggerIntervalRequest';
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

class CommandTriggerIntervalResponse extends RosMessage<CommandTriggerIntervalResponse> {
  bool success;

  int result;

  static CommandTriggerIntervalResponse $prototype = CommandTriggerIntervalResponse();
  CommandTriggerIntervalResponse({ 
    bool? success,
    int? result,
  }):
  this.success = success ?? false,
  this.result = result ?? 0;

  @override
  CommandTriggerIntervalResponse call({ 
    bool? success,
    int? result,
  }) => CommandTriggerIntervalResponse(
  success: success,
  result: result,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTriggerIntervalResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandTriggerIntervalResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTriggerIntervalResponse
    final data = CommandTriggerIntervalResponse();
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
    return 'mavros_msgs/CommandTriggerIntervalResponse';
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

class CommandTriggerInterval extends RosServiceMessage<CommandTriggerIntervalRequest, CommandTriggerIntervalResponse> {
  static final $prototype = CommandTriggerInterval();
  @override
  CommandTriggerIntervalRequest get request => CommandTriggerIntervalRequest.$prototype;
  @override
  CommandTriggerIntervalResponse get response => CommandTriggerIntervalResponse.$prototype;
  @override
  String get md5sum => 'b16f28a04389d5d47ddaa9e025e7383a';
  @override
  String get fullType => 'mavros_msgs/CommandTriggerInterval';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
