// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:22 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class FileEntry extends RosMessage<FileEntry> {
  String name;

  int type;

  int size;

  static FileEntry $prototype = FileEntry();
  FileEntry({ 
    String? name,
    int? type,
    int? size,
  }):
  this.name = name ?? '',
  this.type = type ?? 0,
  this.size = size ?? 0;

  @override
  FileEntry call({ 
    String? name,
    int? type,
    int? size,
  }) => FileEntry(
  name: name,
  type: type,
  size: size,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FileEntry
    // Serialize message field [name]
    writer.writeString(name);
    // Serialize message field [type]
    writer.writeUint8(type);
    // Serialize message field [size]
    writer.writeUint64(size);
  }

  @override
  FileEntry deserialize(ByteDataReader reader) {
    //deserializes a message object of type FileEntry
    final data = FileEntry();
    // Deserialize message field [name]
    data.name = reader.readString();
    // Deserialize message field [type]
    data.type = reader.readUint8();
    // Deserialize message field [size]
    data.size = reader.readUint64();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(name).length;
    return length + 13;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/FileEntry';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '5ed706bccb946c5b3a5087569cc53ac3';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# File/Dir information

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

// Constants for message
  static const int TYPE_FILE = 0;
  static const int TYPE_DIRECTORY = 1;

}

