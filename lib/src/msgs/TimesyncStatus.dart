// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class TimesyncStatus extends RosMessage<TimesyncStatus> {
  Header header;

  int remote_timestamp_ns;

  int observed_offset_ns;

  int estimated_offset_ns;

  double round_trip_time_ms;

  static TimesyncStatus $prototype = TimesyncStatus();
  TimesyncStatus({ 
    Header? header,
    int? remote_timestamp_ns,
    int? observed_offset_ns,
    int? estimated_offset_ns,
    double? round_trip_time_ms,
  }):
  this.header = header ?? Header(),
  this.remote_timestamp_ns = remote_timestamp_ns ?? 0,
  this.observed_offset_ns = observed_offset_ns ?? 0,
  this.estimated_offset_ns = estimated_offset_ns ?? 0,
  this.round_trip_time_ms = round_trip_time_ms ?? 0.0;

  @override
  TimesyncStatus call({ 
    Header? header,
    int? remote_timestamp_ns,
    int? observed_offset_ns,
    int? estimated_offset_ns,
    double? round_trip_time_ms,
  }) => TimesyncStatus(
  header: header,
  remote_timestamp_ns: remote_timestamp_ns,
  observed_offset_ns: observed_offset_ns,
  estimated_offset_ns: estimated_offset_ns,
  round_trip_time_ms: round_trip_time_ms,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TimesyncStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [remote_timestamp_ns]
    writer.writeUint64(remote_timestamp_ns);
    // Serialize message field [observed_offset_ns]
    writer.writeInt64(observed_offset_ns);
    // Serialize message field [estimated_offset_ns]
    writer.writeInt64(estimated_offset_ns);
    // Serialize message field [round_trip_time_ms]
    writer.writeFloat32(round_trip_time_ms);
  }

  @override
  TimesyncStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type TimesyncStatus
    final data = TimesyncStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [remote_timestamp_ns]
    data.remote_timestamp_ns = reader.readUint64();
    // Deserialize message field [observed_offset_ns]
    data.observed_offset_ns = reader.readInt64();
    // Deserialize message field [estimated_offset_ns]
    data.estimated_offset_ns = reader.readInt64();
    // Deserialize message field [round_trip_time_ms]
    data.round_trip_time_ms = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 28;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/TimesyncStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '021ec8044e747bea518b441f374ba64b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Status of the MAVLink time synchroniser

std_msgs/Header header
uint64 remote_timestamp_ns		# remote system timestamp (nanoseconds)
int64 observed_offset_ns		# raw time offset directly observed from this timesync packet (nanoseconds)
int64 estimated_offset_ns		# smoothed time offset between companion system and Mavros (nanoseconds)
float32 round_trip_time_ms		# round trip time of this timesync packet (milliseconds)
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

