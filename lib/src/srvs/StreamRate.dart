// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class StreamRateRequest extends RosMessage<StreamRateRequest> {
  int stream_id;

  int message_rate;

  bool on_off;

  static StreamRateRequest $prototype = StreamRateRequest();
  StreamRateRequest({ 
    int stream_id,
    int message_rate,
    bool on_off,
  }):
  this.stream_id = stream_id ?? 0,
  this.message_rate = message_rate ?? 0,
  this.on_off = on_off ?? false;

  @override
  StreamRateRequest call({ 
    int stream_id,
    int message_rate,
    bool on_off,
  }) => StreamRateRequest(
  stream_id: stream_id,
  message_rate: message_rate,
  on_off: on_off,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type StreamRateRequest
    // Serialize message field [stream_id]
    writer.writeUint8(stream_id);
    // Serialize message field [message_rate]
    writer.writeUint16(message_rate);
    // Serialize message field [on_off]
    writer.writeUint8(on_off == false ? 0 : 1);
  }

  @override
  StreamRateRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type StreamRateRequest
    final data = StreamRateRequest();
    // Deserialize message field [stream_id]
    data.stream_id = reader.readUint8();
    // Deserialize message field [message_rate]
    data.message_rate = reader.readUint16();
    // Deserialize message field [on_off]
    data.on_off = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/StreamRateRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd12f7661724c8ba25f67ba597bb7d039';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# sets stream rate
# See REQUEST_DATA_STREAM message

uint8 STREAM_ALL = 0
uint8 STREAM_RAW_SENSORS = 1
uint8 STREAM_EXTENDED_STATUS = 2
uint8 STREAM_RC_CHANNELS = 3
uint8 STREAM_RAW_CONTROLLER = 4
uint8 STREAM_POSITION = 6
uint8 STREAM_EXTRA1 = 10
uint8 STREAM_EXTRA2 = 11
uint8 STREAM_EXTRA3 = 12

uint8 stream_id
uint16 message_rate
bool on_off

''';
  }

// Constants for message
  static const int STREAM_ALL = 0;
  static const int STREAM_RAW_SENSORS = 1;
  static const int STREAM_EXTENDED_STATUS = 2;
  static const int STREAM_RC_CHANNELS = 3;
  static const int STREAM_RAW_CONTROLLER = 4;
  static const int STREAM_POSITION = 6;
  static const int STREAM_EXTRA1 = 10;
  static const int STREAM_EXTRA2 = 11;
  static const int STREAM_EXTRA3 = 12;

}

class StreamRateResponse extends RosMessage<StreamRateResponse> {
  static StreamRateResponse $prototype = StreamRateResponse();
  StreamRateResponse();

  @override
  StreamRateResponse call() => StreamRateResponse();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type StreamRateResponse
  }

  @override
  StreamRateResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type StreamRateResponse
    final data = StreamRateResponse();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/StreamRateResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''

''';
  }

}

class StreamRate extends RosServiceMessage<StreamRateRequest, StreamRateResponse> {
  static final $prototype = StreamRate();
  @override
  StreamRateRequest get request => StreamRateRequest.$prototype;
  @override
  StreamRateResponse get response => StreamRateResponse.$prototype;
  @override
  String get md5sum => 'd12f7661724c8ba25f67ba597bb7d039';
  @override
  String get fullType => 'mavros_msgs/StreamRate';
}
