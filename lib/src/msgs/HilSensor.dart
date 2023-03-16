// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';
import 'package:geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class HilSensor extends RosMessage<HilSensor> {
  Header header;

  Vector3 acc;

  Vector3 gyro;

  Vector3 mag;

  double abs_pressure;

  double diff_pressure;

  double pressure_alt;

  double temperature;

  int fields_updated;

  static HilSensor $prototype = HilSensor();
  HilSensor({ 
    Header? header,
    Vector3? acc,
    Vector3? gyro,
    Vector3? mag,
    double? abs_pressure,
    double? diff_pressure,
    double? pressure_alt,
    double? temperature,
    int? fields_updated,
  }):
  this.header = header ?? Header(),
  this.acc = acc ?? Vector3(),
  this.gyro = gyro ?? Vector3(),
  this.mag = mag ?? Vector3(),
  this.abs_pressure = abs_pressure ?? 0.0,
  this.diff_pressure = diff_pressure ?? 0.0,
  this.pressure_alt = pressure_alt ?? 0.0,
  this.temperature = temperature ?? 0.0,
  this.fields_updated = fields_updated ?? 0;

  @override
  HilSensor call({ 
    Header? header,
    Vector3? acc,
    Vector3? gyro,
    Vector3? mag,
    double? abs_pressure,
    double? diff_pressure,
    double? pressure_alt,
    double? temperature,
    int? fields_updated,
  }) => HilSensor(
  header: header,
  acc: acc,
  gyro: gyro,
  mag: mag,
  abs_pressure: abs_pressure,
  diff_pressure: diff_pressure,
  pressure_alt: pressure_alt,
  temperature: temperature,
  fields_updated: fields_updated,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type HilSensor
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [acc]
    acc.serialize(writer);
    // Serialize message field [gyro]
    gyro.serialize(writer);
    // Serialize message field [mag]
    mag.serialize(writer);
    // Serialize message field [abs_pressure]
    writer.writeFloat32(abs_pressure);
    // Serialize message field [diff_pressure]
    writer.writeFloat32(diff_pressure);
    // Serialize message field [pressure_alt]
    writer.writeFloat32(pressure_alt);
    // Serialize message field [temperature]
    writer.writeFloat32(temperature);
    // Serialize message field [fields_updated]
    writer.writeUint32(fields_updated);
  }

  @override
  HilSensor deserialize(ByteDataReader reader) {
    //deserializes a message object of type HilSensor
    final data = HilSensor();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [acc]
    data.acc = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [gyro]
    data.gyro = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [mag]
    data.mag = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [abs_pressure]
    data.abs_pressure = reader.readFloat32();
    // Deserialize message field [diff_pressure]
    data.diff_pressure = reader.readFloat32();
    // Deserialize message field [pressure_alt]
    data.pressure_alt = reader.readFloat32();
    // Deserialize message field [temperature]
    data.temperature = reader.readFloat32();
    // Deserialize message field [fields_updated]
    data.fields_updated = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 92;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/HilSensor';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '2a892891e5c40d6dd1066bf1f394b5dc';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# HilSensor.msg
#
# ROS representation of MAVLink HIL_SENSOR
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_SENSOR

std_msgs/Header header

geometry_msgs/Vector3 acc
geometry_msgs/Vector3 gyro
geometry_msgs/Vector3 mag
float32 abs_pressure
float32 diff_pressure
float32 pressure_alt
float32 temperature
uint32 fields_updated

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
''';
  }

}

