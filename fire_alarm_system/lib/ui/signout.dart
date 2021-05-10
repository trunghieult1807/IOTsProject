import 'package:flutter/material.dart';
import 'package:fire_alarm_system/services/auth.dart';

class SignoutScreen extends StatelessWidget {
  final AuthService authBase = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Sign out'),
          onPressed: () async {
            await authBase.signOut();
            // Navigator.of(context).pushReplacementNamed('login');
          },
        ),
      ),
    );
  }
}
