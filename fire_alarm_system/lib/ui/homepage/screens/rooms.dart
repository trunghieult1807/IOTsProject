import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/homepage/models/room_info.dart';
import 'package:fire_alarm_system/ui/homepage/widgets/rooms_card.dart';
import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [
      RoomsCard(
        roomInfo: RoomInfo(
          Image(
            image: AssetImage('assets/images/icons/livingroom.png'),
          ),
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ),
      RoomsCard(
        roomInfo: RoomInfo(
          Image(
            image: AssetImage('assets/images/icons/livingroom.png'),
          ),
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ),
      RoomsCard(
        roomInfo: RoomInfo(
          Image(
            image: AssetImage('assets/images/icons/livingroom.png'),
          ),
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ),
      RoomsCard(
        roomInfo: RoomInfo(
          Image(
            image: AssetImage('assets/images/icons/livingroom.png'),
          ),
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ),
      RoomsCard(
        roomInfo: RoomInfo(
          Image(
            image: AssetImage('assets/images/icons/livingroom.png'),
          ),
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ),
      RoomsCard(
        roomInfo: RoomInfo(
          Image(
            image: AssetImage('assets/images/icons/livingroom.png'),
          ),
          "Living Room",
          "30C",
          "Normal",
          "OK",
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: LightThemeColors.primary,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          0,
        ),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return cards[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
