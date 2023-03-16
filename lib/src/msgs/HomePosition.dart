// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:geometry_msgs/msgs.dart';
// import 'package:geographic_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class HomePosition extends RosMessage<HomePosition> {
  Header header;

  // GeoPoint geo;

  Point position;

  Quaternion orientation;

  Vector3 approach;

  static HomePosition $prototype = HomePosition();
  HomePosition({ 
    Header? header,
    // GeoPoint geo,
    Point? position,
    Quaternion? orientation,
    Vector3? approach,
  }):
  this.header = header ?? Header(),
  // this.geo = geo ?? GeoPoint(),
  this.position = position ?? Point(),
  this.orientation = orientation ?? Quaternion(),
  this.approach = approach ?? Vector3();

  @override
  HomePosition call({ 
    Header? header,
    // GeoPoint geo,
    Point? position,
    Quaternion? orientation,
    Vector3? approach,
  }) => HomePosition(
  header: header,
  // geo: geo,
  position: position,
  orientation: orientation,
  approach: approach,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type HomePosition
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [geo]
    // geo.serialize(writer);
    // Serialize message field [position]
    position.serialize(writer);
    // Serialize message field [orientation]
    orientation.serialize(writer);
    // Serialize message field [approach]
    approach.serialize(writer);
  }

  @override
  HomePosition deserialize(ByteDataReader reader) {
    //deserializes a message object of type HomePosition
    final data = HomePosition();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [geo]
    // data.geo = GeoPoint.$prototype.deserialize(reader);
    // Deserialize message field [position]
    data.position = Point.$prototype.deserialize(reader);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.$prototype.deserialize(reader);
    // Deserialize message field [approach]
    data.approach = Vector3.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 104;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/HomePosition';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c1167922de8c97acdb0ec714c1dba774';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MAVLink message: HOME_POSITION
# https://mavlink.io/en/messages/common.html#HOME_POSITION

std_msgs/Header header

geographic_msgs/GeoPoint geo # geodetic coordinates in WGS-84 datum

geometry_msgs/Point position	# local position
geometry_msgs/Quaternion orientation	# XXX: verify field name (q[4])
geometry_msgs/Vector3 approach	# position of the end of approach vector

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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

