// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileCloseRequest extends RosMessage<FileCloseRequest> {
  String file_path;

  static FileCloseRequest $prototype = FileCloseRequest();
  FileCloseRequest({ 
    String? file_path,
  }):
  this.file_path = file_path ?? '';

  @override
  FileCloseRequest call({ 
    String? file_path,
  }) => FileCloseRequest(
  file_path: file_path,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileCloseRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
  }

  @override
  FileCloseRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileCloseRequest
    final data = FileCloseRequest();
    // Deserialize message field [file_path]
    data.file_path = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(file_path).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileCloseRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Close
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path

''';
  }

}

class FileCloseResponse extends RosMessage<FileCloseResponse> {
  bool success;

  int r_errno;

  static FileCloseResponse $prototype = FileCloseResponse();
  FileCloseResponse({ 
    bool? success,
    int?? r_errno,
  }):
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileCloseResponse call({ 
    bool? success,
    int?? r_errno,
  }) => FileCloseResponse(
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileCloseResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileCloseResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileCloseResponse
    final data = FileCloseResponse();
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
    return 'mavros_msgs/FileCloseResponse';
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

class FileClose extends RosServiceMessage<FileCloseRequest, FileCloseResponse> {
  static final $prototype = FileClose();
  @override
  FileCloseRequest get request => FileCloseRequest.$prototype;
  @override
  FileCloseResponse get response => FileCloseResponse.$prototype;
  @override
  String get md5sum => '1c309002d7f7c6df7d3f094925ea8e10';
  @override
  String get fullType => 'mavros_msgs/FileClose';
}
