// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Thrust extends RosMessage<Thrust> {
  Header header;

  double thrust;

  static Thrust $prototype = Thrust();
  Thrust({ 
    Header? header,
    double? thrust,
  }):
  this.header = header ?? Header(),
  this.thrust = thrust ?? 0.0;

  @override
  Thrust call({ 
    Header? header,
    double? thrust,
  }) => Thrust(
  header: header,
  thrust: thrust,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Thrust
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [thrust]
    writer.writeFloat32(thrust);
  }

  @override
  Thrust deserialize(ByteDataReader reader) {
    //deserializes a message object of type Thrust
    final data = Thrust();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [thrust]
    data.thrust = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Thrust';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c61da3a8868a8b502eaf0b0abd839f57';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Thrust to send to the FCU

std_msgs/Header header

float32 thrust

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

