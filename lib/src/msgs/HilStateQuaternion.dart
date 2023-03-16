// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';
// import 'package:geographic_msgs/msgs.dart';
import 'package:geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class HilStateQuaternion extends RosMessage<HilStateQuaternion> {
  Header header;

  Quaternion orientation;

  Vector3 angular_velocity;

  Vector3 linear_acceleration;

  Vector3 linear_velocity;

  // GeoPoint geo;

  double ind_airspeed;

  double true_airspeed;

  static HilStateQuaternion $prototype = HilStateQuaternion();
  HilStateQuaternion({ 
    Header? header,
    Quaternion? orientation,
    Vector3? angular_velocity,
    Vector3? linear_acceleration,
    Vector3? linear_velocity,
    // GeoPoint geo,
    double? ind_airspeed,
    double? true_airspeed,
  }):
  this.header = header ?? Header(),
  this.orientation = orientation ?? Quaternion(),
  this.angular_velocity = angular_velocity ?? Vector3(),
  this.linear_acceleration = linear_acceleration ?? Vector3(),
  this.linear_velocity = linear_velocity ?? Vector3(),
  // this.geo = geo ?? GeoPoint(),
  this.ind_airspeed = ind_airspeed ?? 0.0,
  this.true_airspeed = true_airspeed ?? 0.0;

  @override
  HilStateQuaternion call({ 
    Header? header,
    Quaternion? orientation,
    Vector3? angular_velocity,
    Vector3? linear_acceleration,
    Vector3? linear_velocity,
    // GeoPoint geo,
    double? ind_airspeed,
    double? true_airspeed,
  }) => HilStateQuaternion(
  header: header,
  orientation: orientation,
  angular_velocity: angular_velocity,
  linear_acceleration: linear_acceleration,
  linear_velocity: linear_velocity,
  // geo: geo,
  ind_airspeed: ind_airspeed,
  true_airspeed: true_airspeed,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type HilStateQuaternion
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [orientation]
    orientation.serialize(writer);
    // Serialize message field [angular_velocity]
    angular_velocity.serialize(writer);
    // Serialize message field [linear_acceleration]
    linear_acceleration.serialize(writer);
    // Serialize message field [linear_velocity]
    linear_velocity.serialize(writer);
    // Serialize message field [geo]
    // geo.serialize(writer);
    // Serialize message field [ind_airspeed]
    writer.writeFloat32(ind_airspeed);
    // Serialize message field [true_airspeed]
    writer.writeFloat32(true_airspeed);
  }

  @override
  HilStateQuaternion deserialize(ByteDataReader reader) {
    //deserializes a message object of type HilStateQuaternion
    final data = HilStateQuaternion();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.$prototype.deserialize(reader);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [geo]
    // data.geo = GeoPoint.$prototype.deserialize(reader);
    // Deserialize message field [ind_airspeed]
    data.ind_airspeed = reader.readFloat32();
    // Deserialize message field [true_airspeed]
    data.true_airspeed = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 136;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/HilStateQuaternion';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c858c0f05d4ab30256be7c53edee8e3c';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# HilStateQuaternion.msg
#
# ROS representation of MAVLink HIL_STATE_QUATERNION
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_STATE_QUATERNION

std_msgs/Header header

geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 linear_velocity
geographic_msgs/GeoPoint geo
float32 ind_airspeed
float32 true_airspeed

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

