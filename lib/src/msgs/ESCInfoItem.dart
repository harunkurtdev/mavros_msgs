// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class ESCInfoItem extends RosMessage<ESCInfoItem> {
  Header header;

  int failure_flags;

  int error_count;

  int temperature;

  static ESCInfoItem $prototype = ESCInfoItem();
  ESCInfoItem({
    Header? header,
    int? failure_flags,
    int? error_count,
    int? temperature,
  })  : this.header = header ?? Header(),
        this.failure_flags = failure_flags ?? 0,
        this.error_count = error_count ?? 0,
        this.temperature = temperature ?? 0;

  @override
  ESCInfoItem call({
    Header? header,
    int? failure_flags,
    int? error_count,
    int? temperature,
  }) =>
      ESCInfoItem(
        header: header,
        failure_flags: failure_flags,
        error_count: error_count,
        temperature: temperature,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ESCInfoItem
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [failure_flags]
    writer.writeUint16(failure_flags);
    // Serialize message field [error_count]
    writer.writeUint32(error_count);
    // Serialize message field [temperature]
    writer.writeint32(temperature);
  }

  @override
  ESCInfoItem deserialize(ByteDataReader reader) {
    //deserializes a message object of type ESCInfoItem
    final data = ESCInfoItem();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [failure_flags]
    data.failure_flags = reader.readUint16();
    // Deserialize message field [error_count]
    data.error_count = reader.readUint32();
    // Deserialize message field [temperature]
    data.temperature = reader.readint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 10;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ESCInfoItem';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '968983ff768dda90f04c5aa11caf6e74';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# ESCInfoItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_INFO

std_msgs/Header header

uint16 failure_flags
uint32 error_count
int32 temperature


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
