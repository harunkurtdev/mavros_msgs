// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class GPSINPUT extends RosMessage<GPSINPUT> {
  Header header;

  int fix_type;

  int gps_id;

  int ignore_flags;

  int time_week_ms;

  int time_week;

  int lat;

  int lon;

  double alt;

  double hdop;

  double vdop;

  double vn;

  double ve;

  double vd;

  double speed_accuracy;

  double horiz_accuracy;

  double vert_accuracy;

  int satellites_visible;

  int yaw;

  static GPSINPUT $prototype = GPSINPUT();
  GPSINPUT({
    Header header,
    int fix_type,
    int gps_id,
    int ignore_flags,
    int time_week_ms,
    int time_week,
    int lat,
    int lon,
    double alt,
    double hdop,
    double vdop,
    double vn,
    double ve,
    double vd,
    double speed_accuracy,
    double horiz_accuracy,
    double vert_accuracy,
    int satellites_visible,
    int yaw,
  })  : this.header = header ?? Header(),
        this.fix_type = fix_type ?? 0,
        this.gps_id = gps_id ?? 0,
        this.ignore_flags = ignore_flags ?? 0,
        this.time_week_ms = time_week_ms ?? 0,
        this.time_week = time_week ?? 0,
        this.lat = lat ?? 0,
        this.lon = lon ?? 0,
        this.alt = alt ?? 0.0,
        this.hdop = hdop ?? 0.0,
        this.vdop = vdop ?? 0.0,
        this.vn = vn ?? 0.0,
        this.ve = ve ?? 0.0,
        this.vd = vd ?? 0.0,
        this.speed_accuracy = speed_accuracy ?? 0.0,
        this.horiz_accuracy = horiz_accuracy ?? 0.0,
        this.vert_accuracy = vert_accuracy ?? 0.0,
        this.satellites_visible = satellites_visible ?? 0,
        this.yaw = yaw ?? 0;

  @override
  GPSINPUT call({
    Header header,
    int fix_type,
    int gps_id,
    int ignore_flags,
    int time_week_ms,
    int time_week,
    int lat,
    int lon,
    double alt,
    double hdop,
    double vdop,
    double vn,
    double ve,
    double vd,
    double speed_accuracy,
    double horiz_accuracy,
    double vert_accuracy,
    int satellites_visible,
    int yaw,
  }) =>
      GPSINPUT(
        header: header,
        fix_type: fix_type,
        gps_id: gps_id,
        ignore_flags: ignore_flags,
        time_week_ms: time_week_ms,
        time_week: time_week,
        lat: lat,
        lon: lon,
        alt: alt,
        hdop: hdop,
        vdop: vdop,
        vn: vn,
        ve: ve,
        vd: vd,
        speed_accuracy: speed_accuracy,
        horiz_accuracy: horiz_accuracy,
        vert_accuracy: vert_accuracy,
        satellites_visible: satellites_visible,
        yaw: yaw,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GPSINPUT
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [fix_type]
    writer.writeUint8(fix_type);
    // Serialize message field [gps_id]
    writer.writeUint8(gps_id);
    // Serialize message field [ignore_flags]
    writer.writeUint16(ignore_flags);
    // Serialize message field [time_week_ms]
    writer.writeUint32(time_week_ms);
    // Serialize message field [time_week]
    writer.writeUint16(time_week);
    // Serialize message field [lat]
    writer.writeint32(lat);
    // Serialize message field [lon]
    writer.writeint32(lon);
    // Serialize message field [alt]
    writer.writeFloat32(alt);
    // Serialize message field [hdop]
    writer.writeFloat32(hdop);
    // Serialize message field [vdop]
    writer.writeFloat32(vdop);
    // Serialize message field [vn]
    writer.writeFloat32(vn);
    // Serialize message field [ve]
    writer.writeFloat32(ve);
    // Serialize message field [vd]
    writer.writeFloat32(vd);
    // Serialize message field [speed_accuracy]
    writer.writeFloat32(speed_accuracy);
    // Serialize message field [horiz_accuracy]
    writer.writeFloat32(horiz_accuracy);
    // Serialize message field [vert_accuracy]
    writer.writeFloat32(vert_accuracy);
    // Serialize message field [satellites_visible]
    writer.writeUint8(satellites_visible);
    // Serialize message field [yaw]
    writer.writeUint16(yaw);
  }

  @override
  GPSINPUT deserialize(ByteDataReader reader) {
    //deserializes a message object of type GPSINPUT
    final data = GPSINPUT();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [fix_type]
    data.fix_type = reader.readUint8();
    // Deserialize message field [gps_id]
    data.gps_id = reader.readUint8();
    // Deserialize message field [ignore_flags]
    data.ignore_flags = reader.readUint16();
    // Deserialize message field [time_week_ms]
    data.time_week_ms = reader.readUint32();
    // Deserialize message field [time_week]
    data.time_week = reader.readUint16();
    // Deserialize message field [lat]
    data.lat = reader.readint32();
    // Deserialize message field [lon]
    data.lon = reader.readint32();
    // Deserialize message field [alt]
    data.alt = reader.readFloat32();
    // Deserialize message field [hdop]
    data.hdop = reader.readFloat32();
    // Deserialize message field [vdop]
    data.vdop = reader.readFloat32();
    // Deserialize message field [vn]
    data.vn = reader.readFloat32();
    // Deserialize message field [ve]
    data.ve = reader.readFloat32();
    // Deserialize message field [vd]
    data.vd = reader.readFloat32();
    // Deserialize message field [speed_accuracy]
    data.speed_accuracy = reader.readFloat32();
    // Deserialize message field [horiz_accuracy]
    data.horiz_accuracy = reader.readFloat32();
    // Deserialize message field [vert_accuracy]
    data.vert_accuracy = reader.readFloat32();
    // Deserialize message field [satellites_visible]
    data.satellites_visible = reader.readUint8();
    // Deserialize message field [yaw]
    data.yaw = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 57;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/GPSINPUT';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '928ef4ffec7b9af7c6e4748f0542b6a0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FCU GPS INPUT message for the gps_input plugin
# <a href="https://mavlink.io/en/messages/common.html#GPS_INPUT">mavlink GPS_INPUT message</a>.

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

uint8 gps_id        # ID of the GPS for multiple GPS inputs
uint16 ignore_flags # Bitmap indicating which GPS input flags fields to ignore. All other fields must be provided.

uint32 time_week_ms # [ms] GPS time (from start of GPS week)
uint16 time_week    # GPS week number
int32 lat           # [degE7] Latitude (WGS84, EGM96 ellipsoid)
int32 lon           # [degE7] Longitude (WGS84, EGM96 ellipsoid)
float32 alt         # [m] Altitude (MSL). Positive for up.

float32 hdop        # [m] GPS HDOP horizontal dilution of position.
float32 vdop        # [m] GPS VDOP vertical dilution of position
float32 vn          # [m/s] GPS velocity in NORTH direction in earth-fixed NED frame
float32 ve          # [m/s] GPS velocity in EAST direction in earth-fixed NED frame
float32 vd          # [m/s] GPS velocity in DOWN direction in earth-fixed NED frame

float32 speed_accuracy # [m/s] GPS speed accuracy
float32 horiz_accuracy # [m] GPS horizontal accuracy
float32 vert_accuracy  # [m] GPS vertical accuracy

uint8 satellites_visible # Number of satellites visible. If unknown, set to 255
uint16 yaw          # [cdeg] Yaw in earth frame from north.

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
