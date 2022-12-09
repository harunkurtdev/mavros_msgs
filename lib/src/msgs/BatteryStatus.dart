// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields

//this package change from sensro_msgs/BatterState

import 'dart:convert';
import 'package:buffer/buffer.dart';
// import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class BatteryStatus extends RosMessage<BatteryStatus> {
  Header header;

  double voltage;

  double current;

  double temperature;

  double charge;

  double capacity;

  double design_capacity;

  double percentage;

  int power_supply_status;

  int power_supply_health;

  int power_supply_technology;

  bool present;

  List<double> cell_voltage;

  String location;

  String serial_number;

  static BatteryStatus $prototype = BatteryStatus();
  BatteryStatus({
    Header? header,
    double? voltage,
    double? current,
    double? temperature,
    double? charge,
    double? capacity,
    double? design_capacity,
    double? percentage,
    int? power_supply_status,
    int? power_supply_health,
    int? power_supply_technology,
    bool? present,
    List<double>? cell_voltage,
    String? location,
    String? serial_number,
  })  : this.header = header ?? Header(),
        this.voltage = voltage ?? 0.0,
        this.current = current ?? 0.0,
        this.charge = charge ?? 0.0,
        this.temperature = temperature ?? 0.0,
        this.capacity = capacity ?? 0.0,
        this.design_capacity = design_capacity ?? 0.0,
        this.percentage = percentage ?? 0.0,
        this.power_supply_status = power_supply_status ?? 0,
        this.power_supply_health = power_supply_health ?? 0,
        this.power_supply_technology = power_supply_technology ?? 0,
        this.present = present ?? false,
        this.cell_voltage = cell_voltage ?? [],
        this.location = location ?? '',
        this.serial_number = serial_number ?? '';

  @override
  BatteryStatus call({
    Header? header,
    double? voltage,
    double? current,
    double? temperature,
    double? charge,
    double? capacity,
    double? design_capacity,
    double? percentage,
    int? power_supply_status,
    int? power_supply_health,
    int? power_supply_technology,
    bool? present,
    List<double>? cell_voltage,
    String? location,
    String? serial_number,
  }) =>
      BatteryStatus(
        header: header,
        voltage: voltage,
        current: current,
        temperature: temperature,
        charge: charge,
        capacity: capacity,
        design_capacity: design_capacity,
        percentage: percentage,
        power_supply_status: power_supply_status,
        power_supply_health: power_supply_health,
        power_supply_technology: power_supply_technology,
        present: present,
        cell_voltage: cell_voltage,
        location: location,
        serial_number: serial_number,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type BatteryStatus
    // Serialize message field [header]
    header.serialize(writer);
    writer.writeFloat32(voltage);
    // Serialize message field [current]
    writer.writeFloat32(temperature);
    // Serialize message field [current]
    writer.writeFloat32(current);
    // Serialize message field [charge]
    writer.writeFloat32(charge);
    // Serialize message field [capacity]
    writer.writeFloat32(capacity);
    // Serialize message field [design_capacity]
    writer.writeFloat32(design_capacity);
    // Serialize message field [percentage]
    writer.writeFloat32(percentage);
    // Serialize message field [power_supply_status]
    writer.writeUint8(power_supply_status);
    // Serialize message field [power_supply_health]
    writer.writeUint8(power_supply_health);
    // Serialize message field [power_supply_technology]
    writer.writeUint8(power_supply_technology);
    // Serialize message field [present]
    writer.writeUint8(present == false ? 0 : 1);
    // Serialize message field [cell_voltage]
    writer.writeArray<double>(cell_voltage, (val) => writer.writeFloat32(val),
        specArrayLen: null);
    // Serialize message field [location]
    writer.writeString(location);
    // Serialize message field [serial_number]
    writer.writeString(serial_number);
  }

  @override
  BatteryStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type BatteryStatus
    final data = BatteryStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [voltage]
    data.voltage = reader.readFloat32();
    // Deserialize message field [temperature]
    data.temperature = reader.readFloat32();
    // Deserialize message field [current]
    data.current = reader.readFloat32();
    // Deserialize message field [charge]
    data.charge = reader.readFloat32();
    // Deserialize message field [capacity]
    data.capacity = reader.readFloat32();
    // Deserialize message field [design_capacity]
    data.design_capacity = reader.readFloat32();
    // Deserialize message field [percentage]
    data.percentage = reader.readFloat32();
    // Deserialize message field [power_supply_status]
    data.power_supply_status = reader.readUint8();
    // Deserialize message field [power_supply_health]
    data.power_supply_health = reader.readUint8();
    // Deserialize message field [power_supply_technology]
    data.power_supply_technology = reader.readUint8();
    // Deserialize message field [present]
    data.present = reader.readUint8() != 0;
    // Deserialize message field [cell_voltage]
    data.cell_voltage =
        reader.readArray<double>(() => reader.readFloat32(), arrayLen: null);
    // Deserialize message field [location]
    data.location = reader.readString();
    // Deserialize message field [serial_number]
    data.serial_number = reader.readString();
    ;
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
    return 'sensor_msgs/BatteryState';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4ddae7f048e32fda22cac764685e3974';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Represent battery status from SYSTEM_STATUS
#
# To be replaced when sensor_msgs/BatteryState PR will be merged
# https://github.com/ros/common_msgs/pull/74

std_msgs/Header header
float32 voltage # [V]
float32 current # [A]
float32 remaining # 0..1

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
