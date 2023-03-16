// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:25 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class RadioStatus extends RosMessage<RadioStatus> {
  Header header;

  int rssi;

  int remrssi;

  int txbuf;

  int noise;

  int remnoise;

  int rxerrors;

  int fixed;

  double rssi_dbm;

  double remrssi_dbm;

  static RadioStatus $prototype = RadioStatus();
  RadioStatus({ 
    Header? header,
    int? rssi,
    int? remrssi,
    int? txbuf,
    int? noise,
    int? remnoise,
    int? rxerrors,
    int? fixed,
    double? rssi_dbm,
    double? remrssi_dbm,
  }):
  this.header = header ?? Header(),
  this.rssi = rssi ?? 0,
  this.remrssi = remrssi ?? 0,
  this.txbuf = txbuf ?? 0,
  this.noise = noise ?? 0,
  this.remnoise = remnoise ?? 0,
  this.rxerrors = rxerrors ?? 0,
  this.fixed = fixed ?? 0,
  this.rssi_dbm = rssi_dbm ?? 0.0,
  this.remrssi_dbm = remrssi_dbm ?? 0.0;

  @override
  RadioStatus call({ 
    Header? header,
    int? rssi,
    int? remrssi,
    int? txbuf,
    int? noise,
    int? remnoise,
    int? rxerrors,
    int? fixed,
    double? rssi_dbm,
    double? remrssi_dbm,
  }) => RadioStatus(
  header: header,
  rssi: rssi,
  remrssi: remrssi,
  txbuf: txbuf,
  noise: noise,
  remnoise: remnoise,
  rxerrors: rxerrors,
  fixed: fixed,
  rssi_dbm: rssi_dbm,
  remrssi_dbm: remrssi_dbm,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RadioStatus
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [rssi]
    writer.writeUint8(rssi);
    // Serialize message field [remrssi]
    writer.writeUint8(remrssi);
    // Serialize message field [txbuf]
    writer.writeUint8(txbuf);
    // Serialize message field [noise]
    writer.writeUint8(noise);
    // Serialize message field [remnoise]
    writer.writeUint8(remnoise);
    // Serialize message field [rxerrors]
    writer.writeUint16(rxerrors);
    // Serialize message field [fixed]
    writer.writeUint16(fixed);
    // Serialize message field [rssi_dbm]
    writer.writeFloat32(rssi_dbm);
    // Serialize message field [remrssi_dbm]
    writer.writeFloat32(remrssi_dbm);
  }

  @override
  RadioStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type RadioStatus
    final data = RadioStatus();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [rssi]
    data.rssi = reader.readUint8();
    // Deserialize message field [remrssi]
    data.remrssi = reader.readUint8();
    // Deserialize message field [txbuf]
    data.txbuf = reader.readUint8();
    // Deserialize message field [noise]
    data.noise = reader.readUint8();
    // Deserialize message field [remnoise]
    data.remnoise = reader.readUint8();
    // Deserialize message field [rxerrors]
    data.rxerrors = reader.readUint16();
    // Deserialize message field [fixed]
    data.fixed = reader.readUint16();
    // Deserialize message field [rssi_dbm]
    data.rssi_dbm = reader.readFloat32();
    // Deserialize message field [remrssi_dbm]
    data.remrssi_dbm = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 17;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/RadioStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '04e4a879bb2687140da50a1a821e2190';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# RADIO_STATUS message

std_msgs/Header header

# message data
uint8 rssi
uint8 remrssi
uint8 txbuf
uint8 noise
uint8 remnoise
uint16 rxerrors
uint16 fixed

# calculated
float32 rssi_dbm
float32 remrssi_dbm

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

