// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'PositionTarget.dart';

//-----------------------------------------------------------

class Trajectory extends RosMessage<Trajectory> {
  Header header;

  int type;

  PositionTarget point_1;

  PositionTarget point_2;

  PositionTarget point_3;

  PositionTarget point_4;

  PositionTarget point_5;

  List<int> point_valid;

  List<int> command;

  List<double> time_horizon;

  static Trajectory $prototype = Trajectory();
  Trajectory({ 
    Header header,
    int type,
    PositionTarget point_1,
    PositionTarget point_2,
    PositionTarget point_3,
    PositionTarget point_4,
    PositionTarget point_5,
    List<int> point_valid,
    List<int> command,
    List<double> time_horizon,
  }):
  this.header = header ?? Header(),
  this.type = type ?? 0,
  this.point_1 = point_1 ?? PositionTarget(),
  this.point_2 = point_2 ?? PositionTarget(),
  this.point_3 = point_3 ?? PositionTarget(),
  this.point_4 = point_4 ?? PositionTarget(),
  this.point_5 = point_5 ?? PositionTarget(),
  this.point_valid = point_valid ?? List.generate(5, (_) => 0),
  this.command = command ?? List.generate(5, (_) => 0),
  this.time_horizon = time_horizon ?? List.generate(5, (_) => 0);

  @override
  Trajectory call({ 
    Header header,
    int type,
    PositionTarget point_1,
    PositionTarget point_2,
    PositionTarget point_3,
    PositionTarget point_4,
    PositionTarget point_5,
    List<int> point_valid,
    List<int> command,
    List<double> time_horizon,
  }) => Trajectory(
  header: header,
  type: type,
  point_1: point_1,
  point_2: point_2,
  point_3: point_3,
  point_4: point_4,
  point_5: point_5,
  point_valid: point_valid,
  command: command,
  time_horizon: time_horizon,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Trajectory
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [type]
    writer.writeUint8(type);
    // Serialize message field [point_1]
    point_1.serialize(writer);
    // Serialize message field [point_2]
    point_2.serialize(writer);
    // Serialize message field [point_3]
    point_3.serialize(writer);
    // Serialize message field [point_4]
    point_4.serialize(writer);
    // Serialize message field [point_5]
    point_5.serialize(writer);
    // Check that the constant length array field [point_valid] has the right length
    if (point_valid.length != 5) {
      throw Exception('Unable to serialize array field point_valid - length must be 5');
    }
    // Serialize message field [point_valid]
    writer.writeArray<int>(point_valid, (val) => writer.writeUint8(val), specArrayLen: 5);
    // Check that the constant length array field [command] has the right length
    if (command.length != 5) {
      throw Exception('Unable to serialize array field command - length must be 5');
    }
    // Serialize message field [command]
    writer.writeArray<int>(command, (val) => writer.writeUint16(val), specArrayLen: 5);
    // Check that the constant length array field [time_horizon] has the right length
    if (time_horizon.length != 5) {
      throw Exception('Unable to serialize array field time_horizon - length must be 5');
    }
    // Serialize message field [time_horizon]
    writer.writeArray<double>(time_horizon, (val) => writer.writeFloat32(val), specArrayLen: 5);
  }

  @override
  Trajectory deserialize(ByteDataReader reader) {
    //deserializes a message object of type Trajectory
    final data = Trajectory();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [type]
    data.type = reader.readUint8();
    // Deserialize message field [point_1]
    data.point_1 = PositionTarget.$prototype.deserialize(reader);
    // Deserialize message field [point_2]
    data.point_2 = PositionTarget.$prototype.deserialize(reader);
    // Deserialize message field [point_3]
    data.point_3 = PositionTarget.$prototype.deserialize(reader);
    // Deserialize message field [point_4]
    data.point_4 = PositionTarget.$prototype.deserialize(reader);
    // Deserialize message field [point_5]
    data.point_5 = PositionTarget.$prototype.deserialize(reader);
    // Deserialize message field [point_valid]
    data.point_valid = reader.readArray<int>(() => reader.readUint8(), arrayLen: 5);
    // Deserialize message field [command]
    data.command = reader.readArray<int>(() => reader.readUint16(), arrayLen: 5);
    // Deserialize message field [time_horizon]
    data.time_horizon = reader.readArray<double>(() => reader.readFloat32(), arrayLen: 5);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += point_1.getMessageSize();
    length += point_2.getMessageSize();
    length += point_3.getMessageSize();
    length += point_4.getMessageSize();
    length += point_5.getMessageSize();
    return length + 36;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Trajectory';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '477b47a103394ad6be940e5705f338e8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MAVLink message: TRAJECTORY
# https://mavlink.io/en/messages/common.html#TRAJECTORY

std_msgs/Header header

uint8 type # See enum MAV_TRAJECTORY_REPRESENTATION.
uint8 MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS = 0
uint8 MAV_TRAJECTORY_REPRESENTATION_BEZIER = 1

mavros_msgs/PositionTarget point_1
mavros_msgs/PositionTarget point_2
mavros_msgs/PositionTarget point_3
mavros_msgs/PositionTarget point_4
mavros_msgs/PositionTarget point_5

uint8[5] point_valid # States if respective point is valid.
uint16[5] command # MAV_CMD associated with each point. UINT16_MAX if unused.

float32[5] time_horizon # if type MAV_TRAJECTORY_REPRESENTATION_BEZIER, it represents the time horizon for each point, otherwise set to NaN

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
MSG: mavros_msgs/PositionTarget
# Message for SET_POSITION_TARGET_LOCAL_NED
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
  static const int MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS = 0;
  static const int MAV_TRAJECTORY_REPRESENTATION_BEZIER = 1;

}

