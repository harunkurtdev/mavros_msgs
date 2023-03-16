// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class GPSRAW extends RosMessage<GPSRAW> {
  Header header;

  int fix_type;

  int lat;

  int lon;

  int alt;

  int eph;

  int epv;

  int vel;

  int cog;

  int satellites_visible;

  int alt_ellipsoid;

  int h_acc;

  int v_acc;

  int vel_acc;

  int hdg_acc;

  int yaw;

  int dgps_numch;

  int dgps_age;

  static GPSRAW $prototype = GPSRAW();
  GPSRAW({ 
    Header? header,
    int? fix_type,
    int? lat,
    int? lon,
    int? alt,
    int? eph,
    int? epv,
    int? vel,
    int? cog,
    int? satellites_visible,
    int? alt_ellipsoid,
    int? h_acc,
    int? v_acc,
    int? vel_acc,
    int? hdg_acc,
    int? yaw,
    int? dgps_numch,
    int? dgps_age,
  }):
  this.header = header ?? Header(),
  this.fix_type = fix_type ?? 0,
  this.lat = lat ?? 0,
  this.lon = lon ?? 0,
  this.alt = alt ?? 0,
  this.eph = eph ?? 0,
  this.epv = epv ?? 0,
  this.vel = vel ?? 0,
  this.cog = cog ?? 0,
  this.satellites_visible = satellites_visible ?? 0,
  this.alt_ellipsoid = alt_ellipsoid ?? 0,
  this.h_acc = h_acc ?? 0,
  this.v_acc = v_acc ?? 0,
  this.vel_acc = vel_acc ?? 0,
  this.hdg_acc = hdg_acc ?? 0,
  this.yaw = yaw ?? 0,
  this.dgps_numch = dgps_numch ?? 0,
  this.dgps_age = dgps_age ?? 0;

  @override
  GPSRAW call({ 
    Header? header,
    int? fix_type,
    int? lat,
    int? lon,
    int? alt,
    int? eph,
    int? epv,
    int? vel,
    int? cog,
    int? satellites_visible,
    int? alt_ellipsoid,
    int? h_acc,
    int? v_acc,
    int? vel_acc,
    int? hdg_acc,
    int? yaw,
    int? dgps_numch,
    int? dgps_age,
  }) => GPSRAW(
  header: header,
  fix_type: fix_type,
  lat: lat,
  lon: lon,
  alt: alt,
  eph: eph,
  epv: epv,
  vel: vel,
  cog: cog,
  satellites_visible: satellites_visible,
  alt_ellipsoid: alt_ellipsoid,
  h_acc: h_acc,
  v_acc: v_acc,
  vel_acc: vel_acc,
  hdg_acc: hdg_acc,
  yaw: yaw,
  dgps_numch: dgps_numch,
  dgps_age: dgps_age,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GPSRAW
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [fix_type]
    writer.writeUint8(fix_type);
    // Serialize message field [lat]
    writer.writeInt32(lat);
    // Serialize message field [lon]
    writer.writeInt32(lon);
    // Serialize message field [alt]
    writer.writeInt32(alt);
    // Serialize message field [eph]
    writer.writeUint16(eph);
    // Serialize message field [epv]
    writer.writeUint16(epv);
    // Serialize message field [vel]
    writer.writeUint16(vel);
    // Serialize message field [cog]
    writer.writeUint16(cog);
    // Serialize message field [satellites_visible]
    writer.writeUint8(satellites_visible);
    // Serialize message field [alt_ellipsoid]
    writer.writeInt32(alt_ellipsoid);
    // Serialize message field [h_acc]
    writer.writeUint32(h_acc);
    // Serialize message field [v_acc]
    writer.writeUint32(v_acc);
    // Serialize message field [vel_acc]
    writer.writeUint32(vel_acc);
    // Serialize message field [hdg_acc]
    writer.writeInt32(hdg_acc);
    // Serialize message field [yaw]
    writer.writeUint16(yaw);
    // Serialize message field [dgps_numch]
    writer.writeUint8(dgps_numch);
    // Serialize message field [dgps_age]
    writer.writeUint32(dgps_age);
  }

  @override
  GPSRAW deserialize(ByteDataReader reader) {
    //deserializes a message object of type GPSRAW
    final data = GPSRAW();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [fix_type]
    data.fix_type = reader.readUint8();
    // Deserialize message field [lat]
    data.lat = reader.readInt32();
    // Deserialize message field [lon]
    data.lon = reader.readInt32();
    // Deserialize message field [alt]
    data.alt = reader.readInt32();
    // Deserialize message field [eph]
    data.eph = reader.readUint16();
    // Deserialize message field [epv]
    data.epv = reader.readUint16();
    // Deserialize message field [vel]
    data.vel = reader.readUint16();
    // Deserialize message field [cog]
    data.cog = reader.readUint16();
    // Deserialize message field [satellites_visible]
    data.satellites_visible = reader.readUint8();
    // Deserialize message field [alt_ellipsoid]
    data.alt_ellipsoid = reader.readInt32();
    // Deserialize message field [h_acc]
    data.h_acc = reader.readUint32();
    // Deserialize message field [v_acc]
    data.v_acc = reader.readUint32();
    // Deserialize message field [vel_acc]
    data.vel_acc = reader.readUint32();
    // Deserialize message field [hdg_acc]
    data.hdg_acc = reader.readInt32();
    // Deserialize message field [yaw]
    data.yaw = reader.readUint16();
    // Deserialize message field [dgps_numch]
    data.dgps_numch = reader.readUint8();
    // Deserialize message field [dgps_age]
    data.dgps_age = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 49;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/GPSRAW';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '58a85dbc1516a2d4302f256cca54bbbf';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FCU GPS RAW message for the gps_status plugin
# A merge of <a href="https://mavlink.io/en/messages/common.html#GPS_RAW_INT">mavlink GPS_RAW_INT</a> and 
# <a href="https://mavlink.io/en/messages/common.html#GPS2_RAW">mavlink GPS2_RAW</a> messages.

std_msgs/Header header
## GPS_FIX_TYPE enum
uint8 GPS_FIX_TYPE_NO_GPS     = 0    # No GPS connected
uint8 GPS_FIX_TYPE_NO_FIX     = 1    # No position information, GPS is connected
uint8 GPS_FIX_TYPE_2D_FIX     = 2    # 2D position
uint8 GPS_FIX_TYPE_3D_FIX     = 3    # 3D position
uint8 GPS_FIX_TYPE_DGPS       = 4    # DGPS/SBAS aided 3D position
uint8 GPS_FIX_TYPE_RTK_FLOATR = 5    # TK float, 3D position
uint8 GPS_FIX_TYPE_RTK_FIXEDR = 6    # TK Fixed, 3D position
uint8 GPS_FIX_TYPE_STATIC     = 7    # Static fixed, typically used for base stations
uint8 GPS_FIX_TYPE_PPP        = 8    # PPP, 3D position
uint8 fix_type      # [GPS_FIX_TYPE] GPS fix type

int32 lat           # [degE7] Latitude (WGS84, EGM96 ellipsoid)
int32 lon           # [degE7] Longitude (WGS84, EGM96 ellipsoid)
int32 alt           # [mm] Altitude (MSL). Positive for up. Note that virtually all GPS modules provide the MSL altitude in addition to the WGS84 altitude.
uint16 eph          # GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX
uint16 epv          # GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX
uint16 vel          # [cm/s] GPS ground speed. If unknown, set to: UINT16_MAX
uint16 cog          # [cdeg] Course over ground (NOT heading, but direction of movement), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
uint8 satellites_visible # Number of satellites visible. If unknown, set to 255

# -*- only available with MAVLink v2.0 and GPS_RAW_INT messages -*-
int32 alt_ellipsoid # [mm] Altitude (above WGS84, EGM96 ellipsoid). Positive for up.
uint32 h_acc        # [mm] Position uncertainty. Positive for up.
uint32 v_acc        # [mm] Altitude uncertainty. Positive for up.
uint32 vel_acc      # [mm] Speed uncertainty. Positive for up.
int32  hdg_acc      # [degE5] Heading / track uncertainty
uint16 yaw          # [cdeg] Yaw in earth frame from north.

# -*- only available with MAVLink v2.0 and GPS2_RAW messages -*-
uint8 dgps_numch    # Number of DGPS satellites
uint32 dgps_age     # [ms] Age of DGPS info

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
  static const int GPS_FIX_TYPE_NO_GPS = 0;
  static const int GPS_FIX_TYPE_NO_FIX = 1;
  static const int GPS_FIX_TYPE_2D_FIX = 2;
  static const int GPS_FIX_TYPE_3D_FIX = 3;
  static const int GPS_FIX_TYPE_DGPS = 4;
  static const int GPS_FIX_TYPE_RTK_FLOATR = 5;
  static const int GPS_FIX_TYPE_RTK_FIXEDR = 6;
  static const int GPS_FIX_TYPE_STATIC = 7;
  static const int GPS_FIX_TYPE_PPP = 8;

}

