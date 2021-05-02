import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String uid;

  UserModel({@required this.uid});
}

class AuthBase {
  UserModel _userFromFirebase(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential authResult = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(authResult.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(authResult.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
