// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:31 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import '../msgs/Waypoint.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class WaypointPushRequest extends RosMessage<WaypointPushRequest> {
  int start_index;

  List<Waypoint> waypoints;

  static WaypointPushRequest $prototype = WaypointPushRequest();
  WaypointPushRequest({
    int start_index,
    List<Waypoint> waypoints,
  })  : this.start_index = start_index ?? 0,
        this.waypoints = waypoints ?? [];

  @override
  WaypointPushRequest call({
    int start_index,
    List<Waypoint> waypoints,
  }) =>
      WaypointPushRequest(
        start_index: start_index,
        waypoints: waypoints,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointPushRequest
    // Serialize message field [start_index]
    writer.writeUint16(start_index);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    writer.writeUint32(waypoints.length);
    waypoints.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  WaypointPushRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointPushRequest
    final data = WaypointPushRequest();
    // Deserialize message field [start_index]
    data.start_index = reader.readUint16();
    // Deserialize message field [waypoints]
    {
      // Deserialize array length for message field [waypoints]
      final len = reader.readint32();
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
    // Returns string type for a service object
    return 'mavros_msgs/WaypointPushRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'b97216c84680b216429bf6c603ab2e03';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Send waypoints to device
#
#  :start_index: will define a partial waypoint update. Set to 0 for full update
#
# Returns success status and transfered count

uint16 start_index
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

class WaypointPushResponse extends RosMessage<WaypointPushResponse> {
  bool success;

  int wp_transfered;

  static WaypointPushResponse $prototype = WaypointPushResponse();
  WaypointPushResponse({
    bool success,
    int wp_transfered,
  })  : this.success = success ?? false,
        this.wp_transfered = wp_transfered ?? 0;

  @override
  WaypointPushResponse call({
    bool success,
    int wp_transfered,
  }) =>
      WaypointPushResponse(
        success: success,
        wp_transfered: wp_transfered,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointPushResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [wp_transfered]
    writer.writeUint32(wp_transfered);
  }

  @override
  WaypointPushResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointPushResponse
    final data = WaypointPushResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [wp_transfered]
    data.wp_transfered = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointPushResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '90e0074a42480231d34eed864d14365e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
uint32 wp_transfered


''';
  }
}

class WaypointPush
    extends RosServiceMessage<WaypointPushRequest, WaypointPushResponse> {
  static final $prototype = WaypointPush();
  @override
  WaypointPushRequest get request => WaypointPushRequest.$prototype;
  @override
  WaypointPushResponse get response => WaypointPushResponse.$prototype;
  @override
  String get md5sum => '96690cb0f07ea4a54cdd6f188e10228e';
  @override
  String get fullType => 'mavros_msgs/WaypointPush';
}
