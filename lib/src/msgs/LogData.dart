// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class LogData extends RosMessage<LogData> {
  Header header;

  int id;

  int offset;

  List<int> data;

  static LogData $prototype = LogData();
  LogData({ 
    Header? header,
    int? id,
    int? offset,
    List<int>? data,
  }):
  this.header = header ?? Header(),
  this.id = id ?? 0,
  this.offset = offset ?? 0,
  this.data = data ?? [];

  @override
  LogData call({ 
    Header? header,
    int? id,
    int? offset,
    List<int>? data,
  }) => LogData(
  header: header,
  id: id,
  offset: offset,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogData
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [id]
    writer.writeUint16(id);
    // Serialize message field [offset]
    writer.writeUint32(offset);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val), specArrayLen: null);
  }

  @override
  LogData deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogData
    final data = LogData();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [id]
    data.id = reader.readUint16();
    // Deserialize message field [offset]
    data.offset = reader.readUint32();
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += data.length;
    return length + 10;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/LogData';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ccaa27ba630f8f5d02c287763eb1e91b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Reply to LogRequestData, - a chunk of a log
#
#  :id: - log id
#  :offset: - offset into the log
#  :data: - chunk of data (if zero-sized, then there are no more chunks)

std_msgs/Header header

uint16 id
uint32 offset
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

