// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

import '../msgs/FileEntry.dart';

//-----------------------------------------------------------

class FileListRequest extends RosMessage<FileListRequest> {
  String dir_path;

  static FileListRequest $prototype = FileListRequest();
  FileListRequest({ 
    String dir_path,
  }):
  this.dir_path = dir_path ?? '';

  @override
  FileListRequest call({ 
    String dir_path,
  }) => FileListRequest(
  dir_path: dir_path,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileListRequest
    // Serialize message field [dir_path]
    writer.writeString(dir_path);
  }

  @override
  FileListRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileListRequest
    final data = FileListRequest();
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
    return 'mavros_msgs/FileListRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '401d5cf5f836aaa9ebdc0897f75da874';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::List
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string dir_path

''';
  }

}

class FileListResponse extends RosMessage<FileListResponse> {
  List<FileEntry> list;

  bool success;

  int r_errno;

  static FileListResponse $prototype = FileListResponse();
  FileListResponse({ 
    List<FileEntry> list,
    bool success,
    int r_errno,
  }):
  this.list = list ?? [],
  this.success = success ?? false,
  this.r_errno = r_errno ?? 0;

  @override
  FileListResponse call({ 
    List<FileEntry> list,
    bool success,
    int r_errno,
  }) => FileListResponse(
  list: list,
  success: success,
  r_errno: r_errno,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileListResponse
    // Serialize message field [list]
    // Serialize the length for message field [list]
    writer.writeUint32(list.length);
    list.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileListResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileListResponse
    final data = FileListResponse();
    // Deserialize message field [list]
    {
      // Deserialize array length for message field [list]
      final len = reader.readInt32();
      data.list = List.generate(len, (_) => FileEntry.$prototype.deserialize(reader));
    }
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [r_errno]
    data.r_errno = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    list.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 9;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileListResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3cf4be333d40be8a08832e3b61ed4336';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''mavros_msgs/FileEntry[] list
bool success
int32 r_errno


================================================================================
MSG: mavros_msgs/FileEntry
# File/Dir information

uint8 TYPE_FILE = 0
uint8 TYPE_DIRECTORY = 1

string name
uint8 type
uint64 size

# Not supported by MAVLink FTP
#time atime
#int32 access_flags

''';
  }

}

class FileList extends RosServiceMessage<FileListRequest, FileListResponse> {
  static final $prototype = FileList();
  @override
  FileListRequest get request => FileListRequest.$prototype;
  @override
  FileListResponse get response => FileListResponse.$prototype;
  @override
  String get md5sum => '1647c627907cac72fa2d06e0e5f96aac';
  @override
  String get fullType => 'mavros_msgs/FileList';
}
