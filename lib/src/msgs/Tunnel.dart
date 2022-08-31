// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:26 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class Tunnel extends RosMessage<Tunnel> {
  int target_system;

  int target_component;

  int payload_type;

  int payload_length;

  List<int> payload;

  static Tunnel $prototype = Tunnel();
  Tunnel({ 
    int target_system,
    int target_component,
    int payload_type,
    int payload_length,
    List<int> payload,
  }):
  this.target_system = target_system ?? 0,
  this.target_component = target_component ?? 0,
  this.payload_type = payload_type ?? 0,
  this.payload_length = payload_length ?? 0,
  this.payload = payload ?? List.generate(128, (_) => 0);

  @override
  Tunnel call({ 
    int target_system,
    int target_component,
    int payload_type,
    int payload_length,
    List<int> payload,
  }) => Tunnel(
  target_system: target_system,
  target_component: target_component,
  payload_type: payload_type,
  payload_length: payload_length,
  payload: payload,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Tunnel
    // Serialize message field [target_system]
    writer.writeUint8(target_system);
    // Serialize message field [target_component]
    writer.writeUint8(target_component);
    // Serialize message field [payload_type]
    writer.writeUint16(payload_type);
    // Serialize message field [payload_length]
    writer.writeUint8(payload_length);
    // Check that the constant length array field [payload] has the right length
    if (payload.length != 128) {
      throw Exception('Unable to serialize array field payload - length must be 128');
    }
    // Serialize message field [payload]
    writer.writeArray<int>(payload, (val) => writer.writeUint8(val), specArrayLen: 128);
  }

  @override
  Tunnel deserialize(ByteDataReader reader) {
    //deserializes a message object of type Tunnel
    final data = Tunnel();
    // Deserialize message field [target_system]
    data.target_system = reader.readUint8();
    // Deserialize message field [target_component]
    data.target_component = reader.readUint8();
    // Deserialize message field [payload_type]
    data.payload_type = reader.readUint16();
    // Deserialize message field [payload_length]
    data.payload_length = reader.readUint8();
    // Deserialize message field [payload]
    data.payload = reader.readArray<int>(() => reader.readUint8(), arrayLen: 128);
    return data;
  }

  int getMessageSize() {
    return 133;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/Tunnel';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6d8c215067d3b319bbb219c37c1ebc5d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Tunnel
#
# https://mavlink.io/en/messages/common.html#TUNNEL

uint8 target_system
uint8 target_component
uint16 payload_type
uint8 payload_length
uint8[128] payload

# [[[cog:
# from pymavlink.dialects.v20 import common
#
# def decl_enum(ename, pfx='', bsz=8):
#     enum = sorted(common.enums[ename].items())
#     enum.pop() # remove ENUM_END
#
#     cog.outl("# " + ename)
#     for k, e in enum:
#         sn = e.name[len(ename) + 1:]
#         l = "uint{bsz} {pfx}{sn} = {k}".format(**locals())
#         if e.description:
#             l += ' ' * (40 - len(l)) + ' # ' + e.description
#         cog.outl(l)
#
# decl_enum('MAV_TUNNEL_PAYLOAD_TYPE', 'PAYLOAD_TYPE_', 16)
# ]]]
# MAV_TUNNEL_PAYLOAD_TYPE
uint16 PAYLOAD_TYPE_UNKNOWN = 0          # Encoding of payload unknown.
uint16 PAYLOAD_TYPE_STORM32_RESERVED0 = 200 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED1 = 201 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED2 = 202 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED3 = 203 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED4 = 204 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED5 = 205 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED6 = 206 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED7 = 207 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED8 = 208 # Registered for STorM32 gimbal controller.
uint16 PAYLOAD_TYPE_STORM32_RESERVED9 = 209 # Registered for STorM32 gimbal controller.
# [[[end]]] (checksum: 3327b212af02c2d47d940cd6de049624)

''';
  }

// Constants for message
  static const int PAYLOAD_TYPE_UNKNOWN = 0;
  static const int PAYLOAD_TYPE_STORM32_RESERVED0 = 200;
  static const int PAYLOAD_TYPE_STORM32_RESERVED1 = 201;
  static const int PAYLOAD_TYPE_STORM32_RESERVED2 = 202;
  static const int PAYLOAD_TYPE_STORM32_RESERVED3 = 203;
  static const int PAYLOAD_TYPE_STORM32_RESERVED4 = 204;
  static const int PAYLOAD_TYPE_STORM32_RESERVED5 = 205;
  static const int PAYLOAD_TYPE_STORM32_RESERVED6 = 206;
  static const int PAYLOAD_TYPE_STORM32_RESERVED7 = 207;
  static const int PAYLOAD_TYPE_STORM32_RESERVED8 = 208;
  static const int PAYLOAD_TYPE_STORM32_RESERVED9 = 209;

}

