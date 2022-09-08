// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class GPSRTK extends RosMessage<GPSRTK> {
  Header header;

  int rtk_receiver_id;

  int wn;

  int tow;

  int rtk_health;

  int rtk_rate;

  int nsats;

  int baseline_a;

  int baseline_b;

  int baseline_c;

  int accuracy;

  int iar_num_hypotheses;

  static GPSRTK $prototype = GPSRTK();
  GPSRTK({
    Header header,
    int rtk_receiver_id,
    int wn,
    int tow,
    int rtk_health,
    int rtk_rate,
    int nsats,
    int baseline_a,
    int baseline_b,
    int baseline_c,
    int accuracy,
    int iar_num_hypotheses,
  })  : this.header = header ?? Header(),
        this.rtk_receiver_id = rtk_receiver_id ?? 0,
        this.wn = wn ?? 0,
        this.tow = tow ?? 0,
        this.rtk_health = rtk_health ?? 0,
        this.rtk_rate = rtk_rate ?? 0,
        this.nsats = nsats ?? 0,
        this.baseline_a = baseline_a ?? 0,
        this.baseline_b = baseline_b ?? 0,
        this.baseline_c = baseline_c ?? 0,
        this.accuracy = accuracy ?? 0,
        this.iar_num_hypotheses = iar_num_hypotheses ?? 0;

  @override
  GPSRTK call({
    Header header,
    int rtk_receiver_id,
    int wn,
    int tow,
    int rtk_health,
    int rtk_rate,
    int nsats,
    int baseline_a,
    int baseline_b,
    int baseline_c,
    int accuracy,
    int iar_num_hypotheses,
  }) =>
      GPSRTK(
        header: header,
        rtk_receiver_id: rtk_receiver_id,
        wn: wn,
        tow: tow,
        rtk_health: rtk_health,
        rtk_rate: rtk_rate,
        nsats: nsats,
        baseline_a: baseline_a,
        baseline_b: baseline_b,
        baseline_c: baseline_c,
        accuracy: accuracy,
        iar_num_hypotheses: iar_num_hypotheses,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GPSRTK
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [rtk_receiver_id]
    writer.writeUint8(rtk_receiver_id);
    // Serialize message field [wn]
    writer.writeint16(wn);
    // Serialize message field [tow]
    writer.writeUint32(tow);
    // Serialize message field [rtk_health]
    writer.writeUint8(rtk_health);
    // Serialize message field [rtk_rate]
    writer.writeUint8(rtk_rate);
    // Serialize message field [nsats]
    writer.writeUint8(nsats);
    // Serialize message field [baseline_a]
    writer.writeint32(baseline_a);
    // Serialize message field [baseline_b]
    writer.writeint32(baseline_b);
    // Serialize message field [baseline_c]
    writer.writeint32(baseline_c);
    // Serialize message field [accuracy]
    writer.writeUint32(accuracy);
    // Serialize message field [iar_num_hypotheses]
    writer.writeint32(iar_num_hypotheses);
  }

  @override
  GPSRTK deserialize(ByteDataReader reader) {
    //deserializes a message object of type GPSRTK
    final data = GPSRTK();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [rtk_receiver_id]
    data.rtk_receiver_id = reader.readUint8();
    // Deserialize message field [wn]
    data.wn = reader.readint16();
    // Deserialize message field [tow]
    data.tow = reader.readUint32();
    // Deserialize message field [rtk_health]
    data.rtk_health = reader.readUint8();
    // Deserialize message field [rtk_rate]
    data.rtk_rate = reader.readUint8();
    // Deserialize message field [nsats]
    data.nsats = reader.readUint8();
    // Deserialize message field [baseline_a]
    data.baseline_a = reader.readint32();
    // Deserialize message field [baseline_b]
    data.baseline_b = reader.readint32();
    // Deserialize message field [baseline_c]
    data.baseline_c = reader.readint32();
    // Deserialize message field [accuracy]
    data.accuracy = reader.readUint32();
    // Deserialize message field [iar_num_hypotheses]
    data.iar_num_hypotheses = reader.readint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 30;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/GPSRTK';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ab2651768aa6464b60b7bc8ae031e017';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FCU GPS RTK message for the gps_status plugin
# A copy of <a href="https://mavlink.io/en/messages/common.html#GPS_RTK">mavlink GPS_RTK message</a>

std_msgs/Header header

uint8 rtk_receiver_id      # Identification of connected RTK receiver.
int16 wn                   # GPS Week Number of last baseline.
uint32 tow                 # [ms] GPS Time of Week of last baseline.
uint8 rtk_health           # GPS-specific health report for RTK data.
uint8 rtk_rate             # [Hz] Rate of baseline messages being received by GPS.
uint8 nsats                # Current number of sats used for RTK calculation.
int32 baseline_a           # [mm] Current baseline in ECEF x or NED north component, depends on header.frame_id.
int32 baseline_b           # [mm] Current baseline in ECEF y or NED east component, depends on header.frame_id.
int32 baseline_c           # [mm] Current baseline in ECEF z or NED down component, depends on header.frame_id.
uint32 accuracy            # Current estimate of baseline accuracy.
int32 iar_num_hypotheses   # Current number of integer ambiguity hypotheses.



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
