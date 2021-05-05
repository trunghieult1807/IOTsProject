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
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
      RoomsCard(
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
      RoomsCard(
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
      RoomsCard(
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
      RoomsCard(
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
      RoomsCard(
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
      RoomsCard(
        image: Image(
          image: AssetImage('assets/images/icons/livingroom.png'),
        ),
        roomName: "Living Room",
      ),
    ];
    return Scaffold(
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
              )
            ),
          ],
        ),
      ),
    );
  }
}
