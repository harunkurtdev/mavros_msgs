// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:21 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'ESCStatusItem.dart';

//-----------------------------------------------------------

class ESCStatus extends RosMessage<ESCStatus> {
  Header header;

  List<ESCStatusItem> esc_status;

  static ESCStatus $prototype = ESCStatus();
  ESCStatus({ 
    Header header,
    List<ESCStatusItem> esc_status,
  }):
  this.header = header ?? Header(),
  this.esc_status = esc_status ?? [];

  @override
  ESCStatus call({ 
    Header header,
    List<ESCStatusItem> esc_status,
  }) => ESCStatus(
  header: header,
  esc_status: esc_status,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ESCStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [esc_status]
    // Serialize the length for message field [esc_status]
    writer.writeUint32(esc_status.length);
    esc_status.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  ESCStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type ESCStatus
    final data = ESCStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [esc_status]
    {
      // Deserialize array length for message field [esc_status]
      final len = reader.readInt32();
      data.esc_status = List.generate(len, (_) => ESCStatusItem.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    esc_status.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ESCStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '145d49eaf5cfecbdfd50ae4a22fe82d4';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# ESCStatus.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_STATUS

std_msgs/Header header

mavros_msgs/ESCStatusItem[] esc_status

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
MSG: mavros_msgs/ESCStatusItem
# ESCStatusItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_STATUS

std_msgs/Header header

int32 rpm
float32 voltage
float32 current

''';
  }

}

