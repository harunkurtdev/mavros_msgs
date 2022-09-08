// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class PlayTuneV2 extends RosMessage<PlayTuneV2> {
  int format;

  String tune;

  static PlayTuneV2 $prototype = PlayTuneV2();
  PlayTuneV2({
    int format,
    String tune,
  })  : this.format = format ?? 0,
        this.tune = tune ?? '';

  @override
  PlayTuneV2 call({
    int format,
    String tune,
  }) =>
      PlayTuneV2(
        format: format,
        tune: tune,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PlayTuneV2
    // Serialize message field [format]
    writer.writeUint8(format);
    // Serialize message field [tune]
    writer.writeString(tune);
  }

  @override
  PlayTuneV2 deserialize(ByteDataReader reader) {
    //deserializes a message object of type PlayTuneV2
    final data = PlayTuneV2();
    // Deserialize message field [format]
    data.format = reader.readUint8();
    // Deserialize message field [tune]
    data.tune = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(tune).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/PlayTuneV2';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '177f99ce3572342a75a8b5cdefc8286e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Play tune V2
#
# https://mavlink.io/en/messages/common.html#PLAY_TUNE_V2

## TUNE_FORMAT enum
uint8 QBASIC1_1 = 1
uint8 MML_MODERN = 2

uint8 format
string tune

''';
  }

// Constants for message
  static const int QBASIC1_1 = 1;
  static const int MML_MODERN = 2;
}
