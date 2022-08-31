// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

import '../msgs/ParamValue.dart';

//-----------------------------------------------------------

class ParamGetRequest extends RosMessage<ParamGetRequest> {
  String param_id;

  static ParamGetRequest $prototype = ParamGetRequest();
  ParamGetRequest({ 
    String param_id,
  }):
  this.param_id = param_id ?? '';

  @override
  ParamGetRequest call({ 
    String param_id,
  }) => ParamGetRequest(
  param_id: param_id,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamGetRequest
    // Serialize message field [param_id]
    writer.writeString(param_id);
  }

  @override
  ParamGetRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamGetRequest
    final data = ParamGetRequest();
    // Deserialize message field [param_id]
    data.param_id = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(param_id).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamGetRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a0c8304d59f465712790120c3fc4b7d0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request parameter from attached device

string param_id

''';
  }

}

class ParamGetResponse extends RosMessage<ParamGetResponse> {
  bool success;

  ParamValue value;

  static ParamGetResponse $prototype = ParamGetResponse();
  ParamGetResponse({ 
    bool success,
    ParamValue value,
  }):
  this.success = success ?? false,
  this.value = value ?? ParamValue();

  @override
  ParamGetResponse call({ 
    bool success,
    ParamValue value,
  }) => ParamGetResponse(
  success: success,
  value: value,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamGetResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [value]
    value.serialize(writer);
  }

  @override
  ParamGetResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamGetResponse
    final data = ParamGetResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [value]
    data.value = ParamValue.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    return 17;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamGetResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '790d22b22b9dbf32a8e8d55578e25477';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success
ParamValue value


================================================================================
MSG: mavros_msgs/ParamValue
# Parameter value storage type.
#
# Integer and float fields:
#
# if integer != 0: it is integer value
# else if real != 0.0: it is float value
# else: it is zero.

int64 integer
float64 real

''';
  }

}

class ParamGet extends RosServiceMessage<ParamGetRequest, ParamGetResponse> {
  static final $prototype = ParamGet();
  @override
  ParamGetRequest get request => ParamGetRequest.$prototype;
  @override
  ParamGetResponse get response => ParamGetResponse.$prototype;
  @override
  String get md5sum => '777d24d2a7ab1765ef009a69f464d2bc';
  @override
  String get fullType => 'mavros_msgs/ParamGet';
}
