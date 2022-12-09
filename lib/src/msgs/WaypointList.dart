// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'Waypoint.dart';

//-----------------------------------------------------------

class WaypointList extends RosMessage<WaypointList> {
  int current_seq;

  List<Waypoint> waypoints;

  static WaypointList $prototype = WaypointList();
  WaypointList({
    int current_seq,
    List<Waypoint> waypoints,
  })  : this.current_seq = current_seq ?? 0,
        this.waypoints = waypoints ?? [];

  @override
  WaypointList call({
    int current_seq,
    List<Waypoint> waypoints,
  }) =>
      WaypointList(
        current_seq: current_seq,
        waypoints: waypoints,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointList
    // Serialize message field [current_seq]
    writer.writeUint16(current_seq);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    writer.writeUint32(waypoints.length);
    waypoints.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  WaypointList deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointList
    final data = WaypointList();
    // Deserialize message field [current_seq]
    data.current_seq = reader.readUint16();
    // Deserialize message field [waypoints]
    {
      // Deserialize array length for message field [waypoints]
      final len = reader.readInt32();
      data.waypoints =
          List.generate(len, (_) => Waypoint.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += 45 * waypoints.length;
    return length + 6;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/WaypointList';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '0605a2df153acd9a4a4823385ed81b57';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# WaypointList.msg
#
#  :current_seq:   seq nr of currently active waypoint
#                  waypoints[current_seq].is_current == True
#
#  :waypoints:     list of waypoints

uint16 current_seq
mavros_msgs/Waypoint[] waypoints

================================================================================
MSG: mavros_msgs/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4
uint8 FRAME_GLOBAL_int = 5
uint8 FRAME_GLOBAL_RELATIVE_ALT_int = 6
uint8 FRAME_LOCAL_OFFSET_NED = 7
uint8 FRAME_BODY_NED = 8
uint8 FRAME_BODY_OFFSET_NED = 9
uint8 FRAME_GLOBAL_TERRAIN_ALT = 10
uint8 FRAME_GLOBAL_TERRAIN_ALT_int = 11
uint8 FRAME_BODY_FRD = 12
uint8 FRAME_RESERVED_13 = 13
uint8 FRAME_RESERVED_14 = 14
uint8 FRAME_RESERVED_15 = 15
uint8 FRAME_RESERVED_16 = 16
uint8 FRAME_RESERVED_17 = 17
uint8 FRAME_RESERVED_18 = 18
uint8 FRAME_RESERVED_19 = 19
uint8 FRAME_LOCAL_FRD = 20
uint8 FRAME_LOCAL_FLU = 21

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt

''';
  }
}
