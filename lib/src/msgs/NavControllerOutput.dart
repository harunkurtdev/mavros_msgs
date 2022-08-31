// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class NavControllerOutput extends RosMessage<NavControllerOutput> {
  Header header;

  double nav_roll;

  double nav_pitch;

  int nav_bearing;

  int target_bearing;

  int wp_dist;

  double alt_error;

  double aspd_error;

  double xtrack_error;

  static NavControllerOutput $prototype = NavControllerOutput();
  NavControllerOutput({ 
    Header header,
    double nav_roll,
    double nav_pitch,
    int nav_bearing,
    int target_bearing,
    int wp_dist,
    double alt_error,
    double aspd_error,
    double xtrack_error,
  }):
  this.header = header ?? Header(),
  this.nav_roll = nav_roll ?? 0.0,
  this.nav_pitch = nav_pitch ?? 0.0,
  this.nav_bearing = nav_bearing ?? 0,
  this.target_bearing = target_bearing ?? 0,
  this.wp_dist = wp_dist ?? 0,
  this.alt_error = alt_error ?? 0.0,
  this.aspd_error = aspd_error ?? 0.0,
  this.xtrack_error = xtrack_error ?? 0.0;

  @override
  NavControllerOutput call({ 
    Header header,
    double nav_roll,
    double nav_pitch,
    int nav_bearing,
    int target_bearing,
    int wp_dist,
    double alt_error,
    double aspd_error,
    double xtrack_error,
  }) => NavControllerOutput(
  header: header,
  nav_roll: nav_roll,
  nav_pitch: nav_pitch,
  nav_bearing: nav_bearing,
  target_bearing: target_bearing,
  wp_dist: wp_dist,
  alt_error: alt_error,
  aspd_error: aspd_error,
  xtrack_error: xtrack_error,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type NavControllerOutput
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [nav_roll]
    writer.writeFloat32(nav_roll);
    // Serialize message field [nav_pitch]
    writer.writeFloat32(nav_pitch);
    // Serialize message field [nav_bearing]
    writer.writeInt16(nav_bearing);
    // Serialize message field [target_bearing]
    writer.writeInt16(target_bearing);
    // Serialize message field [wp_dist]
    writer.writeUint16(wp_dist);
    // Serialize message field [alt_error]
    writer.writeFloat32(alt_error);
    // Serialize message field [aspd_error]
    writer.writeFloat32(aspd_error);
    // Serialize message field [xtrack_error]
    writer.writeFloat32(xtrack_error);
  }

  @override
  NavControllerOutput deserialize(ByteDataReader reader) {
    //deserializes a message object of type NavControllerOutput
    final data = NavControllerOutput();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [nav_roll]
    data.nav_roll = reader.readFloat32();
    // Deserialize message field [nav_pitch]
    data.nav_pitch = reader.readFloat32();
    // Deserialize message field [nav_bearing]
    data.nav_bearing = reader.readInt16();
    // Deserialize message field [target_bearing]
    data.target_bearing = reader.readInt16();
    // Deserialize message field [wp_dist]
    data.wp_dist = reader.readUint16();
    // Deserialize message field [alt_error]
    data.alt_error = reader.readFloat32();
    // Deserialize message field [aspd_error]
    data.aspd_error = reader.readFloat32();
    // Deserialize message field [xtrack_error]
    data.xtrack_error = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 26;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/NavControllerOutput';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'f6340c9bb79e3ac2a6142ce592e66756';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# https://mavlink.io/en/messages/common.html#NAV_CONTROLLER_OUTPUT

std_msgs/Header header

float32 nav_roll            # Current desired roll
float32 nav_pitch           # Current desired pitch
int16 nav_bearing           # Current desired heading
int16 target_bearing        # Bearing to current waypoint/target
uint16 wp_dist              # Distance to active waypoint
float32 alt_error           # Current altitude error
float32 aspd_error          # Current airspeed error
float32 xtrack_error        # Current crosstrack error on x-y plane
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

