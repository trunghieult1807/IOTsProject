import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class UserService{
  static final FirebaseFirestore db = FirebaseFirestore.instance;

  static  Future<int> getFireThreshold() async{
    String uid = FirebaseAuth.instance.currentUser.uid;
    return (await db.collection('users').doc(uid).get())['fireThreshold'];
  }

  static void setFireThreshold(int newThreshold){
    String uid = FirebaseAuth.instance.currentUser.uid;
    db.collection('users').doc(uid).update({'fireThreshold': newThreshold});
  }

  static Future<int> getWarningThreshold() async{
    String uid = FirebaseAuth.instance.currentUser.uid;
    return (await db.collection('users').doc(uid).get())['warningThreshold'];
  }

  static void setWarningThreshold(int newThreshold){
    String uid = FirebaseAuth.instance.currentUser.uid;
    db.collection('users').doc(uid).update({'warningThreshold': newThreshold});
  }

  static Stream<int> getFireThresholdStream(){
    String uid = FirebaseAuth.instance.currentUser.uid;
    return db.collection('users').doc(uid).snapshots().map((snapshot) => snapshot['fireThreshold']);
  }
  static Stream<int> getWarningThresholdStream(){
    String uid = FirebaseAuth.instance.currentUser.uid;
    return db.collection('users').doc(uid).snapshots().map((snapshot) => snapshot['warningThreshold']);
  }
}