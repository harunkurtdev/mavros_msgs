// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:21 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class ExtendedState extends RosMessage<ExtendedState> {
  Header header;

  int vtol_state;

  int landed_state;

  static ExtendedState $prototype = ExtendedState();
  ExtendedState({
    Header header,
    int vtol_state,
    int landed_state,
  })  : this.header = header ?? Header(),
        this.vtol_state = vtol_state ?? 0,
        this.landed_state = landed_state ?? 0;

  @override
  ExtendedState call({
    Header header,
    int vtol_state,
    int landed_state,
  }) =>
      ExtendedState(
        header: header,
        vtol_state: vtol_state,
        landed_state: landed_state,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ExtendedState
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [vtol_state]
    writer.writeUint8(vtol_state);
    // Serialize message field [landed_state]
    writer.writeUint8(landed_state);
  }

  @override
  ExtendedState deserialize(ByteDataReader reader) {
    //deserializes a message object of type ExtendedState
    final data = ExtendedState();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [vtol_state]
    data.vtol_state = reader.readUint8();
    // Deserialize message field [landed_state]
    data.landed_state = reader.readUint8();
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
    return 'mavros_msgs/ExtendedState';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ae780b1800fe17b917369d21b90058bd';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Extended autopilot state
#
# https://mavlink.io/en/messages/common.html#EXTENDED_SYS_STATE

uint8 VTOL_STATE_UNDEFINED = 0
uint8 VTOL_STATE_TRANSITION_TO_FW = 1
uint8 VTOL_STATE_TRANSITION_TO_MC = 2
uint8 VTOL_STATE_MC = 3
uint8 VTOL_STATE_FW = 4

uint8 LANDED_STATE_UNDEFINED = 0
uint8 LANDED_STATE_ON_GROUND = 1
uint8 LANDED_STATE_IN_AIR = 2
uint8 LANDED_STATE_TAKEOFF = 3
uint8 LANDED_STATE_LANDING = 4

std_msgs/Header header
uint8 vtol_state
uint8 landed_state

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
  static const int VTOL_STATE_UNDEFINED = 0;
  static const int VTOL_STATE_TRANSITION_TO_FW = 1;
  static const int VTOL_STATE_TRANSITION_TO_MC = 2;
  static const int VTOL_STATE_MC = 3;
  static const int VTOL_STATE_FW = 4;
  static const int LANDED_STATE_UNDEFINED = 0;
  static const int LANDED_STATE_ON_GROUND = 1;
  static const int LANDED_STATE_IN_AIR = 2;
  static const int LANDED_STATE_TAKEOFF = 3;
  static const int LANDED_STATE_LANDING = 4;
}
