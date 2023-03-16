// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class ManualControl extends RosMessage<ManualControl> {
  Header header;

  double x;

  double y;

  double z;

  double r;

  int buttons;

  static ManualControl $prototype = ManualControl();
  ManualControl({ 
    Header? header,
    double? x,
    double? y,
    double? z,
    double? r,
    int? buttons,
  }):
  this.header = header ?? Header(),
  this.x = x ?? 0.0,
  this.y = y ?? 0.0,
  this.z = z ?? 0.0,
  this.r = r ?? 0.0,
  this.buttons = buttons ?? 0;

  @override
  ManualControl call({ 
    Header? header,
    double? x,
    double? y,
    double? z,
    double? r,
    int? buttons,
  }) => ManualControl(
  header: header,
  x: x,
  y: y,
  z: z,
  r: r,
  buttons: buttons,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ManualControl
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [x]
    writer.writeFloat32(x);
    // Serialize message field [y]
    writer.writeFloat32(y);
    // Serialize message field [z]
    writer.writeFloat32(z);
    // Serialize message field [r]
    writer.writeFloat32(r);
    // Serialize message field [buttons]
    writer.writeUint16(buttons);
  }

  @override
  ManualControl deserialize(ByteDataReader reader) {
    //deserializes a message object of type ManualControl
    final data = ManualControl();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [x]
    data.x = reader.readFloat32();
    // Deserialize message field [y]
    data.y = reader.readFloat32();
    // Deserialize message field [z]
    data.z = reader.readFloat32();
    // Deserialize message field [r]
    data.r = reader.readFloat32();
    // Deserialize message field [buttons]
    data.buttons = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 18;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ManualControl';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c41e3298484ea98e05ac502ce55af59f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Manual Control state
std_msgs/Header header
float32 x
float32 y
float32 z
float32 r
uint16 buttons

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

