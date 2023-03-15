// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:20 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';

import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class CamIMUStamp extends RosMessage<CamIMUStamp> {
  RosTime frame_stamp;

  int frame_seq_id;

  static CamIMUStamp $prototype = CamIMUStamp();
  CamIMUStamp({
    RosTime? frame_stamp,
    int? frame_seq_id,
  })  : this.frame_stamp = frame_stamp ?? RosTime(secs: 0, nsecs: 0),
        this.frame_seq_id = frame_seq_id ?? 0;

  @override
  CamIMUStamp call({
    RosTime? frame_stamp,
    int? frame_seq_id,
  }) =>
      CamIMUStamp(
        frame_stamp: frame_stamp,
        frame_seq_id: frame_seq_id,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CamIMUStamp
    // Serialize message field [frame_stamp]
    writer.writeTime(frame_stamp);
    // Serialize message field [frame_seq_id]
    writer.writeInt32(frame_seq_id);
  }

  @override
  CamIMUStamp deserialize(ByteDataReader reader) {
    //deserializes a message object of type CamIMUStamp
    final data = CamIMUStamp();
    // Deserialize message field [frame_stamp]
    data.frame_stamp = reader.readTime();
    // Deserialize message field [frame_seq_id]
    data.frame_seq_id = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    return 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/CamIMUStamp';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ac22af9031671dd528a56f12d0986660';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# IMU-Camera synchronisation data

time frame_stamp		# Timestamp when the camera was triggered
int32 frame_seq_id		# Sequence number of the image frame

''';
  }
}
