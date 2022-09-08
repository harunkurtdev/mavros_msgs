// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'ESCInfoItem.dart';

//-----------------------------------------------------------

class ESCInfo extends RosMessage<ESCInfo> {
  Header header;

  int counter;

  int count;

  int connection_type;

  int info;

  List<ESCInfoItem> esc_info;

  static ESCInfo $prototype = ESCInfo();
  ESCInfo({
    Header header,
    int counter,
    int count,
    int connection_type,
    int info,
    List<ESCInfoItem> esc_info,
  })  : this.header = header ?? Header(),
        this.counter = counter ?? 0,
        this.count = count ?? 0,
        this.connection_type = connection_type ?? 0,
        this.info = info ?? 0,
        this.esc_info = esc_info ?? [];

  @override
  ESCInfo call({
    Header header,
    int counter,
    int count,
    int connection_type,
    int info,
    List<ESCInfoItem> esc_info,
  }) =>
      ESCInfo(
        header: header,
        counter: counter,
        count: count,
        connection_type: connection_type,
        info: info,
        esc_info: esc_info,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ESCInfo
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [counter]
    writer.writeUint16(counter);
    // Serialize message field [count]
    writer.writeUint8(count);
    // Serialize message field [connection_type]
    writer.writeUint8(connection_type);
    // Serialize message field [info]
    writer.writeUint8(info);
    // Serialize message field [esc_info]
    // Serialize the length for message field [esc_info]
    writer.writeUint32(esc_info.length);
    esc_info.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  ESCInfo deserialize(ByteDataReader reader) {
    //deserializes a message object of type ESCInfo
    final data = ESCInfo();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [counter]
    data.counter = reader.readUint16();
    // Deserialize message field [count]
    data.count = reader.readUint8();
    // Deserialize message field [connection_type]
    data.connection_type = reader.readUint8();
    // Deserialize message field [info]
    data.info = reader.readUint8();
    // Deserialize message field [esc_info]
    {
      // Deserialize array length for message field [esc_info]
      final len = reader.readInt32();
      data.esc_info =
          List.generate(len, (_) => ESCInfoItem.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    esc_info.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 9;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ESCInfo';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '63fa145856ba5b9bdcaf4b1f55eaa549';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# ESCInfo.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_INFO

std_msgs/Header header

uint16 counter
uint8 count
uint8 connection_type
uint8 info
mavros_msgs/ESCInfoItem[] esc_info


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

================================================================================
MSG: mavros_msgs/ESCInfoItem
# ESCInfoItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_INFO

std_msgs/Header header

uint16 failure_flags
uint32 error_count
int32 temperature


''';
  }
}
