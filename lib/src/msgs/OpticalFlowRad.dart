// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class OpticalFlowRad extends RosMessage<OpticalFlowRad> {
  Header header;

  int integration_time_us;

  double integrated_x;

  double integrated_y;

  double integrated_xgyro;

  double integrated_ygyro;

  double integrated_zgyro;

  int temperature;

  int quality;

  int time_delta_distance_us;

  double distance;

  static OpticalFlowRad $prototype = OpticalFlowRad();
  OpticalFlowRad({
    Header header,
    int integration_time_us,
    double integrated_x,
    double integrated_y,
    double integrated_xgyro,
    double integrated_ygyro,
    double integrated_zgyro,
    int temperature,
    int quality,
    int time_delta_distance_us,
    double distance,
  })  : this.header = header ?? Header(),
        this.integration_time_us = integration_time_us ?? 0,
        this.integrated_x = integrated_x ?? 0.0,
        this.integrated_y = integrated_y ?? 0.0,
        this.integrated_xgyro = integrated_xgyro ?? 0.0,
        this.integrated_ygyro = integrated_ygyro ?? 0.0,
        this.integrated_zgyro = integrated_zgyro ?? 0.0,
        this.temperature = temperature ?? 0,
        this.quality = quality ?? 0,
        this.time_delta_distance_us = time_delta_distance_us ?? 0,
        this.distance = distance ?? 0.0;

  @override
  OpticalFlowRad call({
    Header header,
    int integration_time_us,
    double integrated_x,
    double integrated_y,
    double integrated_xgyro,
    double integrated_ygyro,
    double integrated_zgyro,
    int temperature,
    int quality,
    int time_delta_distance_us,
    double distance,
  }) =>
      OpticalFlowRad(
        header: header,
        integration_time_us: integration_time_us,
        integrated_x: integrated_x,
        integrated_y: integrated_y,
        integrated_xgyro: integrated_xgyro,
        integrated_ygyro: integrated_ygyro,
        integrated_zgyro: integrated_zgyro,
        temperature: temperature,
        quality: quality,
        time_delta_distance_us: time_delta_distance_us,
        distance: distance,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type OpticalFlowRad
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [integration_time_us]
    writer.writeUint32(integration_time_us);
    // Serialize message field [integrated_x]
    writer.writeFloat32(integrated_x);
    // Serialize message field [integrated_y]
    writer.writeFloat32(integrated_y);
    // Serialize message field [integrated_xgyro]
    writer.writeFloat32(integrated_xgyro);
    // Serialize message field [integrated_ygyro]
    writer.writeFloat32(integrated_ygyro);
    // Serialize message field [integrated_zgyro]
    writer.writeFloat32(integrated_zgyro);
    // Serialize message field [temperature]
    writer.writeint16(temperature);
    // Serialize message field [quality]
    writer.writeUint8(quality);
    // Serialize message field [time_delta_distance_us]
    writer.writeUint32(time_delta_distance_us);
    // Serialize message field [distance]
    writer.writeFloat32(distance);
  }

  @override
  OpticalFlowRad deserialize(ByteDataReader reader) {
    //deserializes a message object of type OpticalFlowRad
    final data = OpticalFlowRad();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [integration_time_us]
    data.integration_time_us = reader.readUint32();
    // Deserialize message field [integrated_x]
    data.integrated_x = reader.readFloat32();
    // Deserialize message field [integrated_y]
    data.integrated_y = reader.readFloat32();
    // Deserialize message field [integrated_xgyro]
    data.integrated_xgyro = reader.readFloat32();
    // Deserialize message field [integrated_ygyro]
    data.integrated_ygyro = reader.readFloat32();
    // Deserialize message field [integrated_zgyro]
    data.integrated_zgyro = reader.readFloat32();
    // Deserialize message field [temperature]
    data.temperature = reader.readint16();
    // Deserialize message field [quality]
    data.quality = reader.readUint8();
    // Deserialize message field [time_delta_distance_us]
    data.time_delta_distance_us = reader.readUint32();
    // Deserialize message field [distance]
    data.distance = reader.readFloat32();
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
    return 'mavros_msgs/OpticalFlowRad';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '65d93e03c6188c7ee30415b2a39ad40d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# OPTICAL_FLOW_RAD message data

std_msgs/Header header

uint32 integration_time_us
float32 integrated_x
float32 integrated_y
float32 integrated_xgyro
float32 integrated_ygyro
float32 integrated_zgyro
int16 temperature
uint8 quality
uint32 time_delta_distance_us
float32 distance

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
