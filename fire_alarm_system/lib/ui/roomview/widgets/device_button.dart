import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/roomview/models/device_info.dart';
import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

// int isOneTime = 0;
// enum ScreenState { init, fire, normal }

// ScreenState scrState;

Color setColor(
    bool pumpState, bool ledState, bool buzzerState, String nameBtn) {
  if (pumpState && nameBtn == "Pump water") {
    return Color(0xffFF9900);
  }

  if (ledState && nameBtn == "LED") {
    return Color(0xffFF9900);
  }

  if (buzzerState && nameBtn == "Buzzer") {
    return Color(0xffFF9900);
  }
  return LightThemeColors.primary;
}

class DeviceButton extends StatefulWidget {
  final DeviceInfo deviceInfo;
  final int situtionState;
  bool btnOpened = false;
  var onPress;

  DeviceButton({
    Key key,
    @required this.deviceInfo,
    @required this.situtionState,
    this.onPress,
    this.btnOpened
  }) : super(key: key);

  @override
  _DeviceButtonState createState() => _DeviceButtonState();
}

class _DeviceButtonState extends State<DeviceButton> {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.btnOpened = !widget.btnOpened;
              widget.onPress(widget.deviceInfo.deviceName,widget.btnOpened);
            });
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: widget.btnOpened ? Color(0xffFF9900) : LightThemeColors.primary,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(6),
              child: widget.deviceInfo.image,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${widget.deviceInfo.deviceName}",
          style: TextStyle(
            color: LightThemeColors.contrast,
            fontFamily: ThemeText.textStyle,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
