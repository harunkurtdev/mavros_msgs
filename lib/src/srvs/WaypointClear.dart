// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class WaypointClearRequest extends RosMessage<WaypointClearRequest> {
  static WaypointClearRequest $prototype = WaypointClearRequest();
  WaypointClearRequest();

  @override
  WaypointClearRequest call() => WaypointClearRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointClearRequest
  }

  @override
  WaypointClearRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointClearRequest
    final data = WaypointClearRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointClearRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request clear waypoint


''';
  }
}

class WaypointClearResponse extends RosMessage<WaypointClearResponse> {
  bool success;

  static WaypointClearResponse $prototype = WaypointClearResponse();
  WaypointClearResponse({
    bool success,
  }) : this.success = success ?? false;

  @override
  WaypointClearResponse call({
    bool success,
  }) =>
      WaypointClearResponse(
        success: success,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointClearResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  WaypointClearResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointClearResponse
    final data = WaypointClearResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointClearResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success


''';
  }
}

class WaypointClear
    extends RosServiceMessage<WaypointClearRequest, WaypointClearResponse> {
  static final $prototype = WaypointClear();
  @override
  WaypointClearRequest get request => WaypointClearRequest.$prototype;
  @override
  WaypointClearResponse get response => WaypointClearResponse.$prototype;
  @override
  String get md5sum => '358e233cde0c8a8bcfea4ce193f8fc15';
  @override
  String get fullType => 'mavros_msgs/WaypointClear';
}
