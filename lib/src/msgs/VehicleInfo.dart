// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class VehicleInfo extends RosMessage<VehicleInfo> {
  Header header;

  int available_info;

  int sysid;

  int compid;

  int autopilot;

  int type;

  int system_status;

  int base_mode;

  int custom_mode;

  String mode;

  int mode_id;

  int capabilities;

  int flight_sw_version;

  int middleware_sw_version;

  int os_sw_version;

  int board_version;

  String flight_custom_version;

  int vendor_id;

  int product_id;

  int uid;

  static VehicleInfo $prototype = VehicleInfo();
  VehicleInfo({ 
    Header? header,
    int? available_info,
    int? sysid,
    int? compid,
    int? autopilot,
    int? type,
    int? system_status,
    int? base_mode,
    int? custom_mode,
    String? mode,
    int? mode_id,
    int? capabilities,
    int? flight_sw_version,
    int? middleware_sw_version,
    int? os_sw_version,
    int? board_version,
    String? flight_custom_version,
    int? vendor_id,
    int? product_id,
    int? uid,
  }):
  this.header = header ?? Header(),
  this.available_info = available_info ?? 0,
  this.sysid = sysid ?? 0,
  this.compid = compid ?? 0,
  this.autopilot = autopilot ?? 0,
  this.type = type ?? 0,
  this.system_status = system_status ?? 0,
  this.base_mode = base_mode ?? 0,
  this.custom_mode = custom_mode ?? 0,
  this.mode = mode ?? '',
  this.mode_id = mode_id ?? 0,
  this.capabilities = capabilities ?? 0,
  this.flight_sw_version = flight_sw_version ?? 0,
  this.middleware_sw_version = middleware_sw_version ?? 0,
  this.os_sw_version = os_sw_version ?? 0,
  this.board_version = board_version ?? 0,
  this.flight_custom_version = flight_custom_version ?? '',
  this.vendor_id = vendor_id ?? 0,
  this.product_id = product_id ?? 0,
  this.uid = uid ?? 0;

  @override
  VehicleInfo call({ 
    Header? header,
    int? available_info,
    int? sysid,
    int? compid,
    int? autopilot,
    int? type,
    int? system_status,
    int? base_mode,
    int? custom_mode,
    String? mode,
    int? mode_id,
    int? capabilities,
    int? flight_sw_version,
    int? middleware_sw_version,
    int? os_sw_version,
    int? board_version,
    String? flight_custom_version,
    int? vendor_id,
    int? product_id,
    int? uid,
  }) => VehicleInfo(
  header: header,
  available_info: available_info,
  sysid: sysid,
  compid: compid,
  autopilot: autopilot,
  type: type,
  system_status: system_status,
  base_mode: base_mode,
  custom_mode: custom_mode,
  mode: mode,
  mode_id: mode_id,
  capabilities: capabilities,
  flight_sw_version: flight_sw_version,
  middleware_sw_version: middleware_sw_version,
  os_sw_version: os_sw_version,
  board_version: board_version,
  flight_custom_version: flight_custom_version,
  vendor_id: vendor_id,
  product_id: product_id,
  uid: uid,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type VehicleInfo
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [available_info]
    writer.writeUint8(available_info);
    // Serialize message field [sysid]
    writer.writeUint8(sysid);
    // Serialize message field [compid]
    writer.writeUint8(compid);
    // Serialize message field [autopilot]
    writer.writeUint8(autopilot);
    // Serialize message field [type]
    writer.writeUint8(type);
    // Serialize message field [system_status]
    writer.writeUint8(system_status);
    // Serialize message field [base_mode]
    writer.writeUint8(base_mode);
    // Serialize message field [custom_mode]
    writer.writeUint32(custom_mode);
    // Serialize message field [mode]
    writer.writeString(mode);
    // Serialize message field [mode_id]
    writer.writeUint32(mode_id);
    // Serialize message field [capabilities]
    writer.writeUint64(capabilities);
    // Serialize message field [flight_sw_version]
    writer.writeUint32(flight_sw_version);
    // Serialize message field [middleware_sw_version]
    writer.writeUint32(middleware_sw_version);
    // Serialize message field [os_sw_version]
    writer.writeUint32(os_sw_version);
    // Serialize message field [board_version]
    writer.writeUint32(board_version);
    // Serialize message field [flight_custom_version]
    writer.writeString(flight_custom_version);
    // Serialize message field [vendor_id]
    writer.writeUint16(vendor_id);
    // Serialize message field [product_id]
    writer.writeUint16(product_id);
    // Serialize message field [uid]
    writer.writeUint64(uid);
  }

  @override
  VehicleInfo deserialize(ByteDataReader reader) {
    //deserializes a message object of type VehicleInfo
    final data = VehicleInfo();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [available_info]
    data.available_info = reader.readUint8();
    // Deserialize message field [sysid]
    data.sysid = reader.readUint8();
    // Deserialize message field [compid]
    data.compid = reader.readUint8();
    // Deserialize message field [autopilot]
    data.autopilot = reader.readUint8();
    // Deserialize message field [type]
    data.type = reader.readUint8();
    // Deserialize message field [system_status]
    data.system_status = reader.readUint8();
    // Deserialize message field [base_mode]
    data.base_mode = reader.readUint8();
    // Deserialize message field [custom_mode]
    data.custom_mode = reader.readUint32();
    // Deserialize message field [mode]
    data.mode = reader.readString();
    // Deserialize message field [mode_id]
    data.mode_id = reader.readUint32();
    // Deserialize message field [capabilities]
    data.capabilities = reader.readUint64();
    // Deserialize message field [flight_sw_version]
    data.flight_sw_version = reader.readUint32();
    // Deserialize message field [middleware_sw_version]
    data.middleware_sw_version = reader.readUint32();
    // Deserialize message field [os_sw_version]
    data.os_sw_version = reader.readUint32();
    // Deserialize message field [board_version]
    data.board_version = reader.readUint32();
    // Deserialize message field [flight_custom_version]
    data.flight_custom_version = reader.readString();
    // Deserialize message field [vendor_id]
    data.vendor_id = reader.readUint16();
    // Deserialize message field [product_id]
    data.product_id = reader.readUint16();
    // Deserialize message field [uid]
    data.uid = reader.readUint64();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(mode).length;
    length += utf8.encode(flight_custom_version).length;
    return length + 59;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/VehicleInfo';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '9afa55616f5936bd9469d7d85c523ac1';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Vehicle Info msg

std_msgs/Header header

uint8 HAVE_INFO_HEARTBEAT = 1
uint8 HAVE_INFO_AUTOPILOT_VERSION = 2
uint8 available_info		# Bitmap shows what info is available

# Vehicle address
uint8 sysid                     # SYSTEM ID
uint8 compid                    # COMPONENT ID

# -*- Heartbeat info -*-
uint8 autopilot                 # MAV_AUTOPILOT
uint8 type                      # MAV_TYPE
uint8 system_status             # MAV_STATE
uint8 base_mode
uint32 custom_mode
string mode                     # MAV_MODE string
uint32 mode_id                  # MAV_MODE number

# -*- Autopilot version -*-
uint64 capabilities             # MAV_PROTOCOL_CAPABILITY
uint32 flight_sw_version        # Firmware version number
uint32 middleware_sw_version    # Middleware version number
uint32 os_sw_version            # Operating system version number
uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)
string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash
uint16 vendor_id                # ID of the board vendor
uint16 product_id               # ID of the product
uint64 uid                      # UID if provided by hardware

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
  static const int HAVE_INFO_HEARTBEAT = 1;
  static const int HAVE_INFO_AUTOPILOT_VERSION = 2;

}

