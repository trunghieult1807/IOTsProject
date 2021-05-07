import 'package:fire_alarm_system/controllers/navigation_bar_controller.dart';
import 'package:fire_alarm_system/services/auth.dart';
import 'package:fire_alarm_system/ui/auth/controllers/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return NavigationBarController();
    }
  }
}
