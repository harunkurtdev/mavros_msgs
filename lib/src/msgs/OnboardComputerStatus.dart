// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class OnboardComputerStatus extends RosMessage<OnboardComputerStatus> {
  Header header;

  int component;

  int uptime;

  int type;

  List<int> cpu_cores;

  List<int> cpu_combined;

  List<int> gpu_cores;

  List<int> gpu_combined;

  int temperature_board;

  List<int> temperature_core;

  List<int> fan_speed;

  int ram_usage;

  int ram_total;

  List<int> storage_type;

  List<int> storage_usage;

  List<int> storage_total;

  List<int> link_type;

  List<int> link_tx_rate;

  List<int> link_rx_rate;

  List<int> link_tx_max;

  List<int> link_rx_max;

  static OnboardComputerStatus $prototype = OnboardComputerStatus();
  OnboardComputerStatus({ 
    Header? header,
    int? component,
    int? uptime,
    int? type,
    List<int>? cpu_cores,
    List<int>? cpu_combined,
    List<int>? gpu_cores,
    List<int>? gpu_combined,
    int? temperature_board,
    List<int>? temperature_core,
    List<int>? fan_speed,
    int? ram_usage,
    int? ram_total,
    List<int>? storage_type,
    List<int>? storage_usage,
    List<int>? storage_total,
    List<int>? link_type,
    List<int>? link_tx_rate,
    List<int>? link_rx_rate,
    List<int>? link_tx_max,
    List<int>? link_rx_max,
  }):
  this.header = header ?? Header(),
  this.component = component ?? 0,
  this.uptime = uptime ?? 0,
  this.type = type ?? 0,
  this.cpu_cores = cpu_cores ?? List.generate(8, (_) => 0),
  this.cpu_combined = cpu_combined ?? List.generate(10, (_) => 0),
  this.gpu_cores = gpu_cores ?? List.generate(4, (_) => 0),
  this.gpu_combined = gpu_combined ?? List.generate(10, (_) => 0),
  this.temperature_board = temperature_board ?? 0,
  this.temperature_core = temperature_core ?? List.generate(8, (_) => 0),
  this.fan_speed = fan_speed ?? List.generate(4, (_) => 0),
  this.ram_usage = ram_usage ?? 0,
  this.ram_total = ram_total ?? 0,
  this.storage_type = storage_type ?? List.generate(4, (_) => 0),
  this.storage_usage = storage_usage ?? List.generate(4, (_) => 0),
  this.storage_total = storage_total ?? List.generate(4, (_) => 0),
  this.link_type = link_type ?? List.generate(6, (_) => 0),
  this.link_tx_rate = link_tx_rate ?? List.generate(6, (_) => 0),
  this.link_rx_rate = link_rx_rate ?? List.generate(6, (_) => 0),
  this.link_tx_max = link_tx_max ?? List.generate(6, (_) => 0),
  this.link_rx_max = link_rx_max ?? List.generate(6, (_) => 0);

  @override
  OnboardComputerStatus call({ 
    Header? header,
    int? component,
    int? uptime,
    int? type,
    List<int>? cpu_cores,
    List<int>? cpu_combined,
    List<int>? gpu_cores,
    List<int>? gpu_combined,
    int? temperature_board,
    List<int>? temperature_core,
    List<int>? fan_speed,
    int? ram_usage,
    int? ram_total,
    List<int>? storage_type,
    List<int>? storage_usage,
    List<int>? storage_total,
    List<int>? link_type,
    List<int>? link_tx_rate,
    List<int>? link_rx_rate,
    List<int>? link_tx_max,
    List<int>? link_rx_max,
  }) => OnboardComputerStatus(
  header: header,
  component: component,
  uptime: uptime,
  type: type,
  cpu_cores: cpu_cores,
  cpu_combined: cpu_combined,
  gpu_cores: gpu_cores,
  gpu_combined: gpu_combined,
  temperature_board: temperature_board,
  temperature_core: temperature_core,
  fan_speed: fan_speed,
  ram_usage: ram_usage,
  ram_total: ram_total,
  storage_type: storage_type,
  storage_usage: storage_usage,
  storage_total: storage_total,
  link_type: link_type,
  link_tx_rate: link_tx_rate,
  link_rx_rate: link_rx_rate,
  link_tx_max: link_tx_max,
  link_rx_max: link_rx_max,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type OnboardComputerStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [component]
    writer.writeUint8(component);
    // Serialize message field [uptime]
    writer.writeUint32(uptime);
    // Serialize message field [type]
    writer.writeUint8(type);
    // Check that the constant length array field [cpu_cores] has the right length
    if (cpu_cores.length != 8) {
      throw Exception('Unable to serialize array field cpu_cores - length must be 8');
    }
    // Serialize message field [cpu_cores]
    writer.writeArray<int>(cpu_cores, (val) => writer.writeUint8(val), specArrayLen: 8);
    // Check that the constant length array field [cpu_combined] has the right length
    if (cpu_combined.length != 10) {
      throw Exception('Unable to serialize array field cpu_combined - length must be 10');
    }
    // Serialize message field [cpu_combined]
    writer.writeArray<int>(cpu_combined, (val) => writer.writeUint8(val), specArrayLen: 10);
    // Check that the constant length array field [gpu_cores] has the right length
    if (gpu_cores.length != 4) {
      throw Exception('Unable to serialize array field gpu_cores - length must be 4');
    }
    // Serialize message field [gpu_cores]
    writer.writeArray<int>(gpu_cores, (val) => writer.writeUint8(val), specArrayLen: 4);
    // Check that the constant length array field [gpu_combined] has the right length
    if (gpu_combined.length != 10) {
      throw Exception('Unable to serialize array field gpu_combined - length must be 10');
    }
    // Serialize message field [gpu_combined]
    writer.writeArray<int>(gpu_combined, (val) => writer.writeUint8(val), specArrayLen: 10);
    // Serialize message field [temperature_board]
    writer.writeInt8(temperature_board);
    // Check that the constant length array field [temperature_core] has the right length
    if (temperature_core.length != 8) {
      throw Exception('Unable to serialize array field temperature_core - length must be 8');
    }
    // Serialize message field [temperature_core]
    writer.writeArray<int>(temperature_core, (val) => writer.writeInt8(val), specArrayLen: 8);
    // Check that the constant length array field [fan_speed] has the right length
    if (fan_speed.length != 4) {
      throw Exception('Unable to serialize array field fan_speed - length must be 4');
    }
    // Serialize message field [fan_speed]
    writer.writeArray<int>(fan_speed, (val) => writer.writeInt16(val), specArrayLen: 4);
    // Serialize message field [ram_usage]
    writer.writeUint32(ram_usage);
    // Serialize message field [ram_total]
    writer.writeUint32(ram_total);
    // Check that the constant length array field [storage_type] has the right length
    if (storage_type.length != 4) {
      throw Exception('Unable to serialize array field storage_type - length must be 4');
    }
    // Serialize message field [storage_type]
    writer.writeArray<int>(storage_type, (val) => writer.writeUint32(val), specArrayLen: 4);
    // Check that the constant length array field [storage_usage] has the right length
    if (storage_usage.length != 4) {
      throw Exception('Unable to serialize array field storage_usage - length must be 4');
    }
    // Serialize message field [storage_usage]
    writer.writeArray<int>(storage_usage, (val) => writer.writeUint32(val), specArrayLen: 4);
    // Check that the constant length array field [storage_total] has the right length
    if (storage_total.length != 4) {
      throw Exception('Unable to serialize array field storage_total - length must be 4');
    }
    // Serialize message field [storage_total]
    writer.writeArray<int>(storage_total, (val) => writer.writeUint32(val), specArrayLen: 4);
    // Check that the constant length array field [link_type] has the right length
    if (link_type.length != 6) {
      throw Exception('Unable to serialize array field link_type - length must be 6');
    }
    // Serialize message field [link_type]
    writer.writeArray<int>(link_type, (val) => writer.writeUint32(val), specArrayLen: 6);
    // Check that the constant length array field [link_tx_rate] has the right length
    if (link_tx_rate.length != 6) {
      throw Exception('Unable to serialize array field link_tx_rate - length must be 6');
    }
    // Serialize message field [link_tx_rate]
    writer.writeArray<int>(link_tx_rate, (val) => writer.writeUint32(val), specArrayLen: 6);
    // Check that the constant length array field [link_rx_rate] has the right length
    if (link_rx_rate.length != 6) {
      throw Exception('Unable to serialize array field link_rx_rate - length must be 6');
    }
    // Serialize message field [link_rx_rate]
    writer.writeArray<int>(link_rx_rate, (val) => writer.writeUint32(val), specArrayLen: 6);
    // Check that the constant length array field [link_tx_max] has the right length
    if (link_tx_max.length != 6) {
      throw Exception('Unable to serialize array field link_tx_max - length must be 6');
    }
    // Serialize message field [link_tx_max]
    writer.writeArray<int>(link_tx_max, (val) => writer.writeUint32(val), specArrayLen: 6);
    // Check that the constant length array field [link_rx_max] has the right length
    if (link_rx_max.length != 6) {
      throw Exception('Unable to serialize array field link_rx_max - length must be 6');
    }
    // Serialize message field [link_rx_max]
    writer.writeArray<int>(link_rx_max, (val) => writer.writeUint32(val), specArrayLen: 6);
  }

  @override
  OnboardComputerStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type OnboardComputerStatus
    final data = OnboardComputerStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [component]
    data.component = reader.readUint8();
    // Deserialize message field [uptime]
    data.uptime = reader.readUint32();
    // Deserialize message field [type]
    data.type = reader.readUint8();
    // Deserialize message field [cpu_cores]
    data.cpu_cores = reader.readArray<int>(() => reader.readUint8(), arrayLen: 8);
    // Deserialize message field [cpu_combined]
    data.cpu_combined = reader.readArray<int>(() => reader.readUint8(), arrayLen: 10);
    // Deserialize message field [gpu_cores]
    data.gpu_cores = reader.readArray<int>(() => reader.readUint8(), arrayLen: 4);
    // Deserialize message field [gpu_combined]
    data.gpu_combined = reader.readArray<int>(() => reader.readUint8(), arrayLen: 10);
    // Deserialize message field [temperature_board]
    data.temperature_board = reader.readInt8();
    // Deserialize message field [temperature_core]
    data.temperature_core = reader.readArray<int>(() => reader.readInt8(), arrayLen: 8);
    // Deserialize message field [fan_speed]
    data.fan_speed = reader.readArray<int>(() => reader.readInt16(), arrayLen: 4);
    // Deserialize message field [ram_usage]
    data.ram_usage = reader.readUint32();
    // Deserialize message field [ram_total]
    data.ram_total = reader.readUint32();
    // Deserialize message field [storage_type]
    data.storage_type = reader.readArray<int>(() => reader.readUint32(), arrayLen: 4);
    // Deserialize message field [storage_usage]
    data.storage_usage = reader.readArray<int>(() => reader.readUint32(), arrayLen: 4);
    // Deserialize message field [storage_total]
    data.storage_total = reader.readArray<int>(() => reader.readUint32(), arrayLen: 4);
    // Deserialize message field [link_type]
    data.link_type = reader.readArray<int>(() => reader.readUint32(), arrayLen: 6);
    // Deserialize message field [link_tx_rate]
    data.link_tx_rate = reader.readArray<int>(() => reader.readUint32(), arrayLen: 6);
    // Deserialize message field [link_rx_rate]
    data.link_rx_rate = reader.readArray<int>(() => reader.readUint32(), arrayLen: 6);
    // Deserialize message field [link_tx_max]
    data.link_tx_max = reader.readArray<int>(() => reader.readUint32(), arrayLen: 6);
    // Deserialize message field [link_rx_max]
    data.link_rx_max = reader.readArray<int>(() => reader.readUint32(), arrayLen: 6);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 231;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/OnboardComputerStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'aebe864fac2952ca9de45a2b65875a60';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Mavros message: ONBOARDCOMPUTERSTATUS

