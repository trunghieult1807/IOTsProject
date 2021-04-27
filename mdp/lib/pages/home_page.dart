import 'package:flutter/material.dart';
import 'package:mdp/widgets/home_background.dart';
import 'package:mdp/widgets/home_backdrop_filter.dart';
import 'package:mdp/widgets/rooms_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const HomeBackground(),
            const HomeBackdropFilter(
              child: RoomsList(),
            )
          ],
        ),
      )
    );
  }
}
