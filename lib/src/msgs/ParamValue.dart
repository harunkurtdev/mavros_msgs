// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/dartros.dart';

//-----------------------------------------------------------

class ParamValue extends RosMessage<ParamValue> {
  int integer;

  double real;

  static ParamValue $prototype = ParamValue();
  ParamValue({ 
    int? integer,
    double? real,
  }):
  this.integer = integer ?? 0,
  this.real = real ?? 0.0;

  @override
  ParamValue call({ 
    int? integer,
    double? real,
  }) => ParamValue(
  integer: integer,
  real: real,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ParamValue
    // Serialize message field [integer]
    writer.writeInt64(integer);
    // Serialize message field [real]
    writer.writeFloat64(real);
  }

  @override
  ParamValue deserialize(ByteDataReader reader) {
    //deserializes a message object of type ParamValue
    final data = ParamValue();
    // Deserialize message field [integer]
    data.integer = reader.readInt64();
    // Deserialize message field [real]
    data.real = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/ParamValue';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e2cb1c7a0f6ef0c62d450cd9362c980d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Parameter value storage type.
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

