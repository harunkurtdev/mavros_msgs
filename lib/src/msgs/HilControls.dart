// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class HilControls extends RosMessage<HilControls> {
  Header header;

  double roll_ailerons;

  double pitch_elevator;

  double yaw_rudder;

  double throttle;

  double aux1;

  double aux2;

  double aux3;

  double aux4;

  int mode;

  int nav_mode;

  static HilControls $prototype = HilControls();
  HilControls({ 
    Header? header,
    double? roll_ailerons,
    double? pitch_elevator,
    double? yaw_rudder,
    double? throttle,
    double? aux1,
    double? aux2,
    double? aux3,
    double? aux4,
    int? mode,
    int? nav_mode,
  }):
  this.header = header ?? Header(),
  this.roll_ailerons = roll_ailerons ?? 0.0,
  this.pitch_elevator = pitch_elevator ?? 0.0,
  this.yaw_rudder = yaw_rudder ?? 0.0,
  this.throttle = throttle ?? 0.0,
  this.aux1 = aux1 ?? 0.0,
  this.aux2 = aux2 ?? 0.0,
  this.aux3 = aux3 ?? 0.0,
  this.aux4 = aux4 ?? 0.0,
  this.mode = mode ?? 0,
  this.nav_mode = nav_mode ?? 0;

  @override
  HilControls call({ 
    Header? header,
    double? roll_ailerons,
    double? pitch_elevator,
    double? yaw_rudder,
    double? throttle,
    double? aux1,
    double? aux2,
    double? aux3,
    double? aux4,
    int? mode,
    int? nav_mode,
  }) => HilControls(
  header: header,
  roll_ailerons: roll_ailerons,
  pitch_elevator: pitch_elevator,
  yaw_rudder: yaw_rudder,
  throttle: throttle,
  aux1: aux1,
  aux2: aux2,
  aux3: aux3,
  aux4: aux4,
  mode: mode,
  nav_mode: nav_mode,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type HilControls
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [roll_ailerons]
    writer.writeFloat32(roll_ailerons);
    // Serialize message field [pitch_elevator]
    writer.writeFloat32(pitch_elevator);
    // Serialize message field [yaw_rudder]
    writer.writeFloat32(yaw_rudder);
    // Serialize message field [throttle]
    writer.writeFloat32(throttle);
    // Serialize message field [aux1]
    writer.writeFloat32(aux1);
    // Serialize message field [aux2]
    writer.writeFloat32(aux2);
    // Serialize message field [aux3]
    writer.writeFloat32(aux3);
    // Serialize message field [aux4]
    writer.writeFloat32(aux4);
    // Serialize message field [mode]
    writer.writeUint8(mode);
    // Serialize message field [nav_mode]
    writer.writeUint8(nav_mode);
  }

  @override
  HilControls deserialize(ByteDataReader reader) {
    //deserializes a message object of type HilControls
    final data = HilControls();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [roll_ailerons]
    data.roll_ailerons = reader.readFloat32();
    // Deserialize message field [pitch_elevator]
    data.pitch_elevator = reader.readFloat32();
    // Deserialize message field [yaw_rudder]
    data.yaw_rudder = reader.readFloat32();
    // Deserialize message field [throttle]
    data.throttle = reader.readFloat32();
    // Deserialize message field [aux1]
    data.aux1 = reader.readFloat32();
    // Deserialize message field [aux2]
    data.aux2 = reader.readFloat32();
    // Deserialize message field [aux3]
    data.aux3 = reader.readFloat32();
    // Deserialize message field [aux4]
    data.aux4 = reader.readFloat32();
    // Deserialize message field [mode]
    data.mode = reader.readUint8();
    // Deserialize message field [nav_mode]
    data.nav_mode = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 34;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/HilControls';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '698148349c3a2e5720afcae2d934acca';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# HilControls.msg
#
# ROS representation of MAVLink HIL_CONTROLS
# (deprecated, use HIL_ACTUATOR_CONTROLS instead)
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_CONTROLS

std_msgs/Header header
float32 roll_ailerons
float32 pitch_elevator
float32 yaw_rudder
float32 throttle
float32 aux1
float32 aux2
float32 aux3
float32 aux4
uint8 mode
uint8 nav_mode

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

}

