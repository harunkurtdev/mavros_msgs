// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class VFR_HUD extends RosMessage<VFR_HUD> {
  Header header;

  double airspeed;

  double groundspeed;

  int heading;

  double throttle;

  double altitude;

  double climb;

  static VFR_HUD $prototype = VFR_HUD();
  VFR_HUD({ 
    Header header,
    double airspeed,
    double groundspeed,
    int heading,
    double throttle,
    double altitude,
    double climb,
  }):
  this.header = header ?? Header(),
  this.airspeed = airspeed ?? 0.0,
  this.groundspeed = groundspeed ?? 0.0,
  this.heading = heading ?? 0,
  this.throttle = throttle ?? 0.0,
  this.altitude = altitude ?? 0.0,
  this.climb = climb ?? 0.0;

  @override
  VFR_HUD call({ 
    Header header,
    double airspeed,
    double groundspeed,
    int heading,
    double throttle,
    double altitude,
    double climb,
  }) => VFR_HUD(
  header: header,
  airspeed: airspeed,
  groundspeed: groundspeed,
  heading: heading,
  throttle: throttle,
  altitude: altitude,
  climb: climb,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type VFR_HUD
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [airspeed]
    writer.writeFloat32(airspeed);
    // Serialize message field [groundspeed]
    writer.writeFloat32(groundspeed);
    // Serialize message field [heading]
    writer.writeInt16(heading);
    // Serialize message field [throttle]
    writer.writeFloat32(throttle);
    // Serialize message field [altitude]
    writer.writeFloat32(altitude);
    // Serialize message field [climb]
    writer.writeFloat32(climb);
  }

  @override
  VFR_HUD deserialize(ByteDataReader reader) {
    //deserializes a message object of type VFR_HUD
    final data = VFR_HUD();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [airspeed]
    data.airspeed = reader.readFloat32();
    // Deserialize message field [groundspeed]
    data.groundspeed = reader.readFloat32();
    // Deserialize message field [heading]
    data.heading = reader.readInt16();
    // Deserialize message field [throttle]
    data.throttle = reader.readFloat32();
    // Deserialize message field [altitude]
    data.altitude = reader.readFloat32();
    // Deserialize message field [climb]
    data.climb = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 22;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/VFR_HUD';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1f55e210c3d39fe105d44d8dc963655f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Metrics typically displayed on a HUD for fixed wing aircraft
#
# VFR_HUD message

std_msgs/Header header
float32 airspeed	# m/s
float32 groundspeed	# m/s
int16 heading		# degrees 0..360
float32 throttle		# normalized to 0.0..1.0
float32 altitude		# MSL
float32 climb		# current climb rate m/s

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

