// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:19 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/msg_utils.dart';
import 'package:geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class AttitudeTarget extends RosMessage<AttitudeTarget> {
  Header header;

  int type_mask;

  Quaternion orientation;

  Vector3 body_rate;

  double thrust;

  static AttitudeTarget $prototype = AttitudeTarget();
  AttitudeTarget({
    Header header,
    int type_mask,
    Quaternion orientation,
    Vector3 body_rate,
    double thrust,
  })  : this.header = header ?? Header(),
        this.type_mask = type_mask ?? 0,
        this.orientation = orientation ?? Quaternion(),
        this.body_rate = body_rate ?? Vector3(),
        this.thrust = thrust ?? 0.0;

  @override
  AttitudeTarget call({
    Header header,
    int type_mask,
    Quaternion orientation,
    Vector3 body_rate,
    double thrust,
  }) =>
      AttitudeTarget(
        header: header,
        type_mask: type_mask,
        orientation: orientation,
        body_rate: body_rate,
        thrust: thrust,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type AttitudeTarget
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [type_mask]
    writer.writeUint8(type_mask);
    // Serialize message field [orientation]
    orientation.serialize(writer);
    // Serialize message field [body_rate]
    body_rate.serialize(writer);
    // Serialize message field [thrust]
    writer.writeFloat32(thrust);
  }

  @override
  AttitudeTarget deserialize(ByteDataReader reader) {
    //deserializes a message object of type AttitudeTarget
    final data = AttitudeTarget();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [type_mask]
    data.type_mask = reader.readUint8();
    // Deserialize message field [orientation]
    data.orientation = Quaternion.$prototype.deserialize(reader);
    // Deserialize message field [body_rate]
    data.body_rate = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [thrust]
    data.thrust = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 61;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/AttitudeTarget';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '456f3af666b22ccd0222ea053a86b548';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Message for SET_ATTITUDE_TARGET
#
# Some complex system requires all feautures that mavlink
# message provide. See issue #402, #418.

std_msgs/Header header

uint8 type_mask
uint8 IGNORE_ROLL_RATE = 1	# body_rate.x
uint8 IGNORE_PITCH_RATE = 2	# body_rate.y
uint8 IGNORE_YAW_RATE = 4	# body_rate.z
uint8 IGNORE_THRUST = 64
uint8 IGNORE_ATTITUDE = 128	# orientation field

geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 body_rate
float32 thrust

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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

// Constants for message
  static const int IGNORE_ROLL_RATE = 1;
  static const int IGNORE_PITCH_RATE = 2;
  static const int IGNORE_YAW_RATE = 4;
  static const int IGNORE_THRUST = 64;
  static const int IGNORE_ATTITUDE = 128;
}
