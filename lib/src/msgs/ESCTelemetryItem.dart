// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:21 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class ESCTelemetryItem extends RosMessage<ESCTelemetryItem> {
  Header header;

  double temperature;

  double voltage;

  double current;

  double totalcurrent;

  int rpm;

  int count;

  static ESCTelemetryItem $prototype = ESCTelemetryItem();
  ESCTelemetryItem({ 
    Header header,
    double temperature,
    double voltage,
    double current,
    double totalcurrent,
    int rpm,
    int count,
  }):
  this.header = header ?? Header(),
  this.temperature = temperature ?? 0.0,
  this.voltage = voltage ?? 0.0,
  this.current = current ?? 0.0,
  this.totalcurrent = totalcurrent ?? 0.0,
  this.rpm = rpm ?? 0,
  this.count = count ?? 0;

  @override
  ESCTelemetryItem call({ 
    Header header,
    double temperature,
    double voltage,
    double current,
    double totalcurrent,
    int rpm,
    int count,
  }) => ESCTelemetryItem(
  header: header,
  temperature: temperature,
  voltage: voltage,
  current: current,
  totalcurrent: totalcurrent,
  rpm: rpm,
  count: count,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ESCTelemetryItem
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [temperature]
    writer.writeFloat32(temperature);
    // Serialize message field [voltage]
    writer.writeFloat32(voltage);
    // Serialize message field [current]
    writer.writeFloat32(current);
    // Serialize message field [totalcurrent]
    writer.writeFloat32(totalcurrent);
    // Serialize message field [rpm]
    writer.writeInt32(rpm);
    // Serialize message field [count]
    writer.writeUint16(count);
  }

  @override
  ESCTelemetryItem deserialize(ByteDataReader reader) {
    //deserializes a message object of type ESCTelemetryItem
    final data = ESCTelemetryItem();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [temperature]
    data.temperature = reader.readFloat32();
    // Deserialize message field [voltage]
    data.voltage = reader.readFloat32();
    // Deserialize message field [current]
    data.current = reader.readFloat32();
    // Deserialize message field [totalcurrent]
    data.totalcurrent = reader.readFloat32();
    // Deserialize message field [rpm]
    data.rpm = reader.readInt32();
    // Deserialize message field [count]
    data.count = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 22;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ESCTelemetryItem';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a135c5d0c71a3bade75476291a42a6df';
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

float32 temperature     # deg C
float32 voltage         # V
float32 current         # A
float32 totalcurrent    # Ah
int32 rpm               # -1/min
uint16 count            # count of telemetry packets

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

