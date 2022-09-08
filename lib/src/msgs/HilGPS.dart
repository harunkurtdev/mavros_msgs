// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:geographic_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class HilGPS extends RosMessage<HilGPS> {
  Header header;

  int fix_type;

  GeoPoint geo;

  int eph;

  int epv;

  int vel;

  int vn;

  int ve;

  int vd;

  int cog;

  int satellites_visible;

  static HilGPS $prototype = HilGPS();
  HilGPS({
    Header header,
    int fix_type,
    GeoPoint geo,
    int eph,
    int epv,
    int vel,
    int vn,
    int ve,
    int vd,
    int cog,
    int satellites_visible,
  })  : this.header = header ?? Header(),
        this.fix_type = fix_type ?? 0,
        this.geo = geo ?? GeoPoint(),
        this.eph = eph ?? 0,
        this.epv = epv ?? 0,
        this.vel = vel ?? 0,
        this.vn = vn ?? 0,
        this.ve = ve ?? 0,
        this.vd = vd ?? 0,
        this.cog = cog ?? 0,
        this.satellites_visible = satellites_visible ?? 0;

  @override
  HilGPS call({
    Header header,
    int fix_type,
    GeoPoint geo,
    int eph,
    int epv,
    int vel,
    int vn,
    int ve,
    int vd,
    int cog,
    int satellites_visible,
  }) =>
      HilGPS(
        header: header,
        fix_type: fix_type,
        geo: geo,
        eph: eph,
        epv: epv,
        vel: vel,
        vn: vn,
        ve: ve,
        vd: vd,
        cog: cog,
        satellites_visible: satellites_visible,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type HilGPS
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [fix_type]
    writer.writeUint8(fix_type);
    // Serialize message field [geo]
    geo.serialize(writer);
    // Serialize message field [eph]
    writer.writeUint16(eph);
    // Serialize message field [epv]
    writer.writeUint16(epv);
    // Serialize message field [vel]
    writer.writeUint16(vel);
    // Serialize message field [vn]
    writer.writeint16(vn);
    // Serialize message field [ve]
    writer.writeint16(ve);
    // Serialize message field [vd]
    writer.writeint16(vd);
    // Serialize message field [cog]
    writer.writeUint16(cog);
    // Serialize message field [satellites_visible]
    writer.writeUint8(satellites_visible);
  }

  @override
  HilGPS deserialize(ByteDataReader reader) {
    //deserializes a message object of type HilGPS
    final data = HilGPS();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [fix_type]
    data.fix_type = reader.readUint8();
    // Deserialize message field [geo]
    data.geo = GeoPoint.$prototype.deserialize(reader);
    // Deserialize message field [eph]
    data.eph = reader.readUint16();
    // Deserialize message field [epv]
    data.epv = reader.readUint16();
    // Deserialize message field [vel]
    data.vel = reader.readUint16();
    // Deserialize message field [vn]
    data.vn = reader.readint16();
    // Deserialize message field [ve]
    data.ve = reader.readint16();
    // Deserialize message field [vd]
    data.vd = reader.readint16();
    // Deserialize message field [cog]
    data.cog = reader.readUint16();
    // Deserialize message field [satellites_visible]
    data.satellites_visible = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 40;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/HilGPS';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '313b3baf2319db196fa18376a4900a7b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# HilControls.msg
#
# ROS representation of MAVLink HIL_GPS
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_GPS

std_msgs/Header header
uint8 fix_type
geographic_msgs/GeoPoint geo
uint16 eph
uint16 epv
uint16 vel
int16 vn
int16 ve
int16 vd
uint16 cog
uint8 satellites_visible

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
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

''';
  }
}
