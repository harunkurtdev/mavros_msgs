// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class BatteryStatus extends RosMessage<BatteryStatus> {
  Header header;

  double voltage;

  double current;

  double remaining;

  static BatteryStatus $prototype = BatteryStatus();
  BatteryStatus({ 
    Header header,
    double voltage,
    double current,
    double remaining,
  }):
  this.header = header ?? Header(),
  this.voltage = voltage ?? 0.0,
  this.current = current ?? 0.0,
  this.remaining = remaining ?? 0.0;

  @override
  BatteryStatus call({ 
    Header header,
    double voltage,
    double current,
    double remaining,
  }) => BatteryStatus(
  header: header,
  voltage: voltage,
  current: current,
  remaining: remaining,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type BatteryStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [voltage]
    writer.writeFloat32(voltage);
    // Serialize message field [current]
    writer.writeFloat32(current);
    // Serialize message field [remaining]
    writer.writeFloat32(remaining);
  }

  @override
  BatteryStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type BatteryStatus
    final data = BatteryStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [voltage]
    data.voltage = reader.readFloat32();
    // Deserialize message field [current]
    data.current = reader.readFloat32();
    // Deserialize message field [remaining]
    data.remaining = reader.readFloat32();
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
    return 'mavros_msgs/BatteryStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8ba4ae7c602c5ae6a7e8f3ffb652dc5f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Represent battery status from SYSTEM_STATUS
#
# To be replaced when sensor_msgs/BatteryState PR will be merged
# https://github.com/ros/common_msgs/pull/74

std_msgs/Header header
float32 voltage # [V]
float32 current # [A]
float32 remaining # 0..1

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

