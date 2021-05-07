import 'package:fire_alarm_system/theme.dart';
import 'package:flutter/material.dart';

class PowerButton extends StatefulWidget {
  @override
  _PowerButtonState createState() => _PowerButtonState();
}

class _PowerButtonState extends State<PowerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tapped power");
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: LightThemeColors.primary,
          shape: BoxShape.circle,
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
          child: Icon(Icons.power_settings_new_sharp)
        ),
      ),
    );
  }
}
