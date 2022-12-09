// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:25 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class RTKBaseline extends RosMessage<RTKBaseline> {
  Header header;

  int time_last_baseline_ms;

  int rtk_receiver_id;

  int wn;

  int tow;

  int rtk_health;

  int rtk_rate;

  int nsats;

  int baseline_coords_type;

  int baseline_a_mm;

  int baseline_b_mm;

  int baseline_c_mm;

  int accuracy;

  int iar_num_hypotheses;

  static RTKBaseline $prototype = RTKBaseline();
  RTKBaseline({
    Header header,
    int time_last_baseline_ms,
    int rtk_receiver_id,
    int wn,
    int tow,
    int rtk_health,
    int rtk_rate,
    int nsats,
    int baseline_coords_type,
    int baseline_a_mm,
    int baseline_b_mm,
    int baseline_c_mm,
    int accuracy,
    int iar_num_hypotheses,
  })  : this.header = header ?? Header(),
        this.time_last_baseline_ms = time_last_baseline_ms ?? 0,
        this.rtk_receiver_id = rtk_receiver_id ?? 0,
        this.wn = wn ?? 0,
        this.tow = tow ?? 0,
        this.rtk_health = rtk_health ?? 0,
        this.rtk_rate = rtk_rate ?? 0,
        this.nsats = nsats ?? 0,
        this.baseline_coords_type = baseline_coords_type ?? 0,
        this.baseline_a_mm = baseline_a_mm ?? 0,
        this.baseline_b_mm = baseline_b_mm ?? 0,
        this.baseline_c_mm = baseline_c_mm ?? 0,
        this.accuracy = accuracy ?? 0,
        this.iar_num_hypotheses = iar_num_hypotheses ?? 0;

  @override
  RTKBaseline call({
    Header header,
    int time_last_baseline_ms,
    int rtk_receiver_id,
    int wn,
    int tow,
    int rtk_health,
    int rtk_rate,
    int nsats,
    int baseline_coords_type,
    int baseline_a_mm,
    int baseline_b_mm,
    int baseline_c_mm,
    int accuracy,
    int iar_num_hypotheses,
  }) =>
      RTKBaseline(
        header: header,
        time_last_baseline_ms: time_last_baseline_ms,
        rtk_receiver_id: rtk_receiver_id,
        wn: wn,
        tow: tow,
        rtk_health: rtk_health,
        rtk_rate: rtk_rate,
        nsats: nsats,
        baseline_coords_type: baseline_coords_type,
        baseline_a_mm: baseline_a_mm,
        baseline_b_mm: baseline_b_mm,
        baseline_c_mm: baseline_c_mm,
        accuracy: accuracy,
        iar_num_hypotheses: iar_num_hypotheses,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RTKBaseline
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [time_last_baseline_ms]
    writer.writeUint32(time_last_baseline_ms);
    // Serialize message field [rtk_receiver_id]
    writer.writeUint8(rtk_receiver_id);
    // Serialize message field [wn]
    writer.writeUint16(wn);
    // Serialize message field [tow]
    writer.writeUint32(tow);
    // Serialize message field [rtk_health]
    writer.writeUint8(rtk_health);
    // Serialize message field [rtk_rate]
    writer.writeUint8(rtk_rate);
    // Serialize message field [nsats]
    writer.writeUint8(nsats);
    // Serialize message field [baseline_coords_type]
    writer.writeUint8(baseline_coords_type);
    // Serialize message field [baseline_a_mm]
    writer.writeInt32(baseline_a_mm);
    // Serialize message field [baseline_b_mm]
    writer.writeInt32(baseline_b_mm);
    // Serialize message field [baseline_c_mm]
    writer.writeInt32(baseline_c_mm);
    // Serialize message field [accuracy]
    writer.writeUint32(accuracy);
    // Serialize message field [iar_num_hypotheses]
    writer.writeInt32(iar_num_hypotheses);
  }

  @override
  RTKBaseline deserialize(ByteDataReader reader) {
    //deserializes a message object of type RTKBaseline
    final data = RTKBaseline();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [time_last_baseline_ms]
    data.time_last_baseline_ms = reader.readUint32();
    // Deserialize message field [rtk_receiver_id]
    data.rtk_receiver_id = reader.readUint8();
    // Deserialize message field [wn]
    data.wn = reader.readUint16();
    // Deserialize message field [tow]
    data.tow = reader.readUint32();
    // Deserialize message field [rtk_health]
    data.rtk_health = reader.readUint8();
    // Deserialize message field [rtk_rate]
    data.rtk_rate = reader.readUint8();
    // Deserialize message field [nsats]
    data.nsats = reader.readUint8();
    // Deserialize message field [baseline_coords_type]
    data.baseline_coords_type = reader.readUint8();
    // Deserialize message field [baseline_a_mm]
    data.baseline_a_mm = reader.readInt32();
    // Deserialize message field [baseline_b_mm]
    data.baseline_b_mm = reader.readInt32();
    // Deserialize message field [baseline_c_mm]
    data.baseline_c_mm = reader.readInt32();
    // Deserialize message field [accuracy]
    data.accuracy = reader.readUint32();
    // Deserialize message field [iar_num_hypotheses]
    data.iar_num_hypotheses = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 35;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/RTKBaseline';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'bd5852b76aa13136cec34a65089dfdb2';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# RTKBaseline received from the FCU.
# Full description: https://mavlink.io/en/messages/common.html#GPS_RTK
# Mavlink Common, #127and #128

std_msgs/Header header

uint32 time_last_baseline_ms
uint8 rtk_receiver_id
uint16 wn
uint32 tow
uint8 rtk_health
uint8 rtk_rate
uint8 nsats

uint8 baseline_coords_type 
uint8 RTK_BASELINE_COORDINATE_SYSTEM_ECEF = 0   # Earth-centered, earth-fixed
uint8 RTK_BASELINE_COORDINATE_SYSTEM_NED = 1    # RTK basestation centered, north, east, down

int32 baseline_a_mm
int32 baseline_b_mm
int32 baseline_c_mm
uint32 accuracy
int32 iar_num_hypotheses

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
  static const int RTK_BASELINE_COORDINATE_SYSTEM_ECEF = 0;
  static const int RTK_BASELINE_COORDINATE_SYSTEM_NED = 1;
}
