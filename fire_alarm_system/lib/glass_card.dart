import 'dart:ui';

import 'package:fire_alarm_system/theme.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class FrostedGlassBox extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlassBox(
      {Key key,
        @required this.width,
        @required this.height,
        @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 9.0,
                sigmaY: 9.0,
              ),
              child: Container(
                width: width,
                height: height,
                child: Text(" "),
              ),
            ),
            Opacity(
              opacity: 0.05,
              child: Image.asset(
                "assets/images/noise.png",
                fit: BoxFit.cover,
                width: width,
                height: height,
              ),
            ),
            OutlineGradientButton(
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent.withOpacity(0.3),
                  Colors.indigo.withOpacity(0.3),
                  Colors.redAccent.withOpacity(0.3),
                  Colors.indigo.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              strokeWidth: 0.5,
              radius: Radius.circular(10),
              backgroundColor: Colors.black45.withOpacity(0.1),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
