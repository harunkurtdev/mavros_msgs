// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:23 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Mavlink extends RosMessage<Mavlink> {
  Header header;

  int framing_status;

  int magic;

  int len;

  int incompat_flags;

  int compat_flags;

  int seq;

  int sysid;

  int compid;

  int msgid;

  int checksum;

  List<int> payload64;

  List<int> signature;

  static Mavlink $prototype = Mavlink();
  Mavlink({ 
    Header? header,
    int? framing_status,
    int? magic,
    int? len,
    int? incompat_flags,
    int? compat_flags,
    int? seq,
    int? sysid,
    int? compid,
    int? msgid,
    int? checksum,
    List<int>? payload64,
    List<int>? signature,
  }):
  this.header = header ?? Header(),
  this.framing_status = framing_status ?? 0,
  this.magic = magic ?? 0,
  this.len = len ?? 0,
  this.incompat_flags = incompat_flags ?? 0,
  this.compat_flags = compat_flags ?? 0,
  this.seq = seq ?? 0,
  this.sysid = sysid ?? 0,
  this.compid = compid ?? 0,
  this.msgid = msgid ?? 0,
  this.checksum = checksum ?? 0,
  this.payload64 = payload64 ?? [],
  this.signature = signature ?? [];

  @override
  Mavlink call({ 
    Header? header,
    int? framing_status,
    int? magic,
    int? len,
    int? incompat_flags,
    int? compat_flags,
    int? seq,
    int? sysid,
    int? compid,
    int? msgid,
    int? checksum,
    List<int>? payload64,
    List<int>? signature,
  }) => Mavlink(
  header: header,
  framing_status: framing_status,
  magic: magic,
  len: len,
  incompat_flags: incompat_flags,
  compat_flags: compat_flags,
  seq: seq,
  sysid: sysid,
  compid: compid,
  msgid: msgid,
  checksum: checksum,
  payload64: payload64,
  signature: signature,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Mavlink
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [framing_status]
    writer.writeUint8(framing_status);
    // Serialize message field [magic]
    writer.writeUint8(magic);
    // Serialize message field [len]
    writer.writeUint8(len);
    // Serialize message field [incompat_flags]
    writer.writeUint8(incompat_flags);
    // Serialize message field [compat_flags]
    writer.writeUint8(compat_flags);
    // Serialize message field [seq]
    writer.writeUint8(seq);
    // Serialize message field [sysid]
    writer.writeUint8(sysid);
    // Serialize message field [compid]
    writer.writeUint8(compid);
    // Serialize message field [msgid]
    writer.writeUint32(msgid);
    // Serialize message field [checksum]
    writer.writeUint16(checksum);
    // Serialize message field [payload64]
    writer.writeArray<int>(payload64, (val) => writer.writeUint64(val), specArrayLen: null);
    // Serialize message field [signature]
    writer.writeArray<int>(signature, (val) => writer.writeUint8(val), specArrayLen: null);
  }

  @override
  Mavlink deserialize(ByteDataReader reader) {
    //deserializes a message object of type Mavlink
    final data = Mavlink();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [framing_status]
    data.framing_status = reader.readUint8();
    // Deserialize message field [magic]
    data.magic = reader.readUint8();
    // Deserialize message field [len]
    data.len = reader.readUint8();
    // Deserialize message field [incompat_flags]
    data.incompat_flags = reader.readUint8();
    // Deserialize message field [compat_flags]
    data.compat_flags = reader.readUint8();
    // Deserialize message field [seq]
    data.seq = reader.readUint8();
    // Deserialize message field [sysid]
    data.sysid = reader.readUint8();
    // Deserialize message field [compid]
    data.compid = reader.readUint8();
    // Deserialize message field [msgid]
    data.msgid = reader.readUint32();
    // Deserialize message field [checksum]
    data.checksum = reader.readUint16();
    // Deserialize message field [payload64]
    data.payload64 = reader.readArray<int>(() => reader.readUint64(), arrayLen: null);
    // Deserialize message field [signature]
    data.signature = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 8 * payload64.length;
    length += signature.length;
    return length + 22;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Mavlink';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '41093e1fd0f3eea1da2aa33a177e5ba6';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Mavlink message transport type.
#
# Used to transport mavlink_message_t via ROS topic
#
# :framing_status:
#       Frame decoding status: OK, CRC error, bad Signature (mavlink v2.0)
#       You may simply drop all non valid messages.
#       Used for GCS Bridge to transport unknown messages.
#
# :magic:
#       STX byte, used to determine protocol version v1.0 or v2.0.
#
# Please use mavros_msgs::mavlink::convert() from <mavros_msgs/mavlink_convert.h>
# to convert between ROS and MAVLink message type

# mavlink_framing_t enum
uint8 FRAMING_OK = 1
uint8 FRAMING_BAD_CRC = 2
uint8 FRAMING_BAD_SIGNATURE = 3

# stx values
uint8 MAVLINK_V10 = 254
uint8 MAVLINK_V20 = 253

std_msgs/Header header
uint8 framing_status

uint8 magic		# STX byte
uint8 len
uint8 incompat_flags
uint8 compat_flags
uint8 seq
uint8 sysid
uint8 compid
uint32 msgid		# 24-bit message id
uint16 checksum
uint64[] payload64
uint8[] signature	# optional signature

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
  static const int FRAMING_OK = 1;
  static const int FRAMING_BAD_CRC = 2;
  static const int FRAMING_BAD_SIGNATURE = 3;
  static const int MAVLINK_V10 = 254;
  static const int MAVLINK_V20 = 253;

}

