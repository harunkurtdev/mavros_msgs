// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class LogRequestDataRequest extends RosMessage<LogRequestDataRequest> {
  int id;

  int offset;

  int count;

  static LogRequestDataRequest $prototype = LogRequestDataRequest();
  LogRequestDataRequest({ 
    int? id,
    int? offset,
    int? count,
  }):
  this.id = id ?? 0,
  this.offset = offset ?? 0,
  this.count = count ?? 0;

  @override
  LogRequestDataRequest call({ 
    int? id,
    int? offset,
    int? count,
  }) => LogRequestDataRequest(
  id: id,
  offset: offset,
  count: count,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogRequestDataRequest
    // Serialize message field [id]
    writer.writeUint16(id);
    // Serialize message field [offset]
    writer.writeUint32(offset);
    // Serialize message field [count]
    writer.writeUint32(count);
  }

  @override
  LogRequestDataRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogRequestDataRequest
    final data = LogRequestDataRequest();
    // Deserialize message field [id]
    data.id = reader.readUint16();
    // Deserialize message field [offset]
    data.offset = reader.readUint32();
    // Deserialize message field [count]
    data.count = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 10;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/LogRequestDataRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '9bd5fb12d79dcd29b3f845d7dd682415';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request a chunk of a log
#
#  :id: - log id from LogEntry message
#  :offset: - offset into the log
#  :count: - number of bytes to get

uint16 id
uint32 offset
uint32 count

''';
  }

}

class LogRequestDataResponse extends RosMessage<LogRequestDataResponse> {
  bool success;

  static LogRequestDataResponse $prototype = LogRequestDataResponse();
  LogRequestDataResponse({ 
    bool? success,
  }):
  this.success = success ?? false;

  @override
  LogRequestDataResponse call({ 
    bool? success,
  }) => LogRequestDataResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogRequestDataResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  LogRequestDataResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogRequestDataResponse
    final data = LogRequestDataResponse();
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
    return 'mavros_msgs/LogRequestDataResponse';
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

class LogRequestData extends RosServiceMessage<LogRequestDataRequest, LogRequestDataResponse> {
  static final $prototype = LogRequestData();
  @override
  LogRequestDataRequest get request => LogRequestDataRequest.$prototype;
  @override
  LogRequestDataResponse get response => LogRequestDataResponse.$prototype;
  @override
  String get md5sum => '91170669bcd08438f0440f9b4d12a11a';
  @override
  String get fullType => 'mavros_msgs/LogRequestData';
}
