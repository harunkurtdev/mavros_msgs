// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'package:geographic_msgs/msgs.dart';
import 'package:geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class CameraImageCaptured extends RosMessage<CameraImageCaptured> {
  Header header;

  Quaternion orientation;

  GeoPoint geo;

  double relative_alt;

  int image_index;

  int capture_result;

  String file_url;

  static CameraImageCaptured $prototype = CameraImageCaptured();
  CameraImageCaptured({
    Header header,
    Quaternion orientation,
    GeoPoint geo,
    double relative_alt,
    int image_index,
    int capture_result,
    String file_url,
  })  : this.header = header ?? Header(),
        this.orientation = orientation ?? Quaternion(),
        this.geo = geo ?? GeoPoint(),
        this.relative_alt = relative_alt ?? 0.0,
        this.image_index = image_index ?? 0,
        this.capture_result = capture_result ?? 0,
        this.file_url = file_url ?? '';

  @override
  CameraImageCaptured call({
    Header header,
    Quaternion orientation,
    GeoPoint geo,
    double relative_alt,
    int image_index,
    int capture_result,
    String file_url,
  }) =>
      CameraImageCaptured(
        header: header,
        orientation: orientation,
        geo: geo,
        relative_alt: relative_alt,
        image_index: image_index,
        capture_result: capture_result,
        file_url: file_url,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CameraImageCaptured
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [orientation]
    orientation.serialize(writer);
    // Serialize message field [geo]
    geo.serialize(writer);
    // Serialize message field [relative_alt]
    writer.writeFloat32(relative_alt);
    // Serialize message field [image_index]
    writer.writeint32(image_index);
    // Serialize message field [capture_result]
    writer.writeint8(capture_result);
    // Serialize message field [file_url]
    writer.writeString(file_url);
  }

  @override
  CameraImageCaptured deserialize(ByteDataReader reader) {
    //deserializes a message object of type CameraImageCaptured
    final data = CameraImageCaptured();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.$prototype.deserialize(reader);
    // Deserialize message field [geo]
    data.geo = GeoPoint.$prototype.deserialize(reader);
    // Deserialize message field [relative_alt]
    data.relative_alt = reader.readFloat32();
    // Deserialize message field [image_index]
    data.image_index = reader.readint32();
    // Deserialize message field [capture_result]
    data.capture_result = reader.readint8();
    // Deserialize message field [file_url]
    data.file_url = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(file_url).length;
    return length + 69;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/CameraImageCaptured';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '9559d135fc7e5e91d3f1b819ebcd7556';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MAVLink message: CAMERA_IMAGE_CAPTURED
# https://mavlink.io/en/messages/common.html#CAMERA_IMAGE_CAPTURED

std_msgs/Header header

geometry_msgs/Quaternion orientation	# Quaternion of camera orientation (w, x, y, z order, zero-rotation is 1, 0, 0, 0)
geographic_msgs/GeoPoint geo
float32 relative_alt	# mm	Altitude above ground
int32 image_index # Zero based index of this image (i.e. a new image will have index CAMERA_CAPTURE_STATUS.image count -1)
int8 capture_result # Boolean indicating success (1) or failure (0) while capturing this image.
string file_url #URL of image taken. Either local storage or http://foo.jpg if camera provides an HTTP interface.

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
