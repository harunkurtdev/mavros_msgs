// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class LogRequestListRequest extends RosMessage<LogRequestListRequest> {
  int start;

  int end;

  static LogRequestListRequest $prototype = LogRequestListRequest();
  LogRequestListRequest({ 
    int? start,
    int? end,
  }):
  this.start = start ?? 0,
  this.end = end ?? 0;

  @override
  LogRequestListRequest call({ 
    int? start,
    int? end,
  }) => LogRequestListRequest(
  start: start,
  end: end,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogRequestListRequest
    // Serialize message field [start]
    writer.writeUint16(start);
    // Serialize message field [end]
    writer.writeUint16(end);
  }

  @override
  LogRequestListRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogRequestListRequest
    final data = LogRequestListRequest();
    // Deserialize message field [start]
    data.start = reader.readUint16();
    // Deserialize message field [end]
    data.end = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    return 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/LogRequestListRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '43d5acd48e3ef1843fa7f45876501c02';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request a list of available logs
#
#  :start: - first log id (0 for first available)
#  :end: - last log id (0xffff for last available)

uint16 start
uint16 end

''';
  }

}

class LogRequestListResponse extends RosMessage<LogRequestListResponse> {
  bool success;

  static LogRequestListResponse $prototype = LogRequestListResponse();
  LogRequestListResponse({ 
    bool? success,
  }):
  this.success = success ?? false;

  @override
  LogRequestListResponse call({ 
    bool? success,
  }) => LogRequestListResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogRequestListResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  LogRequestListResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogRequestListResponse
    final data = LogRequestListResponse();
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
    return 'mavros_msgs/LogRequestListResponse';
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

class LogRequestList extends RosServiceMessage<LogRequestListRequest, LogRequestListResponse> {
  static final $prototype = LogRequestList();
  @override
  LogRequestListRequest get request => LogRequestListRequest.$prototype;
  @override
  LogRequestListResponse get response => LogRequestListResponse.$prototype;
  @override
  String get md5sum => '3e2e88c935b3047e14f450bc4a90c4d2';
  @override
  String get fullType => 'mavros_msgs/LogRequestList';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
