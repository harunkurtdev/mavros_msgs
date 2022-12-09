// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class FileRemoveRequest extends RosMessage<FileRemoveRequest> {
  String file_path;

  static FileRemoveRequest $prototype = FileRemoveRequest();
  FileRemoveRequest({
    String file_path,
  }) : this.file_path = file_path ?? '';

  @override
  FileRemoveRequest call({
    String file_path,
  }) =>
      FileRemoveRequest(
        file_path: file_path,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileRemoveRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
  }

  @override
  FileRemoveRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileRemoveRequest
    final data = FileRemoveRequest();
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
    return 'mavros_msgs/FileRemoveRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Remove
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path

''';
  }
}

class FileRemoveResponse extends RosMessage<FileRemoveResponse> {
  bool success;

  int r_errno;

  static FileRemoveResponse $prototype = FileRemoveResponse();
  FileRemoveResponse({
    bool success,
    int r_errno,
  })  : this.success = success ?? false,
        this.r_errno = r_errno ?? 0;

  @override
  FileRemoveResponse call({
    bool success,
    int r_errno,
  }) =>
      FileRemoveResponse(
        success: success,
        r_errno: r_errno,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileRemoveResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileRemoveResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileRemoveResponse
    final data = FileRemoveResponse();
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
    return 'mavros_msgs/FileRemoveResponse';
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

class FileRemove
    extends RosServiceMessage<FileRemoveRequest, FileRemoveResponse> {
  static final $prototype = FileRemove();
  @override
  FileRemoveRequest get request => FileRemoveRequest.$prototype;
  @override
  FileRemoveResponse get response => FileRemoveResponse.$prototype;
  @override
  String get md5sum => '1c309002d7f7c6df7d3f094925ea8e10';
  @override
  String get fullType => 'mavros_msgs/FileRemove';
}
