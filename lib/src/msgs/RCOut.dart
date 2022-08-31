// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class RCOut extends RosMessage<RCOut> {
  Header header;

  List<int> channels;

  static RCOut $prototype = RCOut();
  RCOut({ 
    Header header,
    List<int> channels,
  }):
  this.header = header ?? Header(),
  this.channels = channels ?? [];

  @override
  RCOut call({ 
    Header header,
    List<int> channels,
  }) => RCOut(
  header: header,
  channels: channels,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RCOut
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [channels]
    writer.writeArray<int>(channels, (val) => writer.writeUint16(val), specArrayLen: null);
  }

  @override
  RCOut deserialize(ByteDataReader reader) {
    //deserializes a message object of type RCOut
    final data = RCOut();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [channels]
    data.channels = reader.readArray<int>(() => reader.readUint16(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 2 * channels.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/RCOut';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '52cacf104bab5ae3b103cfe176590713';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# RAW Servo out state

std_msgs/Header header
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

