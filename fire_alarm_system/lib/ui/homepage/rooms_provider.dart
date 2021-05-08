import 'package:fire_alarm_system/services/firestore.dart';
import 'package:fire_alarm_system/ui/homepage/models/room_info.dart';
import 'package:fire_alarm_system/ui/homepage/screens/rooms.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoomsProvider extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser;
  final db = FirestoreService();

  @override
  Widget build(BuildContext context) {
    print(user.uid);
    return StreamProvider<List<RoomInfo>>(
      create: (_) {
        return db.streamRoomList(user);
      },
      initialData: [
        RoomInfo(
          "1",
          "livingroom",
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ],
      child: Rooms(),
    );
  }
}