std_msgs/Header header

uint8 component               # See enum MAV_COMPONENT

uint32 uptime               # [ms] Time since system boot
uint8 type                  # Type of the onboard computer: 0: Mission computer primary, 1: Mission computer backup 1, 2: Mission computer backup 2, 3: Compute node, 4-5: Compute spares, 6-9: Payload computers.
uint8[8] cpu_cores          # CPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused.
uint8[10] cpu_combined      # Combined CPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused
uint8[4] gpu_cores          # GPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused
uint8[10] gpu_combined      # Combined GPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused.
int8 temperature_board      # [degC] Temperature of the board. A value of INT8_MAX implies the field is unused.
int8[8] temperature_core    # [degC] Temperature of the CPU core. A value of INT8_MAX implies the field is unused.
int16[4] fan_speed          # [rpm] Fan speeds. A value of INT16_MAX implies the field is unused.
uint32 ram_usage            # [MiB] Amount of used RAM on the component system. A value of UINT32_MAX implies the field is unused.
uint32 ram_total            # [MiB] Total amount of RAM on the component system. A value of UINT32_MAX implies the field is unused.
uint32[4] storage_type      # Storage type: 0: HDD, 1: SSD, 2: EMMC, 3: SD card (non-removable), 4: SD card (removable). A value of UINT32_MAX implies the field is unused.
uint32[4] storage_usage     # [MiB] Amount of used storage space on the component system. A value of UINT32_MAX implies the field is unused.
uint32[4] storage_total     # [MiB] Total amount of storage space on the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_type         # Link type: 0-9: UART, 10-19: Wired network, 20-29: Wifi, 30-39: Point-to-point proprietary, 40-49: Mesh proprietary.
uint32[6] link_tx_rate      # [KiB/s] Network traffic from the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_rx_rate      # [KiB/s] Network traffic to the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_tx_max       # [KiB/s] Network capacity from the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_rx_max       # [KiB/s] Network capacity to the component system. A value of UINT32_MAX implies the field is unused.
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

