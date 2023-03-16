// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandHomeRequest extends RosMessage<CommandHomeRequest> {
  bool current_gps;

  double yaw;

  double latitude;

  double longitude;

  double altitude;

  static CommandHomeRequest $prototype = CommandHomeRequest();
  CommandHomeRequest({ 
    bool? current_gps,
    double? yaw,
    double? latitude,
    double? longitude,
    double? altitude,
  }):
  this.current_gps = current_gps ?? false,
  this.yaw = yaw ?? 0.0,
  this.latitude = latitude ?? 0.0,
  this.longitude = longitude ?? 0.0,
  this.altitude = altitude ?? 0.0;

  @override
  CommandHomeRequest call({ 
    bool? current_gps,
    double? yaw,
    double? latitude,
    double? longitude,
    double? altitude,
  }) => CommandHomeRequest(
  current_gps: current_gps,
  yaw: yaw,
  latitude: latitude,
  longitude: longitude,
  altitude: altitude,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandHomeRequest
    // Serialize message field [current_gps]
    writer.writeUint8(current_gps == false ? 0 : 1);
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
  CommandHomeRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandHomeRequest
    final data = CommandHomeRequest();
    // Deserialize message field [current_gps]
    data.current_gps = reader.readUint8() != 0;
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
    return 17;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/CommandHomeRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'af3ed5fc0724380793eba353ee384c9a';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# request set new home position

bool current_gps
float32 yaw
float32 latitude
float32 longitude
float32 altitude

''';
  }

}

class CommandHomeResponse extends RosMessage<CommandHomeResponse> {
  bool success;

  int result;

  static CommandHomeResponse $prototype = CommandHomeResponse();
  CommandHomeResponse({ 
    bool? success,
    int? result,
  }):
  this.success = success ?? false,
  this.result = result ?? 0;

  @override
  CommandHomeResponse call({ 
    bool? success,
    int? result,
  }) => CommandHomeResponse(
  success: success,
  result: result,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CommandHomeResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  CommandHomeResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type CommandHomeResponse
    final data = CommandHomeResponse();
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
    return 'mavros_msgs/CommandHomeResponse';
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

class CommandHome extends RosServiceMessage<CommandHomeRequest, CommandHomeResponse> {
  static final $prototype = CommandHome();
  @override
  CommandHomeRequest get request => CommandHomeRequest.$prototype;
  @override
  CommandHomeResponse get response => CommandHomeResponse.$prototype;
  @override
  String get md5sum => '05b5da557a6a0cf6c2b958dba173bca1';
  @override
  String get fullType => 'mavros_msgs/CommandHome';
}
