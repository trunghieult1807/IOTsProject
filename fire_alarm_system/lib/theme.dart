import 'package:flutter/material.dart';

class LightThemeColors {
  static const Color primary = Color(0xeaeaeaea);
  static const Color secondary = Color(0xff1f1f1f);
  static const Color darkGreen = Color(0xff47634E);
  static const Color contrast = Color(0xff1e1e1e);

}

class ThemeText {
  static const String textStyle = 'textTheme';
}



class MyBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: false).pop(context);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 30,
          width: 30,
          child: Center(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black45,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
