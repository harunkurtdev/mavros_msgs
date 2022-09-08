// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class PositionTarget extends RosMessage<PositionTarget> {
  Header header;

  int coordinate_frame;

  int type_mask;

  Point position;

  Vector3 velocity;

  Vector3 acceleration_or_force;

  double yaw;

  double yaw_rate;

  static PositionTarget $prototype = PositionTarget();
  PositionTarget({
    Header header,
    int coordinate_frame,
    int type_mask,
    Point position,
    Vector3 velocity,
    Vector3 acceleration_or_force,
    double yaw,
    double yaw_rate,
  })  : this.header = header ?? Header(),
        this.coordinate_frame = coordinate_frame ?? 0,
        this.type_mask = type_mask ?? 0,
        this.position = position ?? Point(),
        this.velocity = velocity ?? Vector3(),
        this.acceleration_or_force = acceleration_or_force ?? Vector3(),
        this.yaw = yaw ?? 0.0,
        this.yaw_rate = yaw_rate ?? 0.0;

  @override
  PositionTarget call({
    Header header,
    int coordinate_frame,
    int type_mask,
    Point position,
    Vector3 velocity,
    Vector3 acceleration_or_force,
    double yaw,
    double yaw_rate,
  }) =>
      PositionTarget(
        header: header,
        coordinate_frame: coordinate_frame,
        type_mask: type_mask,
        position: position,
        velocity: velocity,
        acceleration_or_force: acceleration_or_force,
        yaw: yaw,
        yaw_rate: yaw_rate,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PositionTarget
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [coordinate_frame]
    writer.writeUint8(coordinate_frame);
    // Serialize message field [type_mask]
    writer.writeUint16(type_mask);
    // Serialize message field [position]
    position.serialize(writer);
    // Serialize message field [velocity]
    velocity.serialize(writer);
    // Serialize message field [acceleration_or_force]
    acceleration_or_force.serialize(writer);
    // Serialize message field [yaw]
    writer.writeFloat32(yaw);
    // Serialize message field [yaw_rate]
    writer.writeFloat32(yaw_rate);
  }

  @override
  PositionTarget deserialize(ByteDataReader reader) {
    //deserializes a message object of type PositionTarget
    final data = PositionTarget();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [coordinate_frame]
    data.coordinate_frame = reader.readUint8();
    // Deserialize message field [type_mask]
    data.type_mask = reader.readUint16();
    // Deserialize message field [position]
    data.position = Point.$prototype.deserialize(reader);
    // Deserialize message field [velocity]
    data.velocity = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [acceleration_or_force]
    data.acceleration_or_force = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [yaw]
    data.yaw = reader.readFloat32();
    // Deserialize message field [yaw_rate]
    data.yaw_rate = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 83;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/PositionTarget';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'dedb0081aaf8cb20209737746bb49117';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Message for SET_POSITION_TARGET_LOCAL_NED
#
# Some complex system requires all feautures that mavlink
# message provide. See issue #402.

std_msgs/Header header

uint8 coordinate_frame
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_LOCAL_OFFSET_NED = 7
uint8 FRAME_BODY_NED = 8
uint8 FRAME_BODY_OFFSET_NED = 9

uint16 type_mask
uint16 IGNORE_PX = 1	# Position ignore flags
uint16 IGNORE_PY = 2
uint16 IGNORE_PZ = 4
uint16 IGNORE_VX = 8	# Velocity vector ignore flags
uint16 IGNORE_VY = 16
uint16 IGNORE_VZ = 32
uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags
uint16 IGNORE_AFY = 128
uint16 IGNORE_AFZ = 256
uint16 FORCE = 512	# Force in af vector flag
uint16 IGNORE_YAW = 1024
uint16 IGNORE_YAW_RATE = 2048

geometry_msgs/Point position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration_or_force
float32 yaw
float32 yaw_rate

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
  static const int FRAME_LOCAL_NED = 1;
  static const int FRAME_LOCAL_OFFSET_NED = 7;
  static const int FRAME_BODY_NED = 8;
  static const int FRAME_BODY_OFFSET_NED = 9;
  static const int IGNORE_PX = 1;
  static const int IGNORE_PY = 2;
  static const int IGNORE_PZ = 4;
  static const int IGNORE_VX = 8;
  static const int IGNORE_VY = 16;
  static const int IGNORE_VZ = 32;
  static const int IGNORE_AFX = 64;
  static const int IGNORE_AFY = 128;
  static const int IGNORE_AFZ = 256;
  static const int FORCE = 512;
  static const int IGNORE_YAW = 1024;
  static const int IGNORE_YAW_RATE = 2048;
}
