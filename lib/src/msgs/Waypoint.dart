// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class Waypoint extends RosMessage<Waypoint> {
  int frame;

  int command;

  bool is_current;

  bool autocontinue;

  double param1;

  double param2;

  double param3;

  double param4;

  double x_lat;

  double y_long;

  double z_alt;

  static Waypoint $prototype = Waypoint();
  Waypoint({ 
    int? frame,
    int? command,
    bool? is_current,
    bool? autocontinue,
    double? param1,
    double? param2,
    double? param3,
    double? param4,
    double? x_lat,
    double? y_long,
    double? z_alt,
  }):
  this.frame = frame ?? 0,
  this.command = command ?? 0,
  this.is_current = is_current ?? false,
  this.autocontinue = autocontinue ?? false,
  this.param1 = param1 ?? 0.0,
  this.param2 = param2 ?? 0.0,
  this.param3 = param3 ?? 0.0,
  this.param4 = param4 ?? 0.0,
  this.x_lat = x_lat ?? 0.0,
  this.y_long = y_long ?? 0.0,
  this.z_alt = z_alt ?? 0.0;

  @override
  Waypoint call({ 
    int? frame,
    int? command,
    bool? is_current,
    bool? autocontinue,
    double? param1,
    double? param2,
    double? param3,
    double? param4,
    double? x_lat,
    double? y_long,
    double? z_alt,
  }) => Waypoint(
  frame: frame,
  command: command,
  is_current: is_current,
  autocontinue: autocontinue,
  param1: param1,
  param2: param2,
  param3: param3,
  param4: param4,
  x_lat: x_lat,
  y_long: y_long,
  z_alt: z_alt,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Waypoint
    // Serialize message field [frame]
    writer.writeUint8(frame);
    // Serialize message field [command]
    writer.writeUint16(command);
    // Serialize message field [is_current]
    writer.writeUint8(is_current == false ? 0 : 1);
    // Serialize message field [autocontinue]
    writer.writeUint8(autocontinue == false ? 0 : 1);
    // Serialize message field [param1]
    writer.writeFloat32(param1);
    // Serialize message field [param2]
    writer.writeFloat32(param2);
    // Serialize message field [param3]
    writer.writeFloat32(param3);
    // Serialize message field [param4]
    writer.writeFloat32(param4);
    // Serialize message field [x_lat]
    writer.writeFloat64(x_lat);
    // Serialize message field [y_long]
    writer.writeFloat64(y_long);
    // Serialize message field [z_alt]
    writer.writeFloat64(z_alt);
  }

  @override
  Waypoint deserialize(ByteDataReader reader) {
    //deserializes a message object of type Waypoint
    final data = Waypoint();
    // Deserialize message field [frame]
    data.frame = reader.readUint8();
    // Deserialize message field [command]
    data.command = reader.readUint16();
    // Deserialize message field [is_current]
    data.is_current = reader.readUint8() != 0;
    // Deserialize message field [autocontinue]
    data.autocontinue = reader.readUint8() != 0;
    // Deserialize message field [param1]
    data.param1 = reader.readFloat32();
    // Deserialize message field [param2]
    data.param2 = reader.readFloat32();
    // Deserialize message field [param3]
    data.param3 = reader.readFloat32();
    // Deserialize message field [param4]
    data.param4 = reader.readFloat32();
    // Deserialize message field [x_lat]
    data.x_lat = reader.readFloat64();
    // Deserialize message field [y_long]
    data.y_long = reader.readFloat64();
    // Deserialize message field [z_alt]
    data.z_alt = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 45;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Waypoint';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'f7090ce9f0c7ad0665de1ddadfd11ace';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4
uint8 FRAME_GLOBAL_INT = 5
uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6
uint8 FRAME_LOCAL_OFFSET_NED = 7
uint8 FRAME_BODY_NED = 8
uint8 FRAME_BODY_OFFSET_NED = 9
uint8 FRAME_GLOBAL_TERRAIN_ALT = 10
uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11
uint8 FRAME_BODY_FRD = 12
uint8 FRAME_RESERVED_13 = 13
uint8 FRAME_RESERVED_14 = 14
uint8 FRAME_RESERVED_15 = 15
uint8 FRAME_RESERVED_16 = 16
uint8 FRAME_RESERVED_17 = 17
uint8 FRAME_RESERVED_18 = 18
uint8 FRAME_RESERVED_19 = 19
uint8 FRAME_LOCAL_FRD = 20
uint8 FRAME_LOCAL_FLU = 21

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt

''';
  }

// Constants for message
  static const int FRAME_GLOBAL = 0;
  static const int FRAME_LOCAL_NED = 1;
  static const int FRAME_MISSION = 2;
  static const int FRAME_GLOBAL_REL_ALT = 3;
  static const int FRAME_LOCAL_ENU = 4;
  static const int FRAME_GLOBAL_INT = 5;
  static const int FRAME_GLOBAL_RELATIVE_ALT_INT = 6;
  static const int FRAME_LOCAL_OFFSET_NED = 7;
  static const int FRAME_BODY_NED = 8;
  static const int FRAME_BODY_OFFSET_NED = 9;
  static const int FRAME_GLOBAL_TERRAIN_ALT = 10;
  static const int FRAME_GLOBAL_TERRAIN_ALT_INT = 11;
  static const int FRAME_BODY_FRD = 12;
  static const int FRAME_RESERVED_13 = 13;
  static const int FRAME_RESERVED_14 = 14;
  static const int FRAME_RESERVED_15 = 15;
  static const int FRAME_RESERVED_16 = 16;
  static const int FRAME_RESERVED_17 = 17;
  static const int FRAME_RESERVED_18 = 18;
  static const int FRAME_RESERVED_19 = 19;
  static const int FRAME_LOCAL_FRD = 20;
  static const int FRAME_LOCAL_FLU = 21;

}

