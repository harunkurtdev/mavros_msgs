// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class WaypointReached extends RosMessage<WaypointReached> {
  Header header;

  int wp_seq;

  static WaypointReached $prototype = WaypointReached();
  WaypointReached({ 
    Header? header,
    int? wp_seq,
  }):
  this.header = header ?? Header(),
  this.wp_seq = wp_seq ?? 0;

  @override
  WaypointReached call({ 
    Header? header,
    int? wp_seq,
  }) => WaypointReached(
  header: header,
  wp_seq: wp_seq,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointReached
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [wp_seq]
    writer.writeUint16(wp_seq);
  }

  @override
  WaypointReached deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointReached
    final data = WaypointReached();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [wp_seq]
    data.wp_seq = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 2;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/WaypointReached';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1cf64d072d9f6aa0a6715922bdde6a35';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# That message represent MISSION_ITEM_REACHED
#
#   :wp_seq:    index number of reached waypoint

Header header

uint16 wp_seq

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

