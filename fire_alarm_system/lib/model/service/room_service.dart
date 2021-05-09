import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_alarm_system/model/core/device_schema.dart';
import 'package:fire_alarm_system/model/core/room_schema.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:uuid/uuid.dart';

class RoomService {
  static final FirebaseFirestore db = FirebaseFirestore.instance;

  static Future<List<RoomInfo>> getAllRoom() async {
    String uid = FirebaseAuth.instance.currentUser.uid;
    var snapshot = await db
        .collection('users')
        .doc(uid)
        .collection('roomList')
        .get();
    return snapshot.docs.map((doc) => RoomInfo.db(uid, doc.id,
        doc['imageId'], doc['roomName']));
  }

  static void createOrEditRoom(RoomInfo newRoom){
    //to edit, set the newRoom.roomId to an existing room in firestore that you want to edit
    String uID = newRoom.userID == null ? FirebaseAuth.instance.currentUser.uid: newRoom.userID;
    String rID = newRoom.roomId == null ? Uuid().v4(): newRoom.roomId;
    db.collection("users").doc(uID).collection("roomList").doc(rID)
        .set({
      "roomId": rID,
      "imageId": newRoom.imageId,
      "roomName": newRoom.roomName,
    });
  }
}