// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileRenameRequest extends RosMessage<FileRenameRequest> {
  String old_path;

  String new_path;

  static FileRenameRequest $prototype = FileRenameRequest();
  FileRenameRequest({ 
    String? old_path,
    String? new_path,
  }):
  this.old_path = old_path ?? '',
  this.new_path = new_path ?? '';

  @override
  FileRenameRequest call({ 
    String? old_path,
    String? new_path,
  }) => FileRenameRequest(
  old_path: old_path,
  new_path: new_path,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileRenameRequest
    // Serialize message field [old_path]
    writer.writeString(old_path);
    // Serialize message field [new_path]
    writer.writeString(new_path);
  }

  @override
  FileRenameRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileRenameRequest
    final data = FileRenameRequest();
    // Deserialize message field [old_path]
    data.old_path = reader.readString();
    // Deserialize message field [new_path]
    data.new_path = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(old_path).length;
    length += utf8.encode(new_path).length;
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileRenameRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e4a29684c4f7a3290a1bec0a9de2ed01';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Rename
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string old_path
string new_path

''';
  }

}

class FileRenameResponse extends RosMessage<FileRenameResponse> {
  bool success;

  int r_errno;

  static FileRenameResponse $prototype = FileRenameResponse();
  FileRenameResponse({ 
    bool? success,
    int? r_errno,
  }):
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileRenameResponse call({ 
    bool? success,
    int? r_errno,
  }) => FileRenameResponse(
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileRenameResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileRenameResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileRenameResponse
    final data = FileRenameResponse();
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
    return 'mavros_msgs/FileRenameResponse';
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

class FileRename extends RosServiceMessage<FileRenameRequest, FileRenameResponse> {
  static final $prototype = FileRename();
  @override
  FileRenameRequest get request => FileRenameRequest.$prototype;
  @override
  FileRenameResponse get response => FileRenameResponse.$prototype;
  @override
  String get md5sum => '07d853e3d48c88a648998515aab1f5b7';
  @override
  String get fullType => 'mavros_msgs/FileRename';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
