// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:31 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

import '../msgs/VehicleInfo.dart';

//-----------------------------------------------------------

class VehicleInfoGetRequest extends RosMessage<VehicleInfoGetRequest> {
  int sysid;

  int compid;

  bool get_all;

  static VehicleInfoGetRequest $prototype = VehicleInfoGetRequest();
  VehicleInfoGetRequest({
    int sysid,
    int compid,
    bool get_all,
  })  : this.sysid = sysid ?? 0,
        this.compid = compid ?? 0,
        this.get_all = get_all ?? false;

  @override
  VehicleInfoGetRequest call({
    int sysid,
    int compid,
    bool get_all,
  }) =>
      VehicleInfoGetRequest(
        sysid: sysid,
        compid: compid,
        get_all: get_all,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type VehicleInfoGetRequest
    // Serialize message field [sysid]
    writer.writeUint8(sysid);
    // Serialize message field [compid]
    writer.writeUint8(compid);
    // Serialize message field [get_all]
    writer.writeUint8(get_all == false ? 0 : 1);
  }

  @override
  VehicleInfoGetRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type VehicleInfoGetRequest
    final data = VehicleInfoGetRequest();
    // Deserialize message field [sysid]
    data.sysid = reader.readUint8();
    // Deserialize message field [compid]
    data.compid = reader.readUint8();
    // Deserialize message field [get_all]
    data.get_all = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 3;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/VehicleInfoGetRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c1911e97179d4b379a979e2ab8e01e5c';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request the Vehicle Info
# use this to request the current target sysid / compid defined in mavros
# set get_all = True to request all available vehicles

uint8 GET_MY_SYSID = 0
uint8 GET_MY_COMPID = 0

uint8 sysid
uint8 compid
bool get_all

''';
  }

// Constants for message
  static const int GET_MY_SYSID = 0;
  static const int GET_MY_COMPID = 0;
}

class VehicleInfoGetResponse extends RosMessage<VehicleInfoGetResponse> {
  bool success;

  List<VehicleInfo> vehicles;

  static VehicleInfoGetResponse $prototype = VehicleInfoGetResponse();
  VehicleInfoGetResponse({
    bool success,
    List<VehicleInfo> vehicles,
  })  : this.success = success ?? false,
        this.vehicles = vehicles ?? [];

  @override
  VehicleInfoGetResponse call({
    bool success,
    List<VehicleInfo> vehicles,
  }) =>
      VehicleInfoGetResponse(
        success: success,
        vehicles: vehicles,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type VehicleInfoGetResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [vehicles]
    // Serialize the length for message field [vehicles]
    writer.writeUint32(vehicles.length);
    vehicles.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  VehicleInfoGetResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type VehicleInfoGetResponse
    final data = VehicleInfoGetResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [vehicles]
    {
      // Deserialize array length for message field [vehicles]
      final len = reader.readInt32();
      data.vehicles =
          List.generate(len, (_) => VehicleInfo.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    vehicles.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/VehicleInfoGetResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '7b33b68f66a6b66456d3bed6fe1dfda0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
mavros_msgs/VehicleInfo[] vehicles



================================================================================
MSG: mavros_msgs/VehicleInfo
# Vehicle Info msg

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
}

class VehicleInfoGet
    extends RosServiceMessage<VehicleInfoGetRequest, VehicleInfoGetResponse> {
  static final $prototype = VehicleInfoGet();
  @override
  VehicleInfoGetRequest get request => VehicleInfoGetRequest.$prototype;
  @override
  VehicleInfoGetResponse get response => VehicleInfoGetResponse.$prototype;
  @override
  String get md5sum => 'd85d85aa4f49fb3764201b7aeeb6cc2b';
  @override
  String get fullType => 'mavros_msgs/VehicleInfoGet';
}
