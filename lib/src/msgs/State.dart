// Auto-generated. Do not edit!

// Updated: Wed Aug 31 21:34:25 2022

// (in-package mavros_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class State extends RosMessage<State> {
  Header header;

  bool connected;

  bool armed;

  bool guided;

  bool manual_input;

  String mode;

  int system_status;

  static State $prototype = State();
  State({ 
    Header header,
    bool connected,
    bool armed,
    bool guided,
    bool manual_input,
    String mode,
    int system_status,
  }):
  this.header = header ?? Header(),
  this.connected = connected ?? false,
  this.armed = armed ?? false,
  this.guided = guided ?? false,
  this.manual_input = manual_input ?? false,
  this.mode = mode ?? '',
  this.system_status = system_status ?? 0;

  @override
  State call({ 
    Header header,
    bool connected,
    bool armed,
    bool guided,
    bool manual_input,
    String mode,
    int system_status,
  }) => State(
  header: header,
  connected: connected,
  armed: armed,
  guided: guided,
  manual_input: manual_input,
  mode: mode,
  system_status: system_status,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type State
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [connected]
    writer.writeUint8(connected == false ? 0 : 1);
    // Serialize message field [armed]
    writer.writeUint8(armed == false ? 0 : 1);
    // Serialize message field [guided]
    writer.writeUint8(guided == false ? 0 : 1);
    // Serialize message field [manual_input]
    writer.writeUint8(manual_input == false ? 0 : 1);
    // Serialize message field [mode]
    writer.writeString(mode);
    // Serialize message field [system_status]
    writer.writeUint8(system_status);
  }

  @override
  State deserialize(ByteDataReader reader) {
    //deserializes a message object of type State
    final data = State();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [connected]
    data.connected = reader.readUint8() != 0;
    // Deserialize message field [armed]
    data.armed = reader.readUint8() != 0;
    // Deserialize message field [guided]
    data.guided = reader.readUint8() != 0;
    // Deserialize message field [manual_input]
    data.manual_input = reader.readUint8() != 0;
    // Deserialize message field [mode]
    data.mode = reader.readString();
    // Deserialize message field [system_status]
    data.system_status = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(mode).length;
    return length + 9;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'mavros_msgs/State';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '65cd0a9fff993b062b91e354554ec7e9';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Current autopilot state
#
# Known modes listed here:
# http://wiki.ros.org/mavros/CustomModes
#
# For system_status values
# see https://mavlink.io/en/messages/common.html#MAV_STATE
#

std_msgs/Header header
bool connected
bool armed
bool guided
bool manual_input
string mode
uint8 system_status

string MODE_APM_PLANE_MANUAL = MANUAL
string MODE_APM_PLANE_CIRCLE = CIRCLE
string MODE_APM_PLANE_STABILIZE = STABILIZE
string MODE_APM_PLANE_TRAINING = TRAINING
string MODE_APM_PLANE_ACRO = ACRO
string MODE_APM_PLANE_FBWA = FBWA
string MODE_APM_PLANE_FBWB = FBWB
string MODE_APM_PLANE_CRUISE = CRUISE
string MODE_APM_PLANE_AUTOTUNE = AUTOTUNE
string MODE_APM_PLANE_AUTO = AUTO
string MODE_APM_PLANE_RTL = RTL
string MODE_APM_PLANE_LOITER = LOITER
string MODE_APM_PLANE_LAND = LAND
string MODE_APM_PLANE_GUIDED = GUIDED
string MODE_APM_PLANE_INITIALISING = INITIALISING
string MODE_APM_PLANE_QSTABILIZE = QSTABILIZE
string MODE_APM_PLANE_QHOVER = QHOVER
string MODE_APM_PLANE_QLOITER = QLOITER
string MODE_APM_PLANE_QLAND = QLAND
string MODE_APM_PLANE_QRTL = QRTL

string MODE_APM_COPTER_STABILIZE = STABILIZE
string MODE_APM_COPTER_ACRO = ACRO
string MODE_APM_COPTER_ALT_HOLD = ALT_HOLD
string MODE_APM_COPTER_AUTO = AUTO
string MODE_APM_COPTER_GUIDED = GUIDED
string MODE_APM_COPTER_LOITER = LOITER
string MODE_APM_COPTER_RTL = RTL
string MODE_APM_COPTER_CIRCLE = CIRCLE
string MODE_APM_COPTER_POSITION = POSITION
string MODE_APM_COPTER_LAND = LAND
string MODE_APM_COPTER_OF_LOITER = OF_LOITER
string MODE_APM_COPTER_DRIFT = DRIFT
string MODE_APM_COPTER_SPORT = SPORT
string MODE_APM_COPTER_FLIP = FLIP
string MODE_APM_COPTER_AUTOTUNE = AUTOTUNE
string MODE_APM_COPTER_POSHOLD = POSHOLD
string MODE_APM_COPTER_BRAKE = BRAKE
string MODE_APM_COPTER_THROW = THROW
string MODE_APM_COPTER_AVOID_ADSB = AVOID_ADSB
string MODE_APM_COPTER_GUIDED_NOGPS = GUIDED_NOGPS

string MODE_APM_ROVER_MANUAL = MANUAL
string MODE_APM_ROVER_LEARNING = LEARNING
string MODE_APM_ROVER_STEERING = STEERING
string MODE_APM_ROVER_HOLD = HOLD
string MODE_APM_ROVER_AUTO = AUTO
string MODE_APM_ROVER_RTL = RTL
string MODE_APM_ROVER_GUIDED = GUIDED
string MODE_APM_ROVER_INITIALISING = INITIALISING

string MODE_PX4_MANUAL = MANUAL
string MODE_PX4_ACRO = ACRO
string MODE_PX4_ALTITUDE = ALTCTL
string MODE_PX4_POSITION = POSCTL
string MODE_PX4_OFFBOARD = OFFBOARD
string MODE_PX4_STABILIZED = STABILIZED
string MODE_PX4_RATTITUDE = RATTITUDE
string MODE_PX4_MISSION = AUTO.MISSION
string MODE_PX4_LOITER = AUTO.LOITER
string MODE_PX4_RTL = AUTO.RTL
string MODE_PX4_LAND = AUTO.LAND
string MODE_PX4_RTGS = AUTO.RTGS
string MODE_PX4_READY = AUTO.READY
string MODE_PX4_TAKEOFF = AUTO.TAKEOFF

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

''';
  }

// Constants for message
  static const String MODE_APM_PLANE_MANUAL = 'MANUAL';
  static const String MODE_APM_PLANE_CIRCLE = 'CIRCLE';
  static const String MODE_APM_PLANE_STABILIZE = 'STABILIZE';
  static const String MODE_APM_PLANE_TRAINING = 'TRAINING';
  static const String MODE_APM_PLANE_ACRO = 'ACRO';
  static const String MODE_APM_PLANE_FBWA = 'FBWA';
  static const String MODE_APM_PLANE_FBWB = 'FBWB';
  static const String MODE_APM_PLANE_CRUISE = 'CRUISE';
  static const String MODE_APM_PLANE_AUTOTUNE = 'AUTOTUNE';
  static const String MODE_APM_PLANE_AUTO = 'AUTO';
  static const String MODE_APM_PLANE_RTL = 'RTL';
  static const String MODE_APM_PLANE_LOITER = 'LOITER';
  static const String MODE_APM_PLANE_LAND = 'LAND';
  static const String MODE_APM_PLANE_GUIDED = 'GUIDED';
  static const String MODE_APM_PLANE_INITIALISING = 'INITIALISING';
  static const String MODE_APM_PLANE_QSTABILIZE = 'QSTABILIZE';
  static const String MODE_APM_PLANE_QHOVER = 'QHOVER';
  static const String MODE_APM_PLANE_QLOITER = 'QLOITER';
  static const String MODE_APM_PLANE_QLAND = 'QLAND';
  static const String MODE_APM_PLANE_QRTL = 'QRTL';
  static const String MODE_APM_COPTER_STABILIZE = 'STABILIZE';
  static const String MODE_APM_COPTER_ACRO = 'ACRO';
  static const String MODE_APM_COPTER_ALT_HOLD = 'ALT_HOLD';
  static const String MODE_APM_COPTER_AUTO = 'AUTO';
  static const String MODE_APM_COPTER_GUIDED = 'GUIDED';
  static const String MODE_APM_COPTER_LOITER = 'LOITER';
  static const String MODE_APM_COPTER_RTL = 'RTL';
  static const String MODE_APM_COPTER_CIRCLE = 'CIRCLE';
  static const String MODE_APM_COPTER_POSITION = 'POSITION';
  static const String MODE_APM_COPTER_LAND = 'LAND';
  static const String MODE_APM_COPTER_OF_LOITER = 'OF_LOITER';
  static const String MODE_APM_COPTER_DRIFT = 'DRIFT';
  static const String MODE_APM_COPTER_SPORT = 'SPORT';
  static const String MODE_APM_COPTER_FLIP = 'FLIP';
  static const String MODE_APM_COPTER_AUTOTUNE = 'AUTOTUNE';
  static const String MODE_APM_COPTER_POSHOLD = 'POSHOLD';
  static const String MODE_APM_COPTER_BRAKE = 'BRAKE';
  static const String MODE_APM_COPTER_THROW = 'THROW';
  static const String MODE_APM_COPTER_AVOID_ADSB = 'AVOID_ADSB';
  static const String MODE_APM_COPTER_GUIDED_NOGPS = 'GUIDED_NOGPS';
  static const String MODE_APM_ROVER_MANUAL = 'MANUAL';
  static const String MODE_APM_ROVER_LEARNING = 'LEARNING';
  static const String MODE_APM_ROVER_STEERING = 'STEERING';
  static const String MODE_APM_ROVER_HOLD = 'HOLD';
  static const String MODE_APM_ROVER_AUTO = 'AUTO';
  static const String MODE_APM_ROVER_RTL = 'RTL';
  static const String MODE_APM_ROVER_GUIDED = 'GUIDED';
  static const String MODE_APM_ROVER_INITIALISING = 'INITIALISING';
  static const String MODE_PX4_MANUAL = 'MANUAL';
  static const String MODE_PX4_ACRO = 'ACRO';
  static const String MODE_PX4_ALTITUDE = 'ALTCTL';
  static const String MODE_PX4_POSITION = 'POSCTL';
  static const String MODE_PX4_OFFBOARD = 'OFFBOARD';
  static const String MODE_PX4_STABILIZED = 'STABILIZED';
  static const String MODE_PX4_RATTITUDE = 'RATTITUDE';
  static const String MODE_PX4_MISSION = 'AUTO.MISSION';
  static const String MODE_PX4_LOITER = 'AUTO.LOITER';
  static const String MODE_PX4_RTL = 'AUTO.RTL';
  static const String MODE_PX4_LAND = 'AUTO.LAND';
  static const String MODE_PX4_RTGS = 'AUTO.RTGS';
  static const String MODE_PX4_READY = 'AUTO.READY';
  static const String MODE_PX4_TAKEOFF = 'AUTO.TAKEOFF';

}

