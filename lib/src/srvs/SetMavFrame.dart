// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMavFrameRequest extends RosMessage<SetMavFrameRequest> {
  int mav_frame;

  static SetMavFrameRequest $prototype = SetMavFrameRequest();
  SetMavFrameRequest({ 
    int? mav_frame,
  }):
  this.mav_frame = mav_frame ?? 0;

  @override
  SetMavFrameRequest call({ 
    int? mav_frame,
  }) => SetMavFrameRequest(
  mav_frame: mav_frame,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SetMavFrameRequest
    // Serialize message field [mav_frame]
    writer.writeUint8(mav_frame);
  }

  @override
  SetMavFrameRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type SetMavFrameRequest
    final data = SetMavFrameRequest();
    // Deserialize message field [mav_frame]
    data.mav_frame = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/SetMavFrameRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '10d9e03dcd8d648e58b34bad2a28091f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Set MAV_FRAME for setpoints

# [[[cog:
# from pymavlink.dialects.v20 import common
#
# def decl_enum(ename, pfx='', bsz=8):
#     enum = sorted(common.enums[ename].items())
#     enum.pop() # remove ENUM_END
#
#     cog.outl("# " + ename)
#     for k, e in enum:
#         sn = e.name[len(ename) + 1:]
#         l = "uint{bsz} {pfx}{sn} = {k}".format(**locals())
#         if e.description:
#             l += ' ' * (40 - len(l)) + ' # ' + e.description
#         cog.outl(l)
#
# decl_enum('MAV_FRAME', 'FRAME_')
# ]]]
# MAV_FRAME
uint8 FRAME_GLOBAL = 0                   # Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).
uint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-down (x: North, y: East, z: Down).
uint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.
uint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-up (x: East, y: North, z: Up).
uint8 FRAME_GLOBAL_INT = 5               # Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).
uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
uint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
uint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
uint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 FRAME_BODY_FRD = 12                # Body fixed frame of reference, Z-down (x: Forward, y: Right, z: Down).
uint8 FRAME_RESERVED_13 = 13             # MAV_FRAME_BODY_FLU - Body fixed frame of reference, Z-up (x: Forward, y: Left, z: Up).
uint8 FRAME_RESERVED_14 = 14             # MAV_FRAME_MOCAP_NED - Odometry local coordinate frame of data given by a motion capture system, Z-down (x: North, y: East, z: Down).
uint8 FRAME_RESERVED_15 = 15             # MAV_FRAME_MOCAP_ENU - Odometry local coordinate frame of data given by a motion capture system, Z-up (x: East, y: North, z: Up).
uint8 FRAME_RESERVED_16 = 16             # MAV_FRAME_VISION_NED - Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: North, y: East, z: Down).
uint8 FRAME_RESERVED_17 = 17             # MAV_FRAME_VISION_ENU - Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: East, y: North, z: Up).
uint8 FRAME_RESERVED_18 = 18             # MAV_FRAME_ESTIM_NED - Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: North, y: East, z: Down).
uint8 FRAME_RESERVED_19 = 19             # MAV_FRAME_ESTIM_ENU - Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: East, y: North, z: Up).
uint8 FRAME_LOCAL_FRD = 20               # Forward, Right, Down coordinate frame. This is a local frame with Z-down and arbitrary F/R alignment (i.e. not aligned with NED/earth frame).
uint8 FRAME_LOCAL_FLU = 21               # Forward, Left, Up coordinate frame. This is a local frame with Z-up and arbitrary F/L alignment (i.e. not aligned with ENU/earth frame).
# [[[end]]] (checksum: 013a057712ce80e0a4bffa7c5e2c05a9)

uint8 mav_frame

''';
  }

// Constants for message
  static const int FRAME_GLOBAL = 0;
  static const int FRAME_LOCAL_NED = 1;
  static const int FRAME_MISSION = 2;
  static const int FRAME_GLOBAL_RELATIVE_ALT = 3;
  static const int FRAME_LOCAL_ENU = 4;
  static const int FRAME_GLOBAL_INT = 5;
  static const int FRAME_GLOBAL_RELATIVE_ALT_INT = 6;
  static const int FRAME_LOCAL_OFFSET_NED = 7;
  static const int FRAME_BODY_NED = 8;
  static const int FRAME_BODY_OFFSET_NED = 9;
  static const int FRAME_GLOBAL_TERRAIN_ALT = 10;
  static const int FRAME_GLOBAL_TERRAIN_ALT_INT = 11;
  static const int FRAME_BODY_FRD = 12;
  static const int FRAME_RESERVED_13 = 13;
  static const int FRAME_RESERVED_14 = 14;
  static const int FRAME_RESERVED_15 = 15;
  static const int FRAME_RESERVED_16 = 16;
  static const int FRAME_RESERVED_17 = 17;
  static const int FRAME_RESERVED_18 = 18;
  static const int FRAME_RESERVED_19 = 19;
  static const int FRAME_LOCAL_FRD = 20;
  static const int FRAME_LOCAL_FLU = 21;

}

class SetMavFrameResponse extends RosMessage<SetMavFrameResponse> {
  bool success;

  static SetMavFrameResponse $prototype = SetMavFrameResponse();
  SetMavFrameResponse({ 
    bool? success,
  }):
  this.success = success ?? false;

  @override
  SetMavFrameResponse call({ 
    bool? success,
  }) => SetMavFrameResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SetMavFrameResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  SetMavFrameResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type SetMavFrameResponse
    final data = SetMavFrameResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/SetMavFrameResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success


''';
  }

}

class SetMavFrame extends RosServiceMessage<SetMavFrameRequest, SetMavFrameResponse> {
  static final $prototype = SetMavFrame();
  @override
  SetMavFrameRequest get request => SetMavFrameRequest.$prototype;
  @override
  SetMavFrameResponse get response => SetMavFrameResponse.$prototype;
  @override
  String get md5sum => 'bda5ad49b9b82fbf5d1eeb3c9cdc0bfa';
  @override
  String get fullType => 'mavros_msgs/SetMavFrame';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
