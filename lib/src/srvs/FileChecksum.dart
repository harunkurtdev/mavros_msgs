// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileChecksumRequest extends RosMessage<FileChecksumRequest> {
  String file_path;

  static FileChecksumRequest $prototype = FileChecksumRequest();
  FileChecksumRequest({ 
    String? file_path,
  }):
  this.file_path = file_path ?? '';

  @override
  FileChecksumRequest call({ 
    String? file_path,
  }) => FileChecksumRequest(
  file_path: file_path,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileChecksumRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
  }

  @override
  FileChecksumRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileChecksumRequest
    final data = FileChecksumRequest();
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
    return 'mavros_msgs/FileChecksumRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Checksum
#
# :file_path:	file to calculate checksum
# :crc32:	file checksum
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path

''';
  }

}

class FileChecksumResponse extends RosMessage<FileChecksumResponse> {
  int crc32;

  bool success;

  int r_errno;

  static FileChecksumResponse $prototype = FileChecksumResponse();
  FileChecksumResponse({ 
    int? crc32,
    bool? success,
    int? r_errno,
  }):
  this.crc32 = crc32 ?? 0,
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileChecksumResponse call({ 
    int? crc32,
    bool? success,
    int? r_errno,
  }) => FileChecksumResponse(
  crc32: crc32,
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileChecksumResponse
    // Serialize message field [crc32]
    writer.writeUint32(crc32);
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileChecksumResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileChecksumResponse
    final data = FileChecksumResponse();
    // Deserialize message field [crc32]
    data.crc32 = reader.readUint32();
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
    return 'mavros_msgs/FileChecksumResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8ecf737b97670b745ca39c7b185cc756';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint32 crc32
bool success
int32 r_errno


''';
  }

}

class FileChecksum extends RosServiceMessage<FileChecksumRequest, FileChecksumResponse> {
  static final $prototype = FileChecksum();
  @override
  FileChecksumRequest get request => FileChecksumRequest.$prototype;
  @override
  FileChecksumResponse get response => FileChecksumResponse.$prototype;
  @override
  String get md5sum => 'c32158e17d9a1a1c682fe19adbd29fac';
  @override
  String get fullType => 'mavros_msgs/FileChecksum';
}
