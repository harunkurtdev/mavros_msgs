// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:21 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'ESCTelemetryItem.dart';

//-----------------------------------------------------------

class ESCTelemetry extends RosMessage<ESCTelemetry> {
  Header header;

  List<ESCTelemetryItem> esc_telemetry;

  static ESCTelemetry $prototype = ESCTelemetry();
  ESCTelemetry({
    Header header,
    List<ESCTelemetryItem> esc_telemetry,
  })  : this.header = header ?? Header(),
        this.esc_telemetry = esc_telemetry ?? [];

  @override
  ESCTelemetry call({
    Header header,
    List<ESCTelemetryItem> esc_telemetry,
  }) =>
      ESCTelemetry(
        header: header,
        esc_telemetry: esc_telemetry,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ESCTelemetry
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [esc_telemetry]
    // Serialize the length for message field [esc_telemetry]
    writer.writeUint32(esc_telemetry.length);
    esc_telemetry.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  ESCTelemetry deserialize(ByteDataReader reader) {
    //deserializes a message object of type ESCTelemetry
    final data = ESCTelemetry();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [esc_telemetry]
    {
      // Deserialize array length for message field [esc_telemetry]
      final len = reader.readInt32();
      data.esc_telemetry = List.generate(
          len, (_) => ESCTelemetryItem.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    esc_telemetry.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ESCTelemetry';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '7b1fb252ca6aa175fe8dd23d029b3362';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# APM ESC Telemetry as returned by BLHeli
#
# See:
# https://mavlink.io/en/messages/ardupilotmega.html#ESC_TELEMETRY_1_TO_4
# https://mavlink.io/en/messages/ardupilotmega.html#ESC_TELEMETRY_5_TO_8
# https://mavlink.io/en/messages/ardupilotmega.html#ESC_TELEMETRY_9_TO_12

std_msgs/Header header

mavros_msgs/ESCTelemetryItem[] esc_telemetry

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

================================================================================
MSG: mavros_msgs/ESCTelemetryItem
# APM ESC Telemetry as returned by BLHeli
#
# See:
# https://mavlink.io/en/messages/ardupilotmega.html#ESC_TELEMETRY_1_TO_4
# https://mavlink.io/en/messages/ardupilotmega.html#ESC_TELEMETRY_5_TO_8
# https://mavlink.io/en/messages/ardupilotmega.html#ESC_TELEMETRY_9_TO_12

std_msgs/Header header

float32 temperature     # deg C
float32 voltage         # V
float32 current         # A
float32 totalcurrent    # Ah
int32 rpm               # -1/min
uint16 count            # count of telemetry packets

''';
  }
}
