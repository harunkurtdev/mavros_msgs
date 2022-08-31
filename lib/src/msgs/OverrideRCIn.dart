// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:24 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class OverrideRCIn extends RosMessage<OverrideRCIn> {
  List<int> channels;

  static OverrideRCIn $prototype = OverrideRCIn();
  OverrideRCIn({ 
    List<int> channels,
  }):
  this.channels = channels ?? List.generate(18, (_) => 0);

  @override
  OverrideRCIn call({ 
    List<int> channels,
  }) => OverrideRCIn(
  channels: channels,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type OverrideRCIn
    // Check that the constant length array field [channels] has the right length
    if (channels.length != 18) {
      throw Exception('Unable to serialize array field channels - length must be 18');
    }
    // Serialize message field [channels]
    writer.writeArray<int>(channels, (val) => writer.writeUint16(val), specArrayLen: 18);
  }

  @override
  OverrideRCIn deserialize(ByteDataReader reader) {
    //deserializes a message object of type OverrideRCIn
    final data = OverrideRCIn();
    // Deserialize message field [channels]
    data.channels = reader.readArray<int>(() => reader.readUint16(), arrayLen: 18);
    return data;
  }

  int getMessageSize() {
    return 36;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/OverrideRCIn';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'fd1e1c08fa504ec32737c41f45223398';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Override RC Input
# Currently MAVLink defines override for 18 channels

# https://mavlink.io/en/messages/common.html#RC_CHANNELS_OVERRIDE

uint16 CHAN_RELEASE=0
uint16 CHAN_NOCHANGE=65535

uint16[18] channels

''';
  }

// Constants for message
  static const int CHAN_RELEASE = 0;
  static const int CHAN_NOCHANGE = 65535;

}

