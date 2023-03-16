// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamPushRequest extends RosMessage<ParamPushRequest> {
  static ParamPushRequest $prototype = ParamPushRequest();
  ParamPushRequest();

  @override
  ParamPushRequest call() => ParamPushRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamPushRequest
  }

  @override
  ParamPushRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamPushRequest
    final data = ParamPushRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPushRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Send current send
#
# Returns success status and param_transfered count


''';
  }

}

class ParamPushResponse extends RosMessage<ParamPushResponse> {
  bool success;

  int param_transfered;

  static ParamPushResponse $prototype = ParamPushResponse();
  ParamPushResponse({ 
    bool? success,
    int? param_transfered,
  }):
  this.success = success ?? false,
  this.param_transfered = param_transfered ?? 0;

  @override
  ParamPushResponse call({ 
    bool? success,
    int? param_transfered,
  }) => ParamPushResponse(
  success: success,
  param_transfered: param_transfered,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamPushResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [param_transfered]
    writer.writeUint32(param_transfered);
  }

  @override
  ParamPushResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamPushResponse
    final data = ParamPushResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [param_transfered]
    data.param_transfered = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPushResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd3fc4d8cefa193382985a92a041a2a3d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
uint32 param_transfered


''';
  }

}

class ParamPush extends RosServiceMessage<ParamPushRequest, ParamPushResponse> {
  static final $prototype = ParamPush();
  @override
  ParamPushRequest get request => ParamPushRequest.$prototype;
  @override
  ParamPushResponse get response => ParamPushResponse.$prototype;
  @override
  String get md5sum => 'd3fc4d8cefa193382985a92a041a2a3d';
  @override
  String get fullType => 'mavros_msgs/ParamPush';
}
