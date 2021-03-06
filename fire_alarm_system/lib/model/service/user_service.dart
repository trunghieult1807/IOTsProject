import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class UserService{
  static final FirebaseFirestore db = FirebaseFirestore.instance;

  static  Future<int> getFireThreshold() async{
    if(FirebaseAuth.instance.currentUser == null){
      return 0;
    }
    String uid = FirebaseAuth.instance.currentUser.uid;
    return (await db.collection('users').doc(uid).get())['fireThreshold'];
  }

  static void setFireThreshold(int newThreshold){
    String uid = FirebaseAuth.instance.currentUser.uid;
    db.collection('users').doc(uid).update({'fireThreshold': newThreshold});
  }

  static Future<int> getWarningThreshold() async{
    if(FirebaseAuth.instance.currentUser == null){
      return 0;
    }
    String uid = FirebaseAuth.instance.currentUser.uid;
    return (await db.collection('users').doc(uid).get())['warningThreshold'];
  }

  static void setWarningThreshold(int newThreshold){
    String uid = FirebaseAuth.instance.currentUser.uid;
    db.collection('users').doc(uid).update({'warningThreshold': newThreshold});
  }

  static Stream<int> getFireThresholdStream(){ //don't use this
    String uid = FirebaseAuth.instance.currentUser.uid;
    return db.collection('users').doc(uid).snapshots().map((snapshot) => snapshot['fireThreshold']);
  }
  static Stream<int> getWarningThresholdStream(){ //don't use this
    String uid = FirebaseAuth.instance.currentUser.uid;
    return db.collection('users').doc(uid).snapshots().map((snapshot) => snapshot['warningThreshold']);
  }
}