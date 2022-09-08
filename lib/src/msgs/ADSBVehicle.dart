// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:19 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
//
import 'package:dartros/msg_utils.dart';
//
import 'package:dartros/msg_utils.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';
// export 'package:dartros_msgutils/msg_utils.dart';
//-----------------------------------------------------------

class ADSBVehicle extends RosMessage<ADSBVehicle> {
  Header header;

  int ICAO_address;

  String callsign;

  double latitude;

  double longitude;

  double altitude;

  double heading;

  double hor_velocity;

  double ver_velocity;

  int altitude_type;

  int emitter_type;

  RosTime tslc;

  int flags;

  int squawk;

  static ADSBVehicle $prototype = ADSBVehicle();
  ADSBVehicle({
    Header header,
    int ICAO_address,
    String callsign,
    double latitude,
    double longitude,
    double altitude,
    double heading,
    double hor_velocity,
    double ver_velocity,
    int altitude_type,
    int emitter_type,
    RosTime tslc,
    int flags,
    int squawk,
  })  : this.header = header ?? Header(),
        this.ICAO_address = ICAO_address ?? 0,
        this.callsign = callsign ?? '',
        this.latitude = latitude ?? 0.0,
        this.longitude = longitude ?? 0.0,
        this.altitude = altitude ?? 0.0,
        this.heading = heading ?? 0.0,
        this.hor_velocity = hor_velocity ?? 0.0,
        this.ver_velocity = ver_velocity ?? 0.0,
        this.altitude_type = altitude_type ?? 0,
        this.emitter_type = emitter_type ?? 0,
        this.tslc = tslc ?? RosTime(secs: 0, nsecs: 0),
        this.flags = flags ?? 0,
        this.squawk = squawk ?? 0;

  @override
  ADSBVehicle call({
    Header header,
    int ICAO_address,
    String callsign,
    double latitude,
    double longitude,
    double altitude,
    double heading,
    double hor_velocity,
    double ver_velocity,
    int altitude_type,
    int emitter_type,
    RosTime tslc,
    int flags,
    int squawk,
  }) =>
      ADSBVehicle(
        header: header,
        ICAO_address: ICAO_address,
        callsign: callsign,
        latitude: latitude,
        longitude: longitude,
        altitude: altitude,
        heading: heading,
        hor_velocity: hor_velocity,
        ver_velocity: ver_velocity,
        altitude_type: altitude_type,
        emitter_type: emitter_type,
        tslc: tslc,
        flags: flags,
        squawk: squawk,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ADSBVehicle
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [ICAO_address]
    writer.writeUint32(ICAO_address);
    // Serialize message field [callsign]
    writer.writeString(callsign);
    // Serialize message field [latitude]
    writer.writeFloat64(latitude);
    // Serialize message field [longitude]
    writer.writeFloat64(longitude);
    // Serialize message field [altitude]
    writer.writeFloat32(altitude);
    // Serialize message field [heading]
    writer.writeFloat32(heading);
    // Serialize message field [hor_velocity]
    writer.writeFloat32(hor_velocity);
    // Serialize message field [ver_velocity]
    writer.writeFloat32(ver_velocity);
    // Serialize message field [altitude_type]
    writer.writeUint8(altitude_type);
    // Serialize message field [emitter_type]
    writer.writeUint8(emitter_type);
    // Serialize message field [tslc]
    writer.writeTime(tslc);
    // Serialize message field [flags]
    writer.writeUint16(flags);
    // Serialize message field [squawk]
    writer.writeUint16(squawk);
  }

