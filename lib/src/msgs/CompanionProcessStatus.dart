// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class CompanionProcessStatus extends RosMessage<CompanionProcessStatus> {
  Header header;

  int state;

  int component;

  static CompanionProcessStatus $prototype = CompanionProcessStatus();
  CompanionProcessStatus({
    Header? header,
    int? state,
    int? component,
  })  : this.header = header ?? Header(),
        this.state = state ?? 0,
        this.component = component ?? 0;

  @override
  CompanionProcessStatus call({
    Header? header,
    int? state,
    int? component,
  }) =>
      CompanionProcessStatus(
        header: header,
        state: state,
        component: component,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CompanionProcessStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [state]
    writer.writeUint8(state);
    // Serialize message field [component]
    writer.writeUint8(component);
  }

  @override
  CompanionProcessStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type CompanionProcessStatus
    final data = CompanionProcessStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [state]
    data.state = reader.readUint8();
    // Deserialize message field [component]
    data.component = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 2;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/CompanionProcessStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'b6dd787fcd873e87778987b1845f4cb5';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Mavros message: COMPANIONPROCESSSTATUS

std_msgs/Header header

uint8 state			# See enum COMPANION_PROCESS_STATE
uint8 component		# See enum MAV_COMPONENT

uint8 MAV_STATE_UNINIT = 0
uint8 MAV_STATE_BOOT = 1
uint8 MAV_STATE_CALIBRATING = 2
uint8 MAV_STATE_STANDBY = 3
uint8 MAV_STATE_ACTIVE = 4
uint8 MAV_STATE_CRITICAL = 5
uint8 MAV_STATE_EMERGENCY = 6
uint8 MAV_STATE_POWEROFF = 7
uint8 MAV_STATE_FLIGHT_TERMINATION = 8

uint8 MAV_COMP_ID_OBSTACLE_AVOIDANCE = 196
uint8 MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY = 197

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
  static const int MAV_STATE_UNINIT = 0;
  static const int MAV_STATE_BOOT = 1;
  static const int MAV_STATE_CALIBRATING = 2;
  static const int MAV_STATE_STANDBY = 3;
  static const int MAV_STATE_ACTIVE = 4;
  static const int MAV_STATE_CRITICAL = 5;
  static const int MAV_STATE_EMERGENCY = 6;
  static const int MAV_STATE_POWEROFF = 7;
  static const int MAV_STATE_FLIGHT_TERMINATION = 8;
  static const int MAV_COMP_ID_OBSTACLE_AVOIDANCE = 196;
  static const int MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY = 197;
}
