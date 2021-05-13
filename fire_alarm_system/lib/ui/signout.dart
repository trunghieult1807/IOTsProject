import 'package:flutter/material.dart';
import 'package:fire_alarm_system/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignoutScreen extends StatelessWidget {
  final AuthService authBase = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Text('Logged in as userID:', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20,),
            Text(FirebaseAuth.instance.currentUser == null ? 'None' : FirebaseAuth.instance.currentUser.uid,
                style: TextStyle(fontSize: 17, color: Colors.deepPurple)
            ),
            SizedBox(height: 20,),
            TextButton(
              child: Text('Sign out', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),),
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
