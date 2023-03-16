// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:31 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaypointSetCurrentRequest extends RosMessage<WaypointSetCurrentRequest> {
  int wp_seq;

  static WaypointSetCurrentRequest $prototype = WaypointSetCurrentRequest();
  WaypointSetCurrentRequest({ 
    int? wp_seq,
  }):
  this.wp_seq = wp_seq ?? 0;

  @override
  WaypointSetCurrentRequest call({ 
    int? wp_seq,
  }) => WaypointSetCurrentRequest(
  wp_seq: wp_seq,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointSetCurrentRequest
    // Serialize message field [wp_seq]
    writer.writeUint16(wp_seq);
  }

  @override
  WaypointSetCurrentRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointSetCurrentRequest
    final data = WaypointSetCurrentRequest();
    // Deserialize message field [wp_seq]
    data.wp_seq = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    return 2;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointSetCurrentRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '9541369175e0776b0fef1c988db6840f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request set current waypoint
#
# wp_seq - index in waypoint array

uint16 wp_seq

''';
  }

}

class WaypointSetCurrentResponse extends RosMessage<WaypointSetCurrentResponse> {
  bool success;

  static WaypointSetCurrentResponse $prototype = WaypointSetCurrentResponse();
  WaypointSetCurrentResponse({ 
    bool? success,
  }):
  this.success = success ?? false;

  @override
  WaypointSetCurrentResponse call({ 
    bool? success,
  }) => WaypointSetCurrentResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointSetCurrentResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  WaypointSetCurrentResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointSetCurrentResponse
    final data = WaypointSetCurrentResponse();
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
    return 'mavros_msgs/WaypointSetCurrentResponse';
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

class WaypointSetCurrent extends RosServiceMessage<WaypointSetCurrentRequest, WaypointSetCurrentResponse> {
  static final $prototype = WaypointSetCurrent();
  @override
  WaypointSetCurrentRequest get request => WaypointSetCurrentRequest.$prototype;
  @override
  WaypointSetCurrentResponse get response => WaypointSetCurrentResponse.$prototype;
  @override
  String get md5sum => 'f99aa1a911a80ab546ea470f4e90c807';
  @override
  String get fullType => 'mavros_msgs/WaypointSetCurrent';
  
  @override
  // TODO: implement messageDefinition
  String get messageDefinition => throw UnimplementedError();
}
