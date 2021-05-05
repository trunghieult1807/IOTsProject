import 'package:fire_alarm_system/ui/auth/screens/login.dart';
import 'package:fire_alarm_system/ui/auth/screens/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginPage(toggleView:  toggleView);
    } else {
      return RegisterPage(toggleView:  toggleView);
    }
  }
}