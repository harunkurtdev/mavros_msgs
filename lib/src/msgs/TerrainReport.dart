// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:25 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class TerrainReport extends RosMessage<TerrainReport> {
  Header header;

  double latitude;

  double longitude;

  int spacing;

  double terrain_height;

  double current_height;

  int pending;

  int loaded;

  static TerrainReport $prototype = TerrainReport();
  TerrainReport({
    Header header,
    double latitude,
    double longitude,
    int spacing,
    double terrain_height,
    double current_height,
    int pending,
    int loaded,
  })  : this.header = header ?? Header(),
        this.latitude = latitude ?? 0.0,
        this.longitude = longitude ?? 0.0,
        this.spacing = spacing ?? 0,
        this.terrain_height = terrain_height ?? 0.0,
        this.current_height = current_height ?? 0.0,
        this.pending = pending ?? 0,
        this.loaded = loaded ?? 0;

  @override
  TerrainReport call({
    Header header,
    double latitude,
    double longitude,
    int spacing,
    double terrain_height,
    double current_height,
    int pending,
    int loaded,
  }) =>
      TerrainReport(
        header: header,
        latitude: latitude,
        longitude: longitude,
        spacing: spacing,
        terrain_height: terrain_height,
        current_height: current_height,
        pending: pending,
        loaded: loaded,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TerrainReport
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [latitude]
    writer.writeFloat64(latitude);
    // Serialize message field [longitude]
    writer.writeFloat64(longitude);
    // Serialize message field [spacing]
    writer.writeUint16(spacing);
    // Serialize message field [terrain_height]
    writer.writeFloat32(terrain_height);
    // Serialize message field [current_height]
    writer.writeFloat32(current_height);
    // Serialize message field [pending]
    writer.writeUint16(pending);
    // Serialize message field [loaded]
    writer.writeUint16(loaded);
  }

  @override
  TerrainReport deserialize(ByteDataReader reader) {
    //deserializes a message object of type TerrainReport
    final data = TerrainReport();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [latitude]
    data.latitude = reader.readFloat64();
    // Deserialize message field [longitude]
    data.longitude = reader.readFloat64();
    // Deserialize message field [spacing]
    data.spacing = reader.readUint16();
    // Deserialize message field [terrain_height]
    data.terrain_height = reader.readFloat32();
    // Deserialize message field [current_height]
    data.current_height = reader.readFloat32();
    // Deserialize message field [pending]
    data.pending = reader.readUint16();
    // Deserialize message field [loaded]
    data.loaded = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 30;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/TerrainReport';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'f658be3a775aa38d678b427733ae0139';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Message for TERRAIN_REPORT
# https://mavlink.io/en/messages/common.html#TERRAIN_REPORT

std_msgs/Header header

float64 latitude
float64 longitude
uint16 spacing
float32 terrain_height # in meters, terrain height
float32 current_height # in meters, vehicle height above terrain
uint16 pending
uint16 loaded 

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
