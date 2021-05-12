import 'package:flutter/material.dart';
import 'package:fire_alarm_system/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignoutScreen extends StatelessWidget {
  final AuthService authBase = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text('Logged in as userID:'),
            Text(FirebaseAuth.instance.currentUser == null ? 'None' : FirebaseAuth.instance.currentUser.uid),
            TextButton(
              child: Text('Sign out'),
              onPressed: () async {
                await authBase.signOut();
                // Navigator.of(context).pushReplacementNamed('login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
