// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileOpenRequest extends RosMessage<FileOpenRequest> {
  String file_path;

  int mode;

  static FileOpenRequest $prototype = FileOpenRequest();
  FileOpenRequest({ 
    String? file_path,
    int?? mode,
  }):
  this.file_path = file_path ?? '',
  this.mode = mode ?? 0;

  @override
  FileOpenRequest call({ 
    String? file_path,
    int?? mode,
  }) => FileOpenRequest(
  file_path: file_path,
  mode: mode,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileOpenRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
    // Serialize message field [mode]
    writer.writeUint8(mode);
  }

  @override
  FileOpenRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileOpenRequest
    final data = FileOpenRequest();
    // Deserialize message field [file_path]
    data.file_path = reader.readString();
    // Deserialize message field [mode]
    data.mode = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(file_path).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileOpenRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '5d3365f008508e7b1c9862cdbc4459de';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Open
#
# :file_path:	used as session id in read/write/close services
# :size:	file size returned for MODE_READ
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

uint8 MODE_READ = 0	# open for read
uint8 MODE_WRITE = 1	# open for write
uint8 MODE_CREATE = 2	# do creat()

string file_path
uint8 mode

''';
  }

// Constants for message
  static const int MODE_READ = 0;
  static const int MODE_WRITE = 1;
  static const int MODE_CREATE = 2;

}

class FileOpenResponse extends RosMessage<FileOpenResponse> {
  int size;

  bool success;

  int r_errno;

  static FileOpenResponse $prototype = FileOpenResponse();
  FileOpenResponse({ 
    int? size,
    bool?? success,
    int?? r_errno,
  }):
  this.size = size ?? 0,
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileOpenResponse call({ 
    int? size,
    bool?? success,
    int?? r_errno,
  }) => FileOpenResponse(
  size: size,
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileOpenResponse
    // Serialize message field [size]
    writer.writeUint32(size);
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileOpenResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileOpenResponse
    final data = FileOpenResponse();
    // Deserialize message field [size]
    data.size = reader.readUint32();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [r_errno]
    data.r_errno = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    return 9;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileOpenResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '0ff9b1d5b96094ef5adccef61431a04f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint32 size
bool success
int32 r_errno


''';
  }

}

class FileOpen extends RosServiceMessage<FileOpenRequest, FileOpenResponse> {
  static final $prototype = FileOpen();
  @override
  FileOpenRequest get request => FileOpenRequest.$prototype;
  @override
  FileOpenResponse get response => FileOpenResponse.$prototype;
  @override
  String get md5sum => '99a3f49cc67b91477cf49ff15c42af0e';
  @override
  String get fullType => 'mavros_msgs/FileOpen';
}
