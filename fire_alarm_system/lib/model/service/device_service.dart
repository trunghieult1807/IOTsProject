import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_alarm_system/model/core/device_schema.dart';
import 'package:fire_alarm_system/model/core/room_schema.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:uuid/uuid.dart';


class DeviceService {
  static final FirebaseFirestore db = FirebaseFirestore.instance;

  static Future<List<Device>> getAllDeviceInRoom(RoomInfo room) async {
    var snapshot = await db
        .collection('users')
        .doc(room.userID)
        .collection('roomList')
        .doc(room.roomId)
        .collection('DeviceList')
        .get();
    return snapshot.docs.map((doc) => Device(room.userID, room.userID, doc.id,
        doc['deviceName'], doc['deviceImg'], doc['deviceType'])).toList();
  }

  static Future<List<Device>> getAllDeviceOfUser() async {
    QuerySnapshot roomSnapshot = await db
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser.uid)
        .collection('roomList')
        .get();

    var listOfDeviceList = await Future.wait(roomSnapshot.docs.map((roomDoc) async{
      var devicesSnapshot = await db.collection('users').doc(FirebaseAuth.instance.currentUser.uid)
          .collection('roomList')
          .doc(roomDoc.id)
          .collection('DeviceList')
          .get();
      return devicesSnapshot.docs
          .map((deviceDoc) => Device(
          FirebaseAuth.instance.currentUser.uid,
          roomDoc.id,
          deviceDoc.id,
          deviceDoc['deviceName'],
          deviceDoc['deviceImg'],
          deviceDoc['deviceType'])).toList();
    }));

    return listOfDeviceList.fold<List<Device>>([], (acc, ele) {
      acc.addAll(ele);
      return acc;
    });
  }

  static void createOrEditDevice(Device newDevice){
    //to edit, set the newRoom.roomId to an existing room in firestore that you want to edit
    String uID = newDevice.userID == null ? FirebaseAuth.instance.currentUser.uid: newDevice.userID;
    String dID = newDevice.dID == null ? Uuid().v4(): newDevice.dID;
    db.collection("users").doc(uID).collection("roomList").doc(newDevice.roomID).collection('DeviceList')
    .doc(dID).set({
      'deviceName': newDevice.dName,
      'deviceImg': newDevice.dImg,
      'deviceType': newDevice.dType,
    });
  }
}
