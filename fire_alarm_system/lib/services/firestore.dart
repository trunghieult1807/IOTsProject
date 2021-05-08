import 'package:fire_alarm_system/ui/homepage/models/room_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  List<RoomInfo> _roomListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return RoomInfo.db(
        doc["roomId"],
        doc["imageId"],
        doc["roomName"],
      );
    }).toList();
  }

  Stream<List<RoomInfo>> streamRoomList(User user) {
    return _db
        .collection('users')
        .doc(user.uid)
        .collection('roomList')
        .snapshots()
        .map(_roomListFromSnapshot);
  }
}
