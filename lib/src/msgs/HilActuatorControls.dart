// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class HilActuatorControls extends RosMessage<HilActuatorControls> {
  Header header;

  List<double> controls;

  int mode;

  int flags;

  static HilActuatorControls $prototype = HilActuatorControls();
  HilActuatorControls({ 
    Header? header,
    List<double> controls,
    int? mode,
    int? flags,
  }):
  this.header = header ?? Header(),
  this.controls = controls ?? List.generate(16, (_) => 0),
  this.mode = mode ?? 0,
  this.flags = flags ?? 0;

  @override
  HilActuatorControls call({ 
    Header? header,
    List<double> controls,
    int? mode,
    int? flags,
  }) => HilActuatorControls(
  header: header,
  controls: controls,
  mode: mode,
  flags: flags,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type HilActuatorControls
    // Serialize message field [header]
    header.serialize(writer);
    // Check that the constant length array field [controls] has the right length
    if (controls.length != 16) {
      throw Exception('Unable to serialize array field controls - length must be 16');
    }
    // Serialize message field [controls]
    writer.writeArray<double>(controls, (val) => writer.writeFloat32(val), specArrayLen: 16);
    // Serialize message field [mode]
    writer.writeUint8(mode);
    // Serialize message field [flags]
    writer.writeUint64(flags);
  }

  @override
  HilActuatorControls deserialize(ByteDataReader reader) {
    //deserializes a message object of type HilActuatorControls
    final data = HilActuatorControls();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [controls]
    data.controls = reader.readArray<double>(() => reader.readFloat32(), arrayLen: 16);
    // Deserialize message field [mode]
    data.mode = reader.readUint8();
    // Deserialize message field [flags]
    data.flags = reader.readUint64();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 73;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/HilActuatorControls';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '18482e8ef0330ac2fc9a0421be1d11c3';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# HilActuatorControls.msg
#
# ROS representation of MAVLink HIL_ACTUATOR_CONTROLS
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_ACTUATOR_CONTROLS

std_msgs/Header header
float32[16] controls
uint8 mode
uint64 flags

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

}

