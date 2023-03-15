// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:30 2022

// (in-package mavros_msgs.srv)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import '../msgs/ParamValue.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamSetRequest extends RosMessage<ParamSetRequest> {
  String param_id;

  ParamValue value;

  static ParamSetRequest $prototype = ParamSetRequest();
  ParamSetRequest({ 
    String? param_id,
    ParamValue? value,
  }):
  this.param_id = param_id ?? '',
  this.value = value ?? ParamValue();

  @override
  ParamSetRequest call({ 
    String? param_id,
    ParamValue? value,
  }) => ParamSetRequest(
  param_id: param_id,
  value: value,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamSetRequest
    // Serialize message field [param_id]
    writer.writeString(param_id);
    // Serialize message field [value]
    value.serialize(writer);
  }

  @override
  ParamSetRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamSetRequest
    final data = ParamSetRequest();
    // Deserialize message field [param_id]
    data.param_id = reader.readString();
    // Deserialize message field [value]
    data.value = ParamValue.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(param_id).length;
    return length + 20;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'mavros_msgs/ParamSetRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4a17f346bc27984b348c799c674a04d9';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Request set parameter value

string param_id
mavros_msgs/ParamValue value

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

class ParamSetResponse extends RosMessage<ParamSetResponse> {
  bool success;

  ParamValue value;

  static ParamSetResponse $prototype = ParamSetResponse();
  ParamSetResponse({ 
    bool? success,
    ParamValue? value,
  }):
  this.success = success ?? false,
  this.value = value ?? ParamValue();

  @override
  ParamSetResponse call({ 
    bool? success,
    ParamValue? value,
  }) => ParamSetResponse(
  success: success,
  value: value,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamSetResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [value]
    value.serialize(writer);
  }

  @override
  ParamSetResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamSetResponse
    final data = ParamSetResponse();
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
    return 'mavros_msgs/ParamSetResponse';
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
mavros_msgs/ParamValue value


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

class ParamSet extends RosServiceMessage<ParamSetRequest, ParamSetResponse> {
  static final $prototype = ParamSet();
  @override
  ParamSetRequest get request => ParamSetRequest.$prototype;
  @override
  ParamSetResponse get response => ParamSetResponse.$prototype;
  @override
  String get md5sum => 'c423cafb898fff374cbe8530ecd4d285';
  @override
  String get fullType => 'mavros_msgs/ParamSet';
}
