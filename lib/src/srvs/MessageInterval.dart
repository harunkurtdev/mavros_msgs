// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class MessageintervalRequest extends RosMessage<MessageintervalRequest> {
  int message_id;

  double message_rate;

  static MessageintervalRequest $prototype = MessageintervalRequest();
  MessageintervalRequest({
    int message_id,
    double message_rate,
  })  : this.message_id = message_id ?? 0,
        this.message_rate = message_rate ?? 0.0;

  @override
  MessageintervalRequest call({
    int message_id,
    double message_rate,
  }) =>
      MessageintervalRequest(
        message_id: message_id,
        message_rate: message_rate,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MessageintervalRequest
    // Serialize message field [message_id]
    writer.writeUint32(message_id);
    // Serialize message field [message_rate]
    writer.writeFloat32(message_rate);
  }

  @override
  MessageintervalRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type MessageintervalRequest
    final data = MessageintervalRequest();
    // Deserialize message field [message_id]
    data.message_id = reader.readUint32();
    // Deserialize message field [message_rate]
    data.message_rate = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/MessageintervalRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e0211a7928924521de24f3981706be52';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# sets message interval
# See MAV_CMD_SET_MESSAGE_intERVAL

uint32 message_id
float32 message_rate

''';
  }
}

class MessageintervalResponse extends RosMessage<MessageintervalResponse> {
  bool success;

  static MessageintervalResponse $prototype = MessageintervalResponse();
  MessageintervalResponse({
    bool success,
  }) : this.success = success ?? false;

  @override
  MessageintervalResponse call({
    bool success,
  }) =>
      MessageintervalResponse(
        success: success,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MessageintervalResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  MessageintervalResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type MessageintervalResponse
    final data = MessageintervalResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/MessageintervalResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success


''';
  }
}

class Messageinterval
    extends RosServiceMessage<MessageintervalRequest, MessageintervalResponse> {
  static final $prototype = Messageinterval();
  @override
  MessageintervalRequest get request => MessageintervalRequest.$prototype;
  @override
  MessageintervalResponse get response => MessageintervalResponse.$prototype;
  @override
  String get md5sum => '99e633e185b7ee6b477bc9843a87b5ae';
  @override
  String get fullType => 'mavros_msgs/Messageinterval';
}
