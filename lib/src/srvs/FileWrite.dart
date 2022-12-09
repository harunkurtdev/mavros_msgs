// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:29 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class FileWriteRequest extends RosMessage<FileWriteRequest> {
  String file_path;

  int offset;

  List<int> data;

  static FileWriteRequest $prototype = FileWriteRequest();
  FileWriteRequest({
    String file_path,
    int offset,
    List<int> data,
  })  : this.file_path = file_path ?? '',
        this.offset = offset ?? 0,
        this.data = data ?? [];

  @override
  FileWriteRequest call({
    String file_path,
    int offset,
    List<int> data,
  }) =>
      FileWriteRequest(
        file_path: file_path,
        offset: offset,
        data: data,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileWriteRequest
    // Serialize message field [file_path]
    writer.writeString(file_path);
    // Serialize message field [offset]
    writer.writeUint64(offset);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val),
        specArrayLen: null);
  }

  @override
  FileWriteRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileWriteRequest
    final data = FileWriteRequest();
    // Deserialize message field [file_path]
    data.file_path = reader.readString();
    // Deserialize message field [offset]
    data.offset = reader.readUint64();
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(file_path).length;
    length += data.length;
    return length + 16;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/FileWriteRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cf1a270aa1398f3f1fac1649fe2275ef';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# FTP::Write
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 offset
uint8[] data

''';
  }
}

class FileWriteResponse extends RosMessage<FileWriteResponse> {
  bool success;

  int r_errno;

  static FileWriteResponse $prototype = FileWriteResponse();
  FileWriteResponse({
    bool success,
    int r_errno,
  })  : this.success = success ?? false,
        this.r_errno = r_errno ?? 0;

  @override
  FileWriteResponse call({
    bool success,
    int r_errno,
  }) =>
      FileWriteResponse(
        success: success,
        r_errno: r_errno,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileWriteResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [r_errno]
    writer.writeInt32(r_errno);
  }

  @override
  FileWriteResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileWriteResponse
    final data = FileWriteResponse();
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
    return 'mavros_msgs/FileWriteResponse';
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

class FileWrite extends RosServiceMessage<FileWriteRequest, FileWriteResponse> {
  static final $prototype = FileWrite();
  @override
  FileWriteRequest get request => FileWriteRequest.$prototype;
  @override
  FileWriteResponse get response => FileWriteResponse.$prototype;
  @override
  String get md5sum => '7d7e0ed4d86797a80355795ee6728fac';
  @override
  String get fullType => 'mavros_msgs/FileWrite';
}
