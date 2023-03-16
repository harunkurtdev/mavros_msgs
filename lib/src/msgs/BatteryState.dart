// Auto-generated. Do not edit!

// Updated: Thu Mar 18 10:22:38 2021

// (in-package sensor_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class BatteryState extends RosMessage<BatteryState> {
  Header header;

  double voltage;

  double current;

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

  static BatteryState $prototype = BatteryState();
  BatteryState({
    Header? header,
    double? voltage,
    double? current,
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
  BatteryState call({
    Header? header,
    double? voltage,
    double? current,
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
      BatteryState(
        header: header,
        voltage: voltage,
        current: current,
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
    // Serializes a message object of type BatteryState
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [voltage]
    writer.writeFloat32(voltage);
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
  BatteryState deserialize(ByteDataReader reader) {
    //deserializes a message object of type BatteryState
    final data = BatteryState();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [voltage]
    data.voltage = reader.readFloat32();
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
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 4 * cell_voltage.length;
    length += utf8.encode(location).length;
    length += utf8.encode(serial_number).length;
    return length + 40;
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
    return '''
# Constants are chosen to match the enums in the linux kernel
# defined in include/linux/power_supply.h as of version 3.7
# The one difference is for style reasons the constants are
# all uppercase not mixed case.

# Power supply status constants
uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0
uint8 POWER_SUPPLY_STATUS_CHARGING = 1
uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2
uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3
uint8 POWER_SUPPLY_STATUS_FULL = 4

# Power supply health constants
uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0
uint8 POWER_SUPPLY_HEALTH_GOOD = 1
uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2
uint8 POWER_SUPPLY_HEALTH_DEAD = 3
uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
uint8 POWER_SUPPLY_HEALTH_COLD = 6
uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8

# Power supply technology (chemistry) constants
uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1
uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2
uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3
uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4
uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5
uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6

Header  header
float32 voltage          # Voltage in Volts (Mandatory)
float32 current          # Negative when discharging (A)  (If unmeasured NaN)
float32 charge           # Current charge in Ah  (If unmeasured NaN)
float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)
float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)
float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)
uint8   power_supply_status     # The charging status as reported. Values defined above
uint8   power_supply_health     # The battery health metric. Values defined above
uint8   power_supply_technology # The battery chemistry. Values defined above
bool    present          # True if the battery is present

float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack
                         # If individual voltages unknown but number of cells known set each to NaN
string location          # The location into which the battery is inserted. (slot number or plug)
string serial_number     # The best approximation of the battery serial number

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
  static const int POWER_SUPPLY_STATUS_UNKNOWN = 0;
  static const int POWER_SUPPLY_STATUS_CHARGING = 1;
  static const int POWER_SUPPLY_STATUS_DISCHARGING = 2;
  static const int POWER_SUPPLY_STATUS_NOT_CHARGING = 3;
  static const int POWER_SUPPLY_STATUS_FULL = 4;
  static const int POWER_SUPPLY_HEALTH_UNKNOWN = 0;
  static const int POWER_SUPPLY_HEALTH_GOOD = 1;
  static const int POWER_SUPPLY_HEALTH_OVERHEAT = 2;
  static const int POWER_SUPPLY_HEALTH_DEAD = 3;
  static const int POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4;
  static const int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5;
  static const int POWER_SUPPLY_HEALTH_COLD = 6;
  static const int POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7;
  static const int POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8;
  static const int POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0;
  static const int POWER_SUPPLY_TECHNOLOGY_NIMH = 1;
  static const int POWER_SUPPLY_TECHNOLOGY_LION = 2;
  static const int POWER_SUPPLY_TECHNOLOGY_LIPO = 3;
  static const int POWER_SUPPLY_TECHNOLOGY_LIFE = 4;
  static const int POWER_SUPPLY_TECHNOLOGY_NICD = 5;
  static const int POWER_SUPPLY_TECHNOLOGY_LIMN = 6;
}
