// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class MessageIntervalRequest extends RosMessage<MessageIntervalRequest> {
  int message_id;

  double message_rate;

  static MessageIntervalRequest $prototype = MessageIntervalRequest();
  MessageIntervalRequest({ 
    int? message_id,
    double? message_rate,
  }):
  this.message_id = message_id ?? 0,
  this.message_rate = message_rate ?? 0.0;

  @override
  MessageIntervalRequest call({ 
    int? message_id,
    double? message_rate,
  }) => MessageIntervalRequest(
  message_id: message_id,
  message_rate: message_rate,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MessageIntervalRequest
    // Serialize message field [message_id]
    writer.writeUint32(message_id);
    // Serialize message field [message_rate]
    writer.writeFloat32(message_rate);
  }

  @override
  MessageIntervalRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type MessageIntervalRequest
    final data = MessageIntervalRequest();
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
    return 'mavros_msgs/MessageIntervalRequest';
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
# See MAV_CMD_SET_MESSAGE_INTERVAL

uint32 message_id
float32 message_rate

''';
  }

}

class MessageIntervalResponse extends RosMessage<MessageIntervalResponse> {
  bool success;

  static MessageIntervalResponse $prototype = MessageIntervalResponse();
  MessageIntervalResponse({ 
    bool? success,
  }):
  this.success = success ?? false;

  @override
  MessageIntervalResponse call({ 
    bool? success,
  }) => MessageIntervalResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MessageIntervalResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  MessageIntervalResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type MessageIntervalResponse
    final data = MessageIntervalResponse();
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
    return 'mavros_msgs/MessageIntervalResponse';
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

class MessageInterval extends RosServiceMessage<MessageIntervalRequest, MessageIntervalResponse> {
  static final $prototype = MessageInterval();
  @override
  MessageIntervalRequest get request => MessageIntervalRequest.$prototype;
  @override
  MessageIntervalResponse get response => MessageIntervalResponse.$prototype;
  @override
  String get md5sum => '99e633e185b7ee6b477bc9843a87b5ae';
  @override
  String get fullType => 'mavros_msgs/MessageInterval';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
