// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:19 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class Altitude extends RosMessage<Altitude> {
  Header header;

  double monotonic;

  double amsl;

  double local;

  double relative;

  double terrain;

  double bottom_clearance;

  static Altitude $prototype = Altitude();
  Altitude({
    Header header,
    double monotonic,
    double amsl,
    double local,
    double relative,
    double terrain,
    double bottom_clearance,
  })  : this.header = header ?? Header(),
        this.monotonic = monotonic ?? 0.0,
        this.amsl = amsl ?? 0.0,
        this.local = local ?? 0.0,
        this.relative = relative ?? 0.0,
        this.terrain = terrain ?? 0.0,
        this.bottom_clearance = bottom_clearance ?? 0.0;

  @override
  Altitude call({
    Header header,
    double monotonic,
    double amsl,
    double local,
    double relative,
    double terrain,
    double bottom_clearance,
  }) =>
      Altitude(
        header: header,
        monotonic: monotonic,
        amsl: amsl,
        local: local,
        relative: relative,
        terrain: terrain,
        bottom_clearance: bottom_clearance,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Altitude
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [monotonic]
    writer.writeFloat32(monotonic);
    // Serialize message field [amsl]
    writer.writeFloat32(amsl);
    // Serialize message field [local]
    writer.writeFloat32(local);
    // Serialize message field [relative]
    writer.writeFloat32(relative);
    // Serialize message field [terrain]
    writer.writeFloat32(terrain);
    // Serialize message field [bottom_clearance]
    writer.writeFloat32(bottom_clearance);
  }

  @override
  Altitude deserialize(ByteDataReader reader) {
    //deserializes a message object of type Altitude
    final data = Altitude();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [monotonic]
    data.monotonic = reader.readFloat32();
    // Deserialize message field [amsl]
    data.amsl = reader.readFloat32();
    // Deserialize message field [local]
    data.local = reader.readFloat32();
    // Deserialize message field [relative]
    data.relative = reader.readFloat32();
    // Deserialize message field [terrain]
    data.terrain = reader.readFloat32();
    // Deserialize message field [bottom_clearance]
    data.bottom_clearance = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 24;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Altitude';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1296a05dc5b6160be0ae04ba9ed3a3fa';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Altitude information
#
# https://mavlink.io/en/messages/common.html#ALTITUDE

std_msgs/Header header

float32 monotonic
float32 amsl
float32 local
float32 relative
float32 terrain
float32 bottom_clearance

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
