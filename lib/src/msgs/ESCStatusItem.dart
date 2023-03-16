// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:21 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
//
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

import 'package:dartros/dartros.dart';

//-----------------------------------------------------------

class ESCStatusItem extends RosMessage<ESCStatusItem> {
  Header header;

  int rpm;

  double voltage;

  double current;

  static ESCStatusItem $prototype = ESCStatusItem();
  ESCStatusItem({
    Header? header,
    int? rpm,
    double? voltage,
    double? current,
  })  : this.header = header ?? Header(),
        this.rpm = rpm ?? 0,
        this.voltage = voltage ?? 0.0,
        this.current = current ?? 0.0;

  @override
  ESCStatusItem call({
    Header? header,
    int? rpm,
    double? voltage,
    double? current,
  }) =>
      ESCStatusItem(
        header: header,
        rpm: rpm,
        voltage: voltage,
        current: current,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ESCStatusItem
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [rpm]
    writer.writeInt32(rpm);
    // Serialize message field [voltage]
    writer.writeFloat32(voltage);
    // Serialize message field [current]
    writer.writeFloat32(current);
  }

  @override
  ESCStatusItem deserialize(ByteDataReader reader) {
    //deserializes a message object of type ESCStatusItem
    final data = ESCStatusItem();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [rpm]
    data.rpm = reader.readInt32();
    // Deserialize message field [voltage]
    data.voltage = reader.readFloat32();
    // Deserialize message field [current]
    data.current = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ESCStatusItem';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '70651ef564857ec47d6e23206e2f7145';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# ESCStatusItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_STATUS

std_msgs/Header header

int32 rpm
float32 voltage
float32 current

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
