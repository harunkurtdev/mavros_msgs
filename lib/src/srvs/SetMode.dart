// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
// import 'package:dartros/msg_utils.dart';

import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class SetModeRequest extends RosMessage<SetModeRequest> {
  int base_mode;

  String custom_mode;

  static SetModeRequest $prototype = SetModeRequest();
  SetModeRequest({
    int base_mode,
    String custom_mode,
  })  : this.base_mode = base_mode ?? 0,
        this.custom_mode = custom_mode ?? '';

  @override
  SetModeRequest call({
    int base_mode,
    String custom_mode,
  }) =>
      SetModeRequest(
        base_mode: base_mode,
        custom_mode: custom_mode,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SetModeRequest
    // Serialize message field [base_mode]
    writer.writeUint8(base_mode);
    // Serialize message field [custom_mode]
    writer.writeString(custom_mode);
  }

  @override
  SetModeRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type SetModeRequest
    final data = SetModeRequest();
    // Deserialize message field [base_mode]
    data.base_mode = reader.readUint8();
    // Deserialize message field [custom_mode]
    data.custom_mode = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(custom_mode).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/SetModeRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd770431847cad3a8f50a81ec70ddf0e2';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# set FCU mode
#
# Known custom modes listed here:
# http://wiki.ros.org/mavros/CustomModes

# basic modes from MAV_MODE
uint8 MAV_MODE_PREFLIGHT		= 0
uint8 MAV_MODE_STABILIZE_DISARMED	= 80
uint8 MAV_MODE_STABILIZE_ARMED		= 208
uint8 MAV_MODE_MANUAL_DISARMED		= 64
uint8 MAV_MODE_MANUAL_ARMED		= 192
uint8 MAV_MODE_GUIDED_DISARMED		= 88
uint8 MAV_MODE_GUIDED_ARMED		= 216
uint8 MAV_MODE_AUTO_DISARMED		= 92
uint8 MAV_MODE_AUTO_ARMED		= 220
uint8 MAV_MODE_TEST_DISARMED		= 66
uint8 MAV_MODE_TEST_ARMED		= 194

uint8 base_mode		# filled by MAV_MODE enum value or 0 if custom_mode != ''
string custom_mode	# string mode representation or integer

''';
  }

// Constants for message
  static const int MAV_MODE_PREFLIGHT = 0;
  static const int MAV_MODE_STABILIZE_DISARMED = 80;
  static const int MAV_MODE_STABILIZE_ARMED = 208;
  static const int MAV_MODE_MANUAL_DISARMED = 64;
  static const int MAV_MODE_MANUAL_ARMED = 192;
  static const int MAV_MODE_GUIDED_DISARMED = 88;
  static const int MAV_MODE_GUIDED_ARMED = 216;
  static const int MAV_MODE_AUTO_DISARMED = 92;
  static const int MAV_MODE_AUTO_ARMED = 220;
  static const int MAV_MODE_TEST_DISARMED = 66;
  static const int MAV_MODE_TEST_ARMED = 194;
}

class SetModeResponse extends RosMessage<SetModeResponse> {
  bool mode_sent;

  static SetModeResponse $prototype = SetModeResponse();
  SetModeResponse({
    bool mode_sent,
  }) : this.mode_sent = mode_sent ?? false;

  @override
  SetModeResponse call({
    bool? mode_sent,
  }) =>
      SetModeResponse(
        mode_sent: mode_sent,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SetModeResponse
    // Serialize message field [mode_sent]
    writer.writeUint8(mode_sent == false ? 0 : 1);
  }

  @override
  SetModeResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type SetModeResponse
    final data = SetModeResponse();
    // Deserialize message field [mode_sent]
    data.mode_sent = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/SetModeResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a70bfe6329ecf8f8d858daa6f3db7655';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool mode_sent		# Mode known/parsed correctly and SET_MODE are sent


''';
  }
}

class SetMode extends RosServiceMessage<SetModeRequest, SetModeResponse> {
  static final $prototype = SetMode();
  @override
  SetModeRequest get request => SetModeRequest.$prototype;
  @override
  SetModeResponse get response => SetModeResponse.$prototype;
  @override
  String get md5sum => 'e4f18fa93379f9ff1780d270ce110203';
  @override
  String get fullType => 'mavros_msgs/SetMode';

  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
