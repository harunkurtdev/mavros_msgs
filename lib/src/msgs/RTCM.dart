// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:25 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class RTCM extends RosMessage<RTCM> {
  Header header;

  List<int> data;

  static RTCM $prototype = RTCM();
  RTCM({ 
    Header? header,
    List<int> data,
  }):
  this.header = header ?? Header(),
  this.data = data ?? [];

  @override
  RTCM call({ 
    Header? header,
    List<int> data,
  }) => RTCM(
  header: header,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RTCM
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val), specArrayLen: null);
  }

  @override
  RTCM deserialize(ByteDataReader reader) {
    //deserializes a message object of type RTCM
    final data = RTCM();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += data.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/RTCM';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8903b686ebe5db3477e83c6d0bb149f8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# RTCM message for the gps_rtk plugin
# The gps_rtk plugin will fragment the data if necessary and 
# forward it to the FCU via Mavlink through the available link.
# data should be <= 4*180, higher will be discarded.
std_msgs/Header header
uint8[] data

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

