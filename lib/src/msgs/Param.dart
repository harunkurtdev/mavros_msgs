// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'ParamValue.dart';

//-----------------------------------------------------------

class Param extends RosMessage<Param> {
  Header header;

  String param_id;

  ParamValue value;

  int param_index;

  int param_count;

  static Param $prototype = Param();
  Param({
    Header header,
    String param_id,
    ParamValue value,
    int param_index,
    int param_count,
  })  : this.header = header ?? Header(),
        this.param_id = param_id ?? '',
        this.value = value ?? ParamValue(),
        this.param_index = param_index ?? 0,
        this.param_count = param_count ?? 0;

  @override
  Param call({
    Header header,
    String param_id,
    ParamValue value,
    int param_index,
    int param_count,
  }) =>
      Param(
        header: header,
        param_id: param_id,
        value: value,
        param_index: param_index,
        param_count: param_count,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Param
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [param_id]
    writer.writeString(param_id);
    // Serialize message field [value]
    value.serialize(writer);
    // Serialize message field [param_index]
    writer.writeUint16(param_index);
    // Serialize message field [param_count]
    writer.writeUint16(param_count);
  }

  @override
  Param deserialize(ByteDataReader reader) {
    //deserializes a message object of type Param
    final data = Param();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [param_id]
    data.param_id = reader.readString();
    // Deserialize message field [value]
    data.value = ParamValue.$prototype.deserialize(reader);
    // Deserialize message field [param_index]
    data.param_index = reader.readUint16();
    // Deserialize message field [param_count]
    data.param_count = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(param_id).length;
    return length + 24;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Param';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '62165a8f212050223dda9583b0f22c3c';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Parameter msg.

std_msgs/Header header

string param_id
mavros_msgs/ParamValue value

uint16 param_index
uint16 param_count

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
MSG: mavros_msgs/ParamValue
# Parameter value storage type.
#
# integer and float fields:
#
# if integer != 0: it is integer value
# else if real != 0.0: it is float value
# else: it is zero.

int64 integer
float64 real

''';
  }
}
