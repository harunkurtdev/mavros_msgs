// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class LogRequestEndRequest extends RosMessage<LogRequestEndRequest> {
  static LogRequestEndRequest $prototype = LogRequestEndRequest();
  LogRequestEndRequest();

  @override
  LogRequestEndRequest call() => LogRequestEndRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogRequestEndRequest
  }

  @override
  LogRequestEndRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogRequestEndRequest
    final data = LogRequestEndRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/LogRequestEndRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Stop log transfer and resume normal logging


''';
  }
}

class LogRequestEndResponse extends RosMessage<LogRequestEndResponse> {
  bool success;

  static LogRequestEndResponse $prototype = LogRequestEndResponse();
  LogRequestEndResponse({
    bool success,
  }) : this.success = success ?? false;

  @override
  LogRequestEndResponse call({
    bool success,
  }) =>
      LogRequestEndResponse(
        success: success,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LogRequestEndResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  LogRequestEndResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type LogRequestEndResponse
    final data = LogRequestEndResponse();
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
    return 'mavros_msgs/LogRequestEndResponse';
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

class LogRequestEnd
    extends RosServiceMessage<LogRequestEndRequest, LogRequestEndResponse> {
  static final $prototype = LogRequestEnd();
  @override
  LogRequestEndRequest get request => LogRequestEndRequest.$prototype;
  @override
  LogRequestEndResponse get response => LogRequestEndResponse.$prototype;
  @override
  String get md5sum => '358e233cde0c8a8bcfea4ce193f8fc15';
  @override
  String get fullType => 'mavros_msgs/LogRequestEnd';
}
