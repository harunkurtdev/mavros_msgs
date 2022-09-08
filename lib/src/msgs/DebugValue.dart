// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class DebugValue extends RosMessage<DebugValue> {
  Header header;

  int index;

  String name;

  double value_float;

  int value_int;

  List<double> data;

  int type;

  static DebugValue $prototype = DebugValue();
  DebugValue({
    Header? header,
    int? index,
    String? name,
    double? value_float,
    int? value_int,
    List<double>? data,
    int? type,
  })  : this.header = header ?? Header(),
        this.index = index ?? 0,
        this.name = name ?? '',
        this.value_float = value_float ?? 0.0,
        this.value_int = value_int ?? 0,
        this.data = data ?? [],
        this.type = type ?? 0;

  @override
  DebugValue call({
    Header? header,
    int? index,
    String? name,
    double? value_float,
    int? value_int,
    List<double>? data,
    int? type,
  }) =>
      DebugValue(
        header: header,
        index: index,
        name: name,
        value_float: value_float,
        value_int: value_int,
        data: data,
        type: type,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type DebugValue
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [index]
    writer.writeint32(index);
    // Serialize message field [name]
    writer.writeString(name);
    // Serialize message field [value_float]
    writer.writeFloat32(value_float);
    // Serialize message field [value_int]
    writer.writeint32(value_int);
    // Serialize message field [data]
    writer.writeArray<double>(data, (val) => writer.writeFloat32(val),
        specArrayLen: null);
    // Serialize message field [type]
    writer.writeUint8(type);
  }

  @override
  DebugValue deserialize(ByteDataReader reader) {
    //deserializes a message object of type DebugValue
    final data = DebugValue();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [index]
    data.index = reader.readint32();
    // Deserialize message field [name]
    data.name = reader.readString();
    // Deserialize message field [value_float]
    data.value_float = reader.readFloat32();
    // Deserialize message field [value_int]
    data.value_int = reader.readint32();
    // Deserialize message field [data]
    data.data =
        reader.readArray<double>(() => reader.readFloat32(), arrayLen: null);
    // Deserialize message field [type]
    data.type = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(name).length;
    length += 4 * data.length;
    return length + 21;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/DebugValue';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'af412ff7223c64155e7e3c6b7508eaaa';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Msg for Debug MAVLink API
#
# Supported types:
# DEBUG			https://mavlink.io/en/messages/common.html#DEBUG
# DEBUG_VECTOR			https://mavlink.io/en/messages/common.html#DEBUG_VECT
# NAMED_VALUE_FLOAT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_FLOAT
# NAMED_VALUE_int		https://mavlink.io/en/messages/common.html#NAMED_VALUE_int
# @TODO: add support for DEBUG_ARRAY (https://github.com/mavlink/mavlink/pull/734)

std_msgs/Header header

int32 index			# index value of DEBUG value (-1 if not indexed)

string name			# value name/key

float32 value_float		# float value for NAMED_VALUE_FLOAT and DEBUG
int32 value_int		# int value for NAMED_VALUE_int
float32[] data			# DEBUG vector or array

uint8 type
uint8 TYPE_DEBUG		= 0
uint8 TYPE_DEBUG_VECT		= 1
uint8 TYPE_DEBUG_ARRAY		= 2
uint8 TYPE_NAMED_VALUE_FLOAT	= 3
uint8 TYPE_NAMED_VALUE_int	= 4

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
  static const int TYPE_DEBUG = 0;
  static const int TYPE_DEBUG_VECT = 1;
  static const int TYPE_DEBUG_ARRAY = 2;
  static const int TYPE_NAMED_VALUE_FLOAT = 3;
  static const int TYPE_NAMED_VALUE_int = 4;
}
