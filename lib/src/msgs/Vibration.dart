// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Vibration extends RosMessage<Vibration> {
  Header header;

  Vector3 vibration;

  List<double> clipping;

  static Vibration $prototype = Vibration();
  Vibration({ 
    Header header,
    Vector3 vibration,
    List<double> clipping,
  }):
  this.header = header ?? Header(),
  this.vibration = vibration ?? Vector3(),
  this.clipping = clipping ?? List.generate(3, (_) => 0);

  @override
  Vibration call({ 
    Header header,
    Vector3 vibration,
    List<double> clipping,
  }) => Vibration(
  header: header,
  vibration: vibration,
  clipping: clipping,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Vibration
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [vibration]
    vibration.serialize(writer);
    // Check that the constant length array field [clipping] has the right length
    if (clipping.length != 3) {
      throw Exception('Unable to serialize array field clipping - length must be 3');
    }
    // Serialize message field [clipping]
    writer.writeArray<double>(clipping, (val) => writer.writeFloat32(val), specArrayLen: 3);
  }

  @override
  Vibration deserialize(ByteDataReader reader) {
    //deserializes a message object of type Vibration
    final data = Vibration();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [vibration]
    data.vibration = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [clipping]
    data.clipping = reader.readArray<double>(() => reader.readFloat32(), arrayLen: 3);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 36;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Vibration';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'eb92bf9b7aa735dfcd06b3ede5027d02';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# VIBRATION message data
# @description: Vibration levels and accelerometer clipping

std_msgs/Header header

geometry_msgs/Vector3 vibration		# 3-axis vibration levels
float32[3] clipping				# Accelerometers clipping
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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
''';
  }

}