  @override
  ADSBVehicle deserialize(ByteDataReader reader) {
    //deserializes a message object of type ADSBVehicle
    final data = ADSBVehicle();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [ICAO_address]
    data.ICAO_address = reader.readUint32();
    // Deserialize message field [callsign]
    data.callsign = reader.readString();
    // Deserialize message field [latitude]
    data.latitude = reader.readFloat64();
    // Deserialize message field [longitude]
    data.longitude = reader.readFloat64();
    // Deserialize message field [altitude]
    data.altitude = reader.readFloat32();
    // Deserialize message field [heading]
    data.heading = reader.readFloat32();
    // Deserialize message field [hor_velocity]
    data.hor_velocity = reader.readFloat32();
    // Deserialize message field [ver_velocity]
    data.ver_velocity = reader.readFloat32();
    // Deserialize message field [altitude_type]
    data.altitude_type = reader.readUint8();
    // Deserialize message field [emitter_type]
    data.emitter_type = reader.readUint8();
    // Deserialize message field [tslc]
    data.tslc = reader.readTime();
    // Deserialize message field [flags]
    data.flags = reader.readUint16();
    // Deserialize message field [squawk]
    data.squawk = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(callsign).length;
    return length + 54;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ADSBVehicle';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd532685113a66fcc6ba0e6363ace0244';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# The location and information of an ADSB vehicle
#
# https://mavlink.io/en/messages/common.html#ADSB_VEHICLE

# [[[cog:
# from pymavlink.dialects.v20 import common
#
# def decl_enum(ename, pfx='', bsz=8):
#     enum = sorted(common.enums[ename].items())
#     enum.pop() # remove ENUM_END
#
#     cog.outl("# " + ename)
#     for k, e in enum:
#         sn = e.name[len(ename) + 1:]
#         l = "uint{bsz} {pfx}{sn} = {k}".format(**locals())
#         if e.description:
#             l += ' ' * (40 - len(l)) + ' # ' + e.description
#         cog.outl(l)
#
# decl_enum('ADSB_ALTITUDE_TYPE', 'ALT_')
# decl_enum('ADSB_EMITTER_TYPE', 'EMITTER_')
# decl_enum('ADSB_FLAGS', 'FLAG_', 16)
# ]]]
# ADSB_ALTITUDE_TYPE
uint8 ALT_PRESSURE_QNH = 0               # Altitude reported from a Baro source using QNH reference
uint8 ALT_GEOMETRIC = 1                  # Altitude reported from a GNSS source
# ADSB_EMITTER_TYPE
uint8 EMITTER_NO_INFO = 0
uint8 EMITTER_LIGHT = 1
uint8 EMITTER_SMALL = 2
uint8 EMITTER_LARGE = 3
uint8 EMITTER_HIGH_VORTEX_LARGE = 4
uint8 EMITTER_HEAVY = 5
uint8 EMITTER_HIGHLY_MANUV = 6
uint8 EMITTER_ROTOCRAFT = 7
uint8 EMITTER_UNASSIGNED = 8
uint8 EMITTER_GLIDER = 9
uint8 EMITTER_LIGHTER_AIR = 10
uint8 EMITTER_PARACHUTE = 11
uint8 EMITTER_ULTRA_LIGHT = 12
uint8 EMITTER_UNASSIGNED2 = 13
uint8 EMITTER_UAV = 14
uint8 EMITTER_SPACE = 15
uint8 EMITTER_UNASSGINED3 = 16
uint8 EMITTER_EMERGENCY_SURFACE = 17
uint8 EMITTER_SERVICE_SURFACE = 18
uint8 EMITTER_POINT_OBSTACLE = 19
# ADSB_FLAGS
uint16 FLAG_VALID_COORDS = 1
uint16 FLAG_VALID_ALTITUDE = 2
uint16 FLAG_VALID_HEADING = 4
uint16 FLAG_VALID_VELOCITY = 8
uint16 FLAG_VALID_CALLSIGN = 16
uint16 FLAG_VALID_SQUAWK = 32
uint16 FLAG_SIMULATED = 64
uint16 FLAG_VERTICAL_VELOCITY_VALID = 128
uint16 FLAG_BARO_VALID = 256
uint16 FLAG_SOURCE_UAT = 32768
# [[[end]]] (checksum: a34f2a081739921b6e3e443ed0516d8d)

std_msgs/Header header

uint32 ICAO_address
string callsign

float64 latitude
float64 longitude
float32 altitude 	# AMSL

float32 heading		# deg [0..360)
float32 hor_velocity	# m/s
float32 ver_velocity	# m/s

uint8 altitude_type	# Type from ADSB_ALTITUDE_TYPE enum
uint8 emitter_type	# Type from ADSB_EMITTER_TYPE enum

duration tslc		# Duration from last communication, seconds [0..255]
uint16 flags		# ADSB_FLAGS bit field
uint16 squawk		# Squawk code

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
  static const int ALT_PRESSURE_QNH = 0;
  static const int ALT_GEOMETRIC = 1;
  static const int EMITTER_NO_INFO = 0;
  static const int EMITTER_LIGHT = 1;
  static const int EMITTER_SMALL = 2;
  static const int EMITTER_LARGE = 3;
  static const int EMITTER_HIGH_VORTEX_LARGE = 4;
  static const int EMITTER_HEAVY = 5;
  static const int EMITTER_HIGHLY_MANUV = 6;
  static const int EMITTER_ROTOCRAFT = 7;
  static const int EMITTER_UNASSIGNED = 8;
  static const int EMITTER_GLIDER = 9;
  static const int EMITTER_LIGHTER_AIR = 10;
  static const int EMITTER_PARACHUTE = 11;
  static const int EMITTER_ULTRA_LIGHT = 12;
  static const int EMITTER_UNASSIGNED2 = 13;
  static const int EMITTER_UAV = 14;
  static const int EMITTER_SPACE = 15;
  static const int EMITTER_UNASSGINED3 = 16;
  static const int EMITTER_EMERGENCY_SURFACE = 17;
  static const int EMITTER_SERVICE_SURFACE = 18;
  static const int EMITTER_POINT_OBSTACLE = 19;
  static const int FLAG_VALID_COORDS = 1;
  static const int FLAG_VALID_ALTITUDE = 2;
  static const int FLAG_VALID_HEADING = 4;
  static const int FLAG_VALID_VELOCITY = 8;
  static const int FLAG_VALID_CALLSIGN = 16;
  static const int FLAG_VALID_SQUAWK = 32;
  static const int FLAG_SIMULATED = 64;
  static const int FLAG_VERTICAL_VELOCITY_VALID = 128;
  static const int FLAG_BARO_VALID = 256;
  static const int FLAG_SOURCE_UAT = 32768;
}
