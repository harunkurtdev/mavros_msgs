// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class MountConfigureRequest extends RosMessage<MountConfigureRequest> {
  Header header;

  int mode;

  bool stabilize_roll;

  bool stabilize_pitch;

  bool stabilize_yaw;

  int roll_input;

  int pitch_input;

  int yaw_input;

  static MountConfigureRequest $prototype = MountConfigureRequest();
  MountConfigureRequest({
    Header header,
    int mode,
    bool stabilize_roll,
    bool stabilize_pitch,
    bool stabilize_yaw,
    int roll_input,
    int pitch_input,
    int yaw_input,
  })  : this.header = header ?? Header(),
        this.mode = mode ?? 0,
        this.stabilize_roll = stabilize_roll ?? false,
        this.stabilize_pitch = stabilize_pitch ?? false,
        this.stabilize_yaw = stabilize_yaw ?? false,
        this.roll_input = roll_input ?? 0,
        this.pitch_input = pitch_input ?? 0,
        this.yaw_input = yaw_input ?? 0;

  @override
  MountConfigureRequest call({
    Header header,
    int mode,
    bool stabilize_roll,
    bool stabilize_pitch,
    bool stabilize_yaw,
    int roll_input,
    int pitch_input,
    int yaw_input,
  }) =>
      MountConfigureRequest(
        header: header,
        mode: mode,
        stabilize_roll: stabilize_roll,
        stabilize_pitch: stabilize_pitch,
        stabilize_yaw: stabilize_yaw,
        roll_input: roll_input,
        pitch_input: pitch_input,
        yaw_input: yaw_input,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MountConfigureRequest
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [mode]
    writer.writeUint8(mode);
    // Serialize message field [stabilize_roll]
    writer.writeUint8(stabilize_roll == false ? 0 : 1);
    // Serialize message field [stabilize_pitch]
    writer.writeUint8(stabilize_pitch == false ? 0 : 1);
    // Serialize message field [stabilize_yaw]
    writer.writeUint8(stabilize_yaw == false ? 0 : 1);
    // Serialize message field [roll_input]
    writer.writeUint8(roll_input);
    // Serialize message field [pitch_input]
    writer.writeUint8(pitch_input);
    // Serialize message field [yaw_input]
    writer.writeUint8(yaw_input);
  }

  @override
  MountConfigureRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type MountConfigureRequest
    final data = MountConfigureRequest();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [mode]
    data.mode = reader.readUint8();
    // Deserialize message field [stabilize_roll]
    data.stabilize_roll = reader.readUint8() != 0;
    // Deserialize message field [stabilize_pitch]
    data.stabilize_pitch = reader.readUint8() != 0;
    // Deserialize message field [stabilize_yaw]
    data.stabilize_yaw = reader.readUint8() != 0;
    // Deserialize message field [roll_input]
    data.roll_input = reader.readUint8();
    // Deserialize message field [pitch_input]
    data.pitch_input = reader.readUint8();
    // Deserialize message field [yaw_input]
    data.yaw_input = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 7;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/MountConfigureRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6abfbffc4f7b14d5b05955b1813ae50e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MAVLink message: DO_MOUNT_CONTROL
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONFIGURE

std_msgs/Header header

uint8 mode              # See enum MAV_MOUNT_MODE.
#MAV_MOUNT_MODE
uint8 MODE_RETRACT = 0
uint8 MODE_NEUTRAL = 1
uint8 MODE_MAVLINK_TARGETING = 2
uint8 MODE_RC_TARGETING = 3
uint8 MODE_GPS_POint = 4

bool stabilize_roll     # stabilize roll? (1 = yes, 0 = no)
bool stabilize_pitch    # stabilize pitch? (1 = yes, 0 = no)
bool stabilize_yaw      # stabilize yaw? (1 = yes, 0 = no)
uint8 roll_input        # roll input (See enum MOUNT_INPUT)
uint8 pitch_input       # pitch input (See enum MOUNT_INPUT)
uint8 yaw_input         # yaw input (See enum MOUNT_INPUT)

#MOUNT_INPUT
uint8 INPUT_ANGLE_BODY_FRAME = 0
uint8 INPUT_ANGULAR_RATE = 1
uint8 INPUT_ANGLE_ABSOLUTE_FRAME = 2

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
  static const int MODE_RETRACT = 0;
  static const int MODE_NEUTRAL = 1;
  static const int MODE_MAVLINK_TARGETING = 2;
  static const int MODE_RC_TARGETING = 3;
  static const int MODE_GPS_POint = 4;
  static const int INPUT_ANGLE_BODY_FRAME = 0;
  static const int INPUT_ANGULAR_RATE = 1;
  static const int INPUT_ANGLE_ABSOLUTE_FRAME = 2;
}

class MountConfigureResponse extends RosMessage<MountConfigureResponse> {
  bool success;

  int result;

  static MountConfigureResponse $prototype = MountConfigureResponse();
  MountConfigureResponse({
    bool success,
    int result,
  })  : this.success = success ?? false,
        this.result = result ?? 0;

  @override
  MountConfigureResponse call({
    bool success,
    int result,
  }) =>
      MountConfigureResponse(
        success: success,
        result: result,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MountConfigureResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  MountConfigureResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type MountConfigureResponse
    final data = MountConfigureResponse();
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
    return 'mavros_msgs/MountConfigureResponse';
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

class MountConfigure
    extends RosServiceMessage<MountConfigureRequest, MountConfigureResponse> {
  static final $prototype = MountConfigure();
  @override
  MountConfigureRequest get request => MountConfigureRequest.$prototype;
  @override
  MountConfigureResponse get response => MountConfigureResponse.$prototype;
  @override
  String get md5sum => '8d724be18b06cd8e10d8c97c487c546a';
  @override
  String get fullType => 'mavros_msgs/MountConfigure';
}
