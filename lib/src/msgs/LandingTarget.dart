// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class LandingTarget extends RosMessage<LandingTarget> {
  Header header;

  int target_num;

  int frame;

  List<double> angle;

  double distance;

  List<double> size;

  Pose pose;

  int type;

  static LandingTarget $prototype = LandingTarget();
  LandingTarget({ 
    Header? header,
    int? target_num,
    int? frame,
    List<double>? angle,
    double? distance,
    List<double>? size,
    Pose? pose,
    int? type,
  }):
  this.header = header ?? Header(),
  this.target_num = target_num ?? 0,
  this.frame = frame ?? 0,
  this.angle = angle ?? List.generate(2, (_) => 0),
  this.distance = distance ?? 0.0,
  this.size = size ?? List.generate(2, (_) => 0),
  this.pose = pose ?? Pose(),
  this.type = type ?? 0;

  @override
  LandingTarget call({ 
    Header? header,
    int? target_num,
    int? frame,
    List<double>? angle,
    double? distance,
    List<double>? size,
    Pose? pose,
    int? type,
  }) => LandingTarget(
  header: header,
  target_num: target_num,
  frame: frame,
  angle: angle,
  distance: distance,
  size: size,
  pose: pose,
  type: type,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LandingTarget
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [target_num]
    writer.writeUint8(target_num);
    // Serialize message field [frame]
    writer.writeUint8(frame);
    // Check that the constant length array field [angle] has the right length
    if (angle.length != 2) {
      throw Exception('Unable to serialize array field angle - length must be 2');
    }
    // Serialize message field [angle]
    writer.writeArray<double>(angle, (val) => writer.writeFloat32(val), specArrayLen: 2);
    // Serialize message field [distance]
    writer.writeFloat32(distance);
    // Check that the constant length array field [size] has the right length
    if (size.length != 2) {
      throw Exception('Unable to serialize array field size - length must be 2');
    }
    // Serialize message field [size]
    writer.writeArray<double>(size, (val) => writer.writeFloat32(val), specArrayLen: 2);
    // Serialize message field [pose]
    pose.serialize(writer);
    // Serialize message field [type]
    writer.writeUint8(type);
  }

  @override
  LandingTarget deserialize(ByteDataReader reader) {
    //deserializes a message object of type LandingTarget
    final data = LandingTarget();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [target_num]
    data.target_num = reader.readUint8();
    // Deserialize message field [frame]
    data.frame = reader.readUint8();
    // Deserialize message field [angle]
    data.angle = reader.readArray<double>(() => reader.readFloat32(), arrayLen: 2);
    // Deserialize message field [distance]
    data.distance = reader.readFloat32();
    // Deserialize message field [size]
    data.size = reader.readArray<double>(() => reader.readFloat32(), arrayLen: 2);
    // Deserialize message field [pose]
    data.pose = Pose.$prototype.deserialize(reader);
    // Deserialize message field [type]
    data.type = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 79;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/LandingTarget';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '76548ee08437914830bb7319d04d5490';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MAVLink message: LANDING_TARGET
# https://mavlink.io/en/messages/common.html

std_msgs/Header header

## MAV_FRAME enum
uint8 GLOBAL = 0                   # Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)
uint8 LOCAL_NED = 2                # Local coordinate frame, Z-up (x: north, y: east, z: down).
uint8 MISSION = 3                  # NOT a coordinate frame, indicates a mission command.
uint8 GLOBAL_RELATIVE_ALT = 4      # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 LOCAL_ENU = 5                # Local coordinate frame, Z-down (x: east, y: north, z: up)
uint8 GLOBAL_INT = 6               # Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)
uint8 GLOBAL_RELATIVE_ALT_INT = 7  # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 LOCAL_OFFSET_NED = 8         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
uint8 BODY_NED = 9                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
uint8 BODY_OFFSET_NED = 10         # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
uint8 GLOBAL_TERRAIN_ALT = 11      # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 GLOBAL_TERRAIN_ALT_INT = 12  # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.

## LANDING_TARGET_TYPE enum
uint8 LIGHT_BEACON = 0             # Landing target signaled by light beacon (ex: IR-LOCK)
uint8 RADIO_BEACON = 1             # Landing target signaled by radio beacon (ex: ILS, NDB)
uint8 VISION_FIDUCIAL = 2          # Landing target represented by a fiducial marker (ex: ARTag)
uint8 VISION_OTHER = 3             # Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)

uint8 target_num
uint8 frame
float32[2] angle
float32 distance
float32[2] size
geometry_msgs/Pose pose
uint8 type

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

''';
  }

// Constants for message
  static const int GLOBAL = 0;
  static const int LOCAL_NED = 2;
  static const int MISSION = 3;
  static const int GLOBAL_RELATIVE_ALT = 4;
  static const int LOCAL_ENU = 5;
  static const int GLOBAL_INT = 6;
  static const int GLOBAL_RELATIVE_ALT_INT = 7;
  static const int LOCAL_OFFSET_NED = 8;
  static const int BODY_NED = 9;
  static const int BODY_OFFSET_NED = 10;
  static const int GLOBAL_TERRAIN_ALT = 11;
  static const int GLOBAL_TERRAIN_ALT_INT = 12;
  static const int LIGHT_BEACON = 0;
  static const int RADIO_BEACON = 1;
  static const int VISION_FIDUCIAL = 2;
  static const int VISION_OTHER = 3;

}

