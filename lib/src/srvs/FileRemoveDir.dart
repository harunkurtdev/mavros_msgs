// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class FileRemoveDirRequest extends RosMessage<FileRemoveDirRequest> {
  String dir_path;

  static FileRemoveDirRequest $prototype = FileRemoveDirRequest();
  FileRemoveDirRequest({
    String dir_path,
  }) : this.dir_path = dir_path ?? '';

  @override
  FileRemoveDirRequest call({
    String dir_path,
  }) =>
      FileRemoveDirRequest(
        dir_path: dir_path,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileRemoveDirRequest
    // Serialize message field [dir_path]
    writer.writeString(dir_path);
  }

  @override
  FileRemoveDirRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileRemoveDirRequest
    final data = FileRemoveDirRequest();
    // Deserialize message field [dir_path]
    data.dir_path = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(dir_path).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileRemoveDirRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '401d5cf5f836aaa9ebdc0897f75da874';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::RemoveDir
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string dir_path

''';
  }
}

class FileRemoveDirResponse extends RosMessage<FileRemoveDirResponse> {
  bool success;

  int r_errno;

  static FileRemoveDirResponse $prototype = FileRemoveDirResponse();
  FileRemoveDirResponse({
    bool success,
    int r_errno,
  })  : this.success = success ?? false,
        this.r_errno = r_errno ?? 0;

  @override
  FileRemoveDirResponse call({
    bool success,
    int r_errno,
  }) =>
      FileRemoveDirResponse(
        success: success,
        r_errno: r_errno,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileRemoveDirResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileRemoveDirResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileRemoveDirResponse
    final data = FileRemoveDirResponse();
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
    return 'mavros_msgs/FileRemoveDirResponse';
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

class FileRemoveDir
    extends RosServiceMessage<FileRemoveDirRequest, FileRemoveDirResponse> {
  static final $prototype = FileRemoveDir();
  @override
  FileRemoveDirRequest get request => FileRemoveDirRequest.$prototype;
  @override
  FileRemoveDirResponse get response => FileRemoveDirResponse.$prototype;
  @override
  String get md5sum => 'f140c5ef05b00c3cfc30d5a2061b4d63';
  @override
  String get fullType => 'mavros_msgs/FileRemoveDir';
}
