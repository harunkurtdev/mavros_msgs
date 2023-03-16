// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class RCIn extends RosMessage<RCIn> {
  Header header;

  int rssi;

  List<int> channels;

  static RCIn $prototype = RCIn();
  RCIn({ 
    Header? header,
    int? rssi,
    List<int> channels,
  }):
  this.header = header ?? Header(),
  this.rssi = rssi ?? 0,
  this.channels = channels ?? [];

  @override
  RCIn call({ 
    Header? header,
    int? rssi,
    List<int> channels,
  }) => RCIn(
  header: header,
  rssi: rssi,
  channels: channels,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RCIn
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [rssi]
    writer.writeUint8(rssi);
    // Serialize message field [channels]
    writer.writeArray<int>(channels, (val) => writer.writeUint16(val), specArrayLen: null);
  }

  @override
  RCIn deserialize(ByteDataReader reader) {
    //deserializes a message object of type RCIn
    final data = RCIn();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [rssi]
    data.rssi = reader.readUint8();
    // Deserialize message field [channels]
    data.channels = reader.readArray<int>(() => reader.readUint16(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 2 * channels.length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/RCIn';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1c3eafdb5efbcda3c334e1788bbcfe39';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# RAW RC input state

std_msgs/Header header
uint8 rssi
uint16[] channels

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

