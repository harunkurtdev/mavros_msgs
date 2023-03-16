// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class MountControl extends RosMessage<MountControl> {
  Header header;

  int mode;

  double pitch;

  double roll;

  double yaw;

  double altitude;

  double latitude;

  double longitude;

  static MountControl $prototype = MountControl();
  MountControl({ 
    Header? header,
    int? mode,
    double? pitch,
    double? roll,
    double? yaw,
    double? altitude,
    double? latitude,
    double? longitude,
  }):
  this.header = header ?? Header(),
  this.mode = mode ?? 0,
  this.pitch = pitch ?? 0.0,
  this.roll = roll ?? 0.0,
  this.yaw = yaw ?? 0.0,
  this.altitude = altitude ?? 0.0,
  this.latitude = latitude ?? 0.0,
  this.longitude = longitude ?? 0.0;

  @override
  MountControl call({ 
    Header? header,
    int? mode,
    double? pitch,
    double? roll,
    double? yaw,
    double? altitude,
    double? latitude,
    double? longitude,
  }) => MountControl(
  header: header,
  mode: mode,
  pitch: pitch,
  roll: roll,
  yaw: yaw,
  altitude: altitude,
  latitude: latitude,
  longitude: longitude,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MountControl
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [mode]
    writer.writeUint8(mode);
    // Serialize message field [pitch]
    writer.writeFloat32(pitch);
    // Serialize message field [roll]
    writer.writeFloat32(roll);
    // Serialize message field [yaw]
    writer.writeFloat32(yaw);
    // Serialize message field [altitude]
    writer.writeFloat32(altitude);
    // Serialize message field [latitude]
    writer.writeFloat32(latitude);
    // Serialize message field [longitude]
    writer.writeFloat32(longitude);
  }

  @override
  MountControl deserialize(ByteDataReader reader) {
    //deserializes a message object of type MountControl
    final data = MountControl();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [mode]
    data.mode = reader.readUint8();
    // Deserialize message field [pitch]
    data.pitch = reader.readFloat32();
    // Deserialize message field [roll]
    data.roll = reader.readFloat32();
    // Deserialize message field [yaw]
    data.yaw = reader.readFloat32();
    // Deserialize message field [altitude]
    data.altitude = reader.readFloat32();
    // Deserialize message field [latitude]
    data.latitude = reader.readFloat32();
    // Deserialize message field [longitude]
    data.longitude = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 25;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/MountControl';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '214cf13a68b4fed9e2a77b1b436f144e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MAVLink message: DO_MOUNT_CONTROL
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONTROL

std_msgs/Header header

uint8 mode # See enum MAV_MOUNT_MODE.
uint8 MAV_MOUNT_MODE_RETRACT = 0
uint8 MAV_MOUNT_MODE_NEUTRAL = 1
uint8 MAV_MOUNT_MODE_MAVLINK_TARGETING = 2
uint8 MAV_MOUNT_MODE_RC_TARGETING = 3
uint8 MAV_MOUNT_MODE_GPS_POINT = 4

float32 pitch # pitch degrees or degrees/second depending on mount mode.
float32 roll # roll degrees or degrees/second depending on mount mode.
float32 yaw # yaw degrees or degrees/second depending on mount mode.
float32 altitude  # altitude depending on mount mode.
float32 latitude # latitude in degrees * 1E7, set if appropriate mount mode.
float32 longitude # longitude in degrees * 1E7, set if appropriate mount mode.
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
  static const int MAV_MOUNT_MODE_RETRACT = 0;
  static const int MAV_MOUNT_MODE_NEUTRAL = 1;
  static const int MAV_MOUNT_MODE_MAVLINK_TARGETING = 2;
  static const int MAV_MOUNT_MODE_RC_TARGETING = 3;
  static const int MAV_MOUNT_MODE_GPS_POINT = 4;

}

