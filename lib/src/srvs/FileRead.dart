// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:28 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class FileReadRequest extends RosMessage<FileReadRequest> {
  String file_path;

  int offset;

  int size;

  static FileReadRequest $prototype = FileReadRequest();
  FileReadRequest({
    String file_path,
    int offset,
    int size,
  })  : this.file_path = file_path ?? '',
        this.offset = offset ?? 0,
        this.size = size ?? 0;

  @override
  FileReadRequest call({
    String file_path,
    int offset,
    int size,
  }) =>
      FileReadRequest(
        file_path: file_path,
        offset: offset,
        size: size,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileReadRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
    // Serialize message field [offset]
    writer.writeUint64(offset);
    // Serialize message field [size]
    writer.writeUint64(size);
  }

  @override
  FileReadRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileReadRequest
    final data = FileReadRequest();
    // Deserialize message field [file_path]
    data.file_path = reader.readString();
    // Deserialize message field [offset]
    data.offset = reader.readUint64();
    // Deserialize message field [size]
    data.size = reader.readUint64();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(file_path).length;
    return length + 20;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileReadRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c83da8c18af06c9d7d1b66667fa2bb6b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Read
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 offset
uint64 size

''';
  }
}

class FileReadResponse extends RosMessage<FileReadResponse> {
  List<int> data;

  bool success;

  int r_errno;

  static FileReadResponse $prototype = FileReadResponse();
  FileReadResponse({
    List<int> data,
    bool success,
    int r_errno,
  })  : this.data = data ?? [],
        this.success = success ?? false,
        this.r_errno = r_errno ?? 0;

  @override
  FileReadResponse call({
    List<int> data,
    bool success,
    int r_errno,
  }) =>
      FileReadResponse(
        data: data,
        success: success,
        r_errno: r_errno,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileReadResponse
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val),
        specArrayLen: null);
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileReadResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileReadResponse
    final data = FileReadResponse();
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [r_errno]
    data.r_errno = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += data.length;
    return length + 9;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileReadResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '729aa1e22d45390356095d59a2993cb4';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint8[] data
bool success
int32 r_errno


''';
  }
}

class FileRead extends RosServiceMessage<FileReadRequest, FileReadResponse> {
  static final $prototype = FileRead();
  @override
  FileReadRequest get request => FileReadRequest.$prototype;
  @override
  FileReadResponse get response => FileReadResponse.$prototype;
  @override
  String get md5sum => '7700526a6a54d8971e0db6dc1d712523';
  @override
  String get fullType => 'mavros_msgs/FileRead';
}
