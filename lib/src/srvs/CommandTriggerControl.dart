// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class CommandTriggerControlRequest
    extends RosMessage<CommandTriggerControlRequest> {
  bool trigger_enable;

  bool sequence_reset;

  bool trigger_pause;

  static CommandTriggerControlRequest $prototype =
      CommandTriggerControlRequest();
  CommandTriggerControlRequest({
    bool? trigger_enable,
    bool? sequence_reset,
    bool? trigger_pause,
  })  : this.trigger_enable = trigger_enable ?? false,
        this.sequence_reset = sequence_reset ?? false,
        this.trigger_pause = trigger_pause ?? false;

  @override
  CommandTriggerControlRequest call({
    bool? trigger_enable,
    bool? sequence_reset,
    bool? trigger_pause,
  }) =>
      CommandTriggerControlRequest(
        trigger_enable: trigger_enable,
        sequence_reset: sequence_reset,
        trigger_pause: trigger_pause,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTriggerControlRequest
    // Serialize message field [trigger_enable]
    writer.writeUint8(trigger_enable == false ? 0 : 1);
    // Serialize message field [sequence_reset]
    writer.writeUint8(sequence_reset == false ? 0 : 1);
    // Serialize message field [trigger_pause]
    writer.writeUint8(trigger_pause == false ? 0 : 1);
  }

  @override
  CommandTriggerControlRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTriggerControlRequest
    final data = CommandTriggerControlRequest();
    // Deserialize message field [trigger_enable]
    data.trigger_enable = reader.readUint8() != 0;
    // Deserialize message field [sequence_reset]
    data.sequence_reset = reader.readUint8() != 0;
    // Deserialize message field [trigger_pause]
    data.trigger_pause = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 3;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTriggerControlRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '5231f3f21be52f9682a8e030770339a5';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Type for controlling onboard camera triggering system

bool    trigger_enable		# Trigger enable/disable
bool    sequence_reset		# Reset the trigger sequence
bool    trigger_pause		# Pause triggering, but without switching the camera off or retracting it.

''';
  }
}

class CommandTriggerControlResponse
    extends RosMessage<CommandTriggerControlResponse> {
  bool success;

  int result;

  static CommandTriggerControlResponse $prototype =
      CommandTriggerControlResponse();
  CommandTriggerControlResponse({
    bool? success,
    int? result,
  })  : this.success = success ?? false,
        this.result = result ?? 0;

  @override
  CommandTriggerControlResponse call({
    bool? success,
    int? result,
  }) =>
      CommandTriggerControlResponse(
        success: success,
        result: result,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTriggerControlResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandTriggerControlResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTriggerControlResponse
    final data = CommandTriggerControlResponse();
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
    return 'mavros_msgs/CommandTriggerControlResponse';
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

class CommandTriggerControl extends RosServiceMessage<
    CommandTriggerControlRequest, CommandTriggerControlResponse> {
  static final $prototype = CommandTriggerControl();
  @override
  CommandTriggerControlRequest get request =>
      CommandTriggerControlRequest.$prototype;
  @override
  CommandTriggerControlResponse get response =>
      CommandTriggerControlResponse.$prototype;
  @override
  String get md5sum => '65be46a6918cb61b7dceb7c9ba9b1c97';
  @override
  String get fullType => 'mavros_msgs/CommandTriggerControl';
}
