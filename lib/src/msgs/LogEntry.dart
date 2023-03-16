// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class LogEntry extends RosMessage<LogEntry> {
  Header header;

  int id;

  int num_logs;

  int last_log_num;

  RosTime time_utc;

  int size;

  static LogEntry $prototype = LogEntry();
  LogEntry({ 
    Header? header,
    int? id,
    int? num_logs,
    int? last_log_num,
    RosTime? time_utc,
    int? size,
  }):
  this.header = header ?? Header(),
  this.id = id ?? 0,
  this.num_logs = num_logs ?? 0,
  this.last_log_num = last_log_num ?? 0,
  this.time_utc = time_utc ?? RosTime(secs: 0, nsecs: 0),
  this.size = size ?? 0;

  @override
  LogEntry call({ 
    Header? header,
    int? id,
    int? num_logs,
    int? last_log_num,
    RosTime? time_utc,
    int? size,
  }) => LogEntry(
  header: header,
  id: id,
  num_logs: num_logs,
  last_log_num: last_log_num,
  time_utc: time_utc,
  size: size,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogEntry
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [id]
    writer.writeUint16(id);
    // Serialize message field [num_logs]
    writer.writeUint16(num_logs);
    // Serialize message field [last_log_num]
    writer.writeUint16(last_log_num);
    // Serialize message field [time_utc]
    writer.writeTime(time_utc);
    // Serialize message field [size]
    writer.writeUint32(size);
  }

  @override
  LogEntry deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogEntry
    final data = LogEntry();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [id]
    data.id = reader.readUint16();
    // Deserialize message field [num_logs]
    data.num_logs = reader.readUint16();
    // Deserialize message field [last_log_num]
    data.last_log_num = reader.readUint16();
    // Deserialize message field [time_utc]
    data.time_utc = reader.readTime();
    // Deserialize message field [size]
    data.size = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 18;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/LogEntry';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a1428fc1ec4b2bfc8ab0c0ead7cce571';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Information about a single log
#
#  :id: - log id
#  :num_logs: - total number of logs
#  :last_log_num: - id of last log
#  :time_utc: - UTC timestamp of log (ros::Time(0) if not available)
#  :size: - size of log in bytes (may be approximate)

std_msgs/Header header

uint16 id
uint16 num_logs
uint16 last_log_num
time time_utc
uint32 size

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

