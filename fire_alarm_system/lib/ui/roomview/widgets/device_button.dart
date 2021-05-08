import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/roomview/models/device_info.dart';
import 'package:flutter/material.dart';

class DeviceButton extends StatefulWidget {
  final DeviceInfo deviceInfo;

  DeviceButton({
    Key key,
    @required this.deviceInfo,
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
            print("Open ${widget.deviceInfo.deviceName}");
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: LightThemeColors.primary,
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
