// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:31 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaypointPullRequest extends RosMessage<WaypointPullRequest> {
  static WaypointPullRequest $prototype = WaypointPullRequest();
  WaypointPullRequest();

  @override
  WaypointPullRequest call() => WaypointPullRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointPullRequest
  }

  @override
  WaypointPullRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointPullRequest
    final data = WaypointPullRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointPullRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Requests waypoints from device
#
# Returns success status and received count


''';
  }

}

class WaypointPullResponse extends RosMessage<WaypointPullResponse> {
  bool success;

  int wp_received;

  static WaypointPullResponse $prototype = WaypointPullResponse();
  WaypointPullResponse({ 
    bool success,
    int wp_received,
  }):
  this.success = success ?? false,
  this.wp_received = wp_received ?? 0;

  @override
  WaypointPullResponse call({ 
    bool success,
    int wp_received,
  }) => WaypointPullResponse(
  success: success,
  wp_received: wp_received,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WaypointPullResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [wp_received]
    writer.writeUint32(wp_received);
  }

  @override
  WaypointPullResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type WaypointPullResponse
    final data = WaypointPullResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [wp_received]
    data.wp_received = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointPullResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a8d9ecef8fb37028d2db2a9aa4ed7e79';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
uint32 wp_received


''';
  }

}

class WaypointPull extends RosServiceMessage<WaypointPullRequest, WaypointPullResponse> {
  static final $prototype = WaypointPull();
  @override
  WaypointPullRequest get request => WaypointPullRequest.$prototype;
  @override
  WaypointPullResponse get response => WaypointPullResponse.$prototype;
  @override
  String get md5sum => 'a8d9ecef8fb37028d2db2a9aa4ed7e79';
  @override
  String get fullType => 'mavros_msgs/WaypointPull';
}
