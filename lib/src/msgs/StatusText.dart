// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:25 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class StatusText extends RosMessage<StatusText> {
  Header header;

  int severity;

  String text;

  static StatusText $prototype = StatusText();
  StatusText({ 
    Header? header,
    int? severity,
    String? text,
  }):
  this.header = header ?? Header(),
  this.severity = severity ?? 0,
  this.text = text ?? '';

  @override
  StatusText call({ 
    Header? header,
    int? severity,
    String? text,
  }) => StatusText(
  header: header,
  severity: severity,
  text: text,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type StatusText
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [severity]
    writer.writeUint8(severity);
    // Serialize message field [text]
    writer.writeString(text);
  }

  @override
  StatusText deserialize(ByteDataReader reader) {
    //deserializes a message object of type StatusText
    final data = StatusText();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [severity]
    data.severity = reader.readUint8();
    // Deserialize message field [text]
    data.text = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(text).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/StatusText';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6cfd33cd09e4abf5841d7be3c770a969';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# STATUSTEXT message representation
# https://mavlink.io/en/messages/common.html#STATUSTEXT

# Severity levels
uint8 EMERGENCY = 0
uint8 ALERT = 1
uint8 CRITICAL = 2
uint8 ERROR = 3
uint8 WARNING = 4
uint8 NOTICE = 5
uint8 INFO = 6
uint8 DEBUG = 7

# Fields
std_msgs/Header header
uint8 severity
string text

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

// Constants for message
  static const int EMERGENCY = 0;
  static const int ALERT = 1;
  static const int CRITICAL = 2;
  static const int ERROR = 3;
  static const int WARNING = 4;
  static const int NOTICE = 5;
  static const int INFO = 6;
  static const int DEBUG = 7;

}

