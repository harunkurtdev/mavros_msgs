// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:21 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class EstimatorStatus extends RosMessage<EstimatorStatus> {
  Header header;

  bool attitude_status_flag;

  bool velocity_horiz_status_flag;

  bool velocity_vert_status_flag;

  bool pos_horiz_rel_status_flag;

  bool pos_horiz_abs_status_flag;

  bool pos_vert_abs_status_flag;

  bool pos_vert_agl_status_flag;

  bool const_pos_mode_status_flag;

  bool pred_pos_horiz_rel_status_flag;

  bool pred_pos_horiz_abs_status_flag;

  bool gps_glitch_status_flag;

  bool accel_error_status_flag;

  static EstimatorStatus $prototype = EstimatorStatus();
  EstimatorStatus({
    Header header,
    bool attitude_status_flag,
    bool velocity_horiz_status_flag,
    bool velocity_vert_status_flag,
    bool pos_horiz_rel_status_flag,
    bool pos_horiz_abs_status_flag,
    bool pos_vert_abs_status_flag,
    bool pos_vert_agl_status_flag,
    bool const_pos_mode_status_flag,
    bool pred_pos_horiz_rel_status_flag,
    bool pred_pos_horiz_abs_status_flag,
    bool gps_glitch_status_flag,
    bool accel_error_status_flag,
  })  : this.header = header ?? Header(),
        this.attitude_status_flag = attitude_status_flag ?? false,
        this.velocity_horiz_status_flag = velocity_horiz_status_flag ?? false,
        this.velocity_vert_status_flag = velocity_vert_status_flag ?? false,
        this.pos_horiz_rel_status_flag = pos_horiz_rel_status_flag ?? false,
        this.pos_horiz_abs_status_flag = pos_horiz_abs_status_flag ?? false,
        this.pos_vert_abs_status_flag = pos_vert_abs_status_flag ?? false,
        this.pos_vert_agl_status_flag = pos_vert_agl_status_flag ?? false,
        this.const_pos_mode_status_flag = const_pos_mode_status_flag ?? false,
        this.pred_pos_horiz_rel_status_flag =
            pred_pos_horiz_rel_status_flag ?? false,
        this.pred_pos_horiz_abs_status_flag =
            pred_pos_horiz_abs_status_flag ?? false,
        this.gps_glitch_status_flag = gps_glitch_status_flag ?? false,
        this.accel_error_status_flag = accel_error_status_flag ?? false;

  @override
  EstimatorStatus call({
    Header header,
    bool attitude_status_flag,
    bool velocity_horiz_status_flag,
    bool velocity_vert_status_flag,
    bool pos_horiz_rel_status_flag,
    bool pos_horiz_abs_status_flag,
    bool pos_vert_abs_status_flag,
    bool pos_vert_agl_status_flag,
    bool const_pos_mode_status_flag,
    bool pred_pos_horiz_rel_status_flag,
    bool pred_pos_horiz_abs_status_flag,
    bool gps_glitch_status_flag,
    bool accel_error_status_flag,
  }) =>
      EstimatorStatus(
        header: header,
        attitude_status_flag: attitude_status_flag,
        velocity_horiz_status_flag: velocity_horiz_status_flag,
        velocity_vert_status_flag: velocity_vert_status_flag,
        pos_horiz_rel_status_flag: pos_horiz_rel_status_flag,
        pos_horiz_abs_status_flag: pos_horiz_abs_status_flag,
        pos_vert_abs_status_flag: pos_vert_abs_status_flag,
        pos_vert_agl_status_flag: pos_vert_agl_status_flag,
        const_pos_mode_status_flag: const_pos_mode_status_flag,
        pred_pos_horiz_rel_status_flag: pred_pos_horiz_rel_status_flag,
        pred_pos_horiz_abs_status_flag: pred_pos_horiz_abs_status_flag,
        gps_glitch_status_flag: gps_glitch_status_flag,
        accel_error_status_flag: accel_error_status_flag,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type EstimatorStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [attitude_status_flag]
    writer.writeUint8(attitude_status_flag == false ? 0 : 1);
    // Serialize message field [velocity_horiz_status_flag]
    writer.writeUint8(velocity_horiz_status_flag == false ? 0 : 1);
    // Serialize message field [velocity_vert_status_flag]
    writer.writeUint8(velocity_vert_status_flag == false ? 0 : 1);
    // Serialize message field [pos_horiz_rel_status_flag]
    writer.writeUint8(pos_horiz_rel_status_flag == false ? 0 : 1);
    // Serialize message field [pos_horiz_abs_status_flag]
    writer.writeUint8(pos_horiz_abs_status_flag == false ? 0 : 1);
    // Serialize message field [pos_vert_abs_status_flag]
    writer.writeUint8(pos_vert_abs_status_flag == false ? 0 : 1);
    // Serialize message field [pos_vert_agl_status_flag]
    writer.writeUint8(pos_vert_agl_status_flag == false ? 0 : 1);
    // Serialize message field [const_pos_mode_status_flag]
    writer.writeUint8(const_pos_mode_status_flag == false ? 0 : 1);
    // Serialize message field [pred_pos_horiz_rel_status_flag]
    writer.writeUint8(pred_pos_horiz_rel_status_flag == false ? 0 : 1);
    // Serialize message field [pred_pos_horiz_abs_status_flag]
    writer.writeUint8(pred_pos_horiz_abs_status_flag == false ? 0 : 1);
    // Serialize message field [gps_glitch_status_flag]
    writer.writeUint8(gps_glitch_status_flag == false ? 0 : 1);
    // Serialize message field [accel_error_status_flag]
    writer.writeUint8(accel_error_status_flag == false ? 0 : 1);
  }

  @override
  EstimatorStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type EstimatorStatus
    final data = EstimatorStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [attitude_status_flag]
    data.attitude_status_flag = reader.readUint8() != 0;
    // Deserialize message field [velocity_horiz_status_flag]
    data.velocity_horiz_status_flag = reader.readUint8() != 0;
    // Deserialize message field [velocity_vert_status_flag]
    data.velocity_vert_status_flag = reader.readUint8() != 0;
    // Deserialize message field [pos_horiz_rel_status_flag]
    data.pos_horiz_rel_status_flag = reader.readUint8() != 0;
    // Deserialize message field [pos_horiz_abs_status_flag]
    data.pos_horiz_abs_status_flag = reader.readUint8() != 0;
    // Deserialize message field [pos_vert_abs_status_flag]
    data.pos_vert_abs_status_flag = reader.readUint8() != 0;
    // Deserialize message field [pos_vert_agl_status_flag]
    data.pos_vert_agl_status_flag = reader.readUint8() != 0;
    // Deserialize message field [const_pos_mode_status_flag]
    data.const_pos_mode_status_flag = reader.readUint8() != 0;
    // Deserialize message field [pred_pos_horiz_rel_status_flag]
    data.pred_pos_horiz_rel_status_flag = reader.readUint8() != 0;
    // Deserialize message field [pred_pos_horiz_abs_status_flag]
    data.pred_pos_horiz_abs_status_flag = reader.readUint8() != 0;
    // Deserialize message field [gps_glitch_status_flag]
    data.gps_glitch_status_flag = reader.readUint8() != 0;
    // Deserialize message field [accel_error_status_flag]
    data.accel_error_status_flag = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/EstimatorStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '39dbcc4be3f04b68422f784827c47dd5';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Current autopilot estimator state
#
# https://mavlink.io/en/messages/common.html#ESTIMATOR_STATUS_FLAGS

std_msgs/Header header
bool attitude_status_flag

bool velocity_horiz_status_flag
bool velocity_vert_status_flag

bool pos_horiz_rel_status_flag
bool pos_horiz_abs_status_flag

bool pos_vert_abs_status_flag
bool pos_vert_agl_status_flag

bool const_pos_mode_status_flag

bool pred_pos_horiz_rel_status_flag
bool pred_pos_horiz_abs_status_flag

bool gps_glitch_status_flag
bool accel_error_status_flag
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
