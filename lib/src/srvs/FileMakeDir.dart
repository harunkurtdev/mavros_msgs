// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileMakeDirRequest extends RosMessage<FileMakeDirRequest> {
  String dir_path;

  static FileMakeDirRequest $prototype = FileMakeDirRequest();
  FileMakeDirRequest({ 
    String? dir_path,
  }):
  this.dir_path = dir_path ?? '';

  @override
  FileMakeDirRequest call({ 
    String? dir_path,
  }) => FileMakeDirRequest(
  dir_path: dir_path,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileMakeDirRequest
    // Serialize message field [dir_path]
    writer.writeString(dir_path);
  }

  @override
  FileMakeDirRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileMakeDirRequest
    final data = FileMakeDirRequest();
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
    return 'mavros_msgs/FileMakeDirRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '401d5cf5f836aaa9ebdc0897f75da874';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::MakeDir
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string dir_path

''';
  }

}

class FileMakeDirResponse extends RosMessage<FileMakeDirResponse> {
  bool success;

  int r_errno;

  static FileMakeDirResponse $prototype = FileMakeDirResponse();
  FileMakeDirResponse({ 
    bool? success,
    int?? r_errno,
  }):
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileMakeDirResponse call({ 
    bool? success,
    int?? r_errno,
  }) => FileMakeDirResponse(
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileMakeDirResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileMakeDirResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileMakeDirResponse
    final data = FileMakeDirResponse();
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
    return 'mavros_msgs/FileMakeDirResponse';
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

class FileMakeDir extends RosServiceMessage<FileMakeDirRequest, FileMakeDirResponse> {
  static final $prototype = FileMakeDir();
  @override
  FileMakeDirRequest get request => FileMakeDirRequest.$prototype;
  @override
  FileMakeDirResponse get response => FileMakeDirResponse.$prototype;
  @override
  String get md5sum => 'f140c5ef05b00c3cfc30d5a2061b4d63';
  @override
  String get fullType => 'mavros_msgs/FileMakeDir';
}
