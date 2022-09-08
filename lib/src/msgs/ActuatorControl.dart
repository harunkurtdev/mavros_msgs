// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:19 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class ActuatorControl extends RosMessage<ActuatorControl> {
  Header header;

  int group_mix;

  List<double> controls;

  static ActuatorControl $prototype = ActuatorControl();
  ActuatorControl({
    Header header,
    int group_mix,
    List<double> controls,
  })  : this.header = header ?? Header(),
        this.group_mix = group_mix ?? 0,
        this.controls = controls ?? List.generate(8, (_) => 0);

  @override
  ActuatorControl call({
    Header header,
    int group_mix,
    List<double> controls,
  }) =>
      ActuatorControl(
        header: header,
        group_mix: group_mix,
        controls: controls,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ActuatorControl
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [group_mix]
    writer.writeUint8(group_mix);
    // Check that the constant length array field [controls] has the right length
    if (controls.length != 8) {
      throw Exception(
          'Unable to serialize array field controls - length must be 8');
    }
    // Serialize message field [controls]
    writer.writeArray<double>(controls, (val) => writer.writeFloat32(val),
        specArrayLen: 8);
  }

  @override
  ActuatorControl deserialize(ByteDataReader reader) {
    //deserializes a message object of type ActuatorControl
    final data = ActuatorControl();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [group_mix]
    data.group_mix = reader.readUint8();
    // Deserialize message field [controls]
    data.controls =
        reader.readArray<double>(() => reader.readFloat32(), arrayLen: 8);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 33;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ActuatorControl';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '9eea0a80c88944fe2fb67f3b3768854b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# raw servo values for direct actuator controls
#
# about groups, mixing and channels:
# https://pixhawk.org/dev/mixing

# constant for mixer group
uint8 PX4_MIX_FLIGHT_CONTROL = 0
uint8 PX4_MIX_FLIGHT_CONTROL_VTOL_ALT = 1
uint8 PX4_MIX_PAYLOAD = 2
uint8 PX4_MIX_MANUAL_PASSTHROUGH = 3
#uint8 PX4_MIX_FC_MC_VIRT = 4
#uint8 PX4_MIX_FC_FW_VIRT = 5

std_msgs/Header header
uint8 group_mix
float32[8] controls

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
  static const int PX4_MIX_FLIGHT_CONTROL = 0;
  static const int PX4_MIX_FLIGHT_CONTROL_VTOL_ALT = 1;
  static const int PX4_MIX_PAYLOAD = 2;
  static const int PX4_MIX_MANUAL_PASSTHROUGH = 3;
}
