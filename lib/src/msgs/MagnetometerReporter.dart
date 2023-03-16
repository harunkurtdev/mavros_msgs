// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class MagnetometerReporter extends RosMessage<MagnetometerReporter> {
  Header header;

  int report;

  double confidence;

  static MagnetometerReporter $prototype = MagnetometerReporter();
  MagnetometerReporter({ 
    Header? header,
    int? report,
    double? confidence,
  }):
  this.header = header ?? Header(),
  this.report = report ?? 0,
  this.confidence = confidence ?? 0.0;

  @override
  MagnetometerReporter call({ 
    Header? header,
    int? report,
    double? confidence,
  }) => MagnetometerReporter(
  header: header,
  report: report,
  confidence: confidence,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MagnetometerReporter
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [report]
    writer.writeUint8(report);
    // Serialize message field [confidence]
    writer.writeFloat32(confidence);
  }

  @override
  MagnetometerReporter deserialize(ByteDataReader reader) {
    //deserializes a message object of type MagnetometerReporter
    final data = MagnetometerReporter();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [report]
    data.report = reader.readUint8();
    // Deserialize message field [confidence]
    data.confidence = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/MagnetometerReporter';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c1014202c8f02f171d3d0eef42920a2e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''std_msgs/Header header

uint8 report
float32 confidence
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

