// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileTruncateRequest extends RosMessage<FileTruncateRequest> {
  String file_path;

  int length;

  static FileTruncateRequest $prototype = FileTruncateRequest();
  FileTruncateRequest({ 
    String file_path,
    int length,
  }):
  this.file_path = file_path ?? '',
  this.length = length ?? 0;

  @override
  FileTruncateRequest call({ 
    String file_path,
    int length,
  }) => FileTruncateRequest(
  file_path: file_path,
  length: length,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileTruncateRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
    // Serialize message field [length]
    writer.writeUint64(length);
  }

  @override
  FileTruncateRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileTruncateRequest
    final data = FileTruncateRequest();
    // Deserialize message field [file_path]
    data.file_path = reader.readString();
    // Deserialize message field [length]
    data.length = reader.readUint64();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(file_path).length;
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileTruncateRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8153dbfb1601dd12c2e69aba3171d186';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Truncate
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 length

''';
  }

}

class FileTruncateResponse extends RosMessage<FileTruncateResponse> {
  bool success;

  int r_errno;

  static FileTruncateResponse $prototype = FileTruncateResponse();
  FileTruncateResponse({ 
    bool success,
    int r_errno,
  }):
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileTruncateResponse call({ 
    bool success,
    int r_errno,
  }) => FileTruncateResponse(
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileTruncateResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileTruncateResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileTruncateResponse
    final data = FileTruncateResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [r_errno]
    data.r_errno = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    return 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileTruncateResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '85394f2e941a8937ac567a617f06157f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
int32 r_errno


''';
  }

}

class FileTruncate extends RosServiceMessage<FileTruncateRequest, FileTruncateResponse> {
  static final $prototype = FileTruncate();
  @override
  FileTruncateRequest get request => FileTruncateRequest.$prototype;
  @override
  FileTruncateResponse get response => FileTruncateResponse.$prototype;
  @override
  String get md5sum => '71bf45fe3600fc220a82346ce1d1430c';
  @override
  String get fullType => 'mavros_msgs/FileTruncate';
}
