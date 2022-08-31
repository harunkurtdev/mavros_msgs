// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:27 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class WheelOdomStamped extends RosMessage<WheelOdomStamped> {
  Header header;

  List<double> data;

  static WheelOdomStamped $prototype = WheelOdomStamped();
  WheelOdomStamped({ 
    Header header,
    List<double> data,
  }):
  this.header = header ?? Header(),
  this.data = data ?? [];

  @override
  WheelOdomStamped call({ 
    Header header,
    List<double> data,
  }) => WheelOdomStamped(
  header: header,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WheelOdomStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [data]
    writer.writeArray<double>(data, (val) => writer.writeFloat64(val), specArrayLen: null);
  }

  @override
  WheelOdomStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type WheelOdomStamped
    final data = WheelOdomStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [data]
    data.data = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 8 * data.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/WheelOdomStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'fb60495edd59d3fcf90e173153ae8a9a';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Stamped wheel odometry message
#
# For streaming timestamped data from FCU wheel encoders (RPM or WHEEL_DISTANCE).

std_msgs/Header header
float64[] data

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

