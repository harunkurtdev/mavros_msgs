// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)

// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

//-----------------------------------------------------------

class ParamPullRequest extends RosMessage<ParamPullRequest> {
  bool force_pull;

  static ParamPullRequest $prototype = ParamPullRequest();
  ParamPullRequest({
    bool force_pull,
  }) : this.force_pull = force_pull ?? false;

  @override
  ParamPullRequest call({
    bool force_pull,
  }) =>
      ParamPullRequest(
        force_pull: force_pull,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamPullRequest
    // Serialize message field [force_pull]
    writer.writeUint8(force_pull == false ? 0 : 1);
  }

  @override
  ParamPullRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamPullRequest
    final data = ParamPullRequest();
    // Deserialize message field [force_pull]
    data.force_pull = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPullRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '16415b4e049d3f92df764eeb461102b7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request parameters from device
#
# Returns success status and param_recived count

bool force_pull

''';
  }
}

class ParamPullResponse extends RosMessage<ParamPullResponse> {
  bool success;

  int param_received;

  static ParamPullResponse $prototype = ParamPullResponse();
  ParamPullResponse({
    bool success,
    int param_received,
  })  : this.success = success ?? false,
        this.param_received = param_received ?? 0;

  @override
  ParamPullResponse call({
    bool success,
    int param_received,
  }) =>
      ParamPullResponse(
        success: success,
        param_received: param_received,
      );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamPullResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [param_received]
    writer.writeUint32(param_received);
  }

  @override
  ParamPullResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamPullResponse
    final data = ParamPullResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [param_received]
    data.param_received = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPullResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '5601e883220b149a3209512e966299f0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
uint32 param_received


''';
  }
}

class ParamPull extends RosServiceMessage<ParamPullRequest, ParamPullResponse> {
  static final $prototype = ParamPull();
  @override
  ParamPullRequest get request => ParamPullRequest.$prototype;
  @override
  ParamPullResponse get response => ParamPullResponse.$prototype;
  @override
  String get md5sum => 'c9628aea2226088718fd240fbd62afc7';
  @override
  String get fullType => 'mavros_msgs/ParamPull';
}
