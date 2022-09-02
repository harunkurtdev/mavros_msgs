// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
// import 'package:dartros/msg_utils.dart';

import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class CommandTOLRequest extends RosMessage<CommandTOLRequest> {
  double min_pitch;

  double yaw;

  double latitude;

  double longitude;

  double altitude;

  static CommandTOLRequest $prototype = CommandTOLRequest();
  CommandTOLRequest({
    double? min_pitch,
    double? yaw,
    double? latitude,
    double? longitude,
    double? altitude,
  })  : this.min_pitch = min_pitch ?? 0.0,
        this.yaw = yaw ?? 0.0,
        this.latitude = latitude ?? 0.0,
        this.longitude = longitude ?? 0.0,
        this.altitude = altitude ?? 0.0;

  @override
  CommandTOLRequest call({
    double? min_pitch,
    double? yaw,
    double? latitude,
    double? longitude,
    double? altitude,
  }) =>
      CommandTOLRequest(
        min_pitch: min_pitch,
        yaw: yaw,
        latitude: latitude,
        longitude: longitude,
        altitude: altitude,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTOLRequest
    // Serialize message field [min_pitch]
    writer.writeFloat32(min_pitch);
    // Serialize message field [yaw]
    writer.writeFloat32(yaw);
    // Serialize message field [latitude]
    writer.writeFloat32(latitude);
    // Serialize message field [longitude]
    writer.writeFloat32(longitude);
    // Serialize message field [altitude]
    writer.writeFloat32(altitude);
  }

  @override
  CommandTOLRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTOLRequest
    final data = CommandTOLRequest();
    // Deserialize message field [min_pitch]
    data.min_pitch = reader.readFloat32();
    // Deserialize message field [yaw]
    data.yaw = reader.readFloat32();
    // Deserialize message field [latitude]
    data.latitude = reader.readFloat32();
    // Deserialize message field [longitude]
    data.longitude = reader.readFloat32();
    // Deserialize message field [altitude]
    data.altitude = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 20;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTOLRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '5aec7e34bcfe9ec68949aebae7bcd1ec';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Common type for Take Off and Landing

float32 min_pitch	# used by takeoff
float32 yaw
float32 latitude
float32 longitude
float32 altitude

''';
  }
}

class CommandTOLResponse extends RosMessage<CommandTOLResponse> {
  bool success;

  int result;

  static CommandTOLResponse $prototype = CommandTOLResponse();
  CommandTOLResponse({
    bool? success,
    int? result,
  })  : this.success = success ?? false,
        this.result = result ?? 0;

  @override
  CommandTOLResponse call({
    bool? success,
    int? result,
  }) =>
      CommandTOLResponse(
        success: success,
        result: result,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandTOLResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandTOLResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandTOLResponse
    final data = CommandTOLResponse();
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
    return 'mavros_msgs/CommandTOLResponse';
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

class CommandTOL
    extends RosServiceMessage<CommandTOLRequest, CommandTOLResponse> {
  static final $prototype = CommandTOL();
  @override
  CommandTOLRequest get request => CommandTOLRequest.$prototype;
  @override
  CommandTOLResponse get response => CommandTOLResponse.$prototype;
  @override
  String get md5sum => '93ff4eaa9907f58c0e7a909cddce23e2';
  @override
  String get fullType => 'mavros_msgs/CommandTOL';

  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
