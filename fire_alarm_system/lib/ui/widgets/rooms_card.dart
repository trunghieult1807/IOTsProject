import 'dart:math';

import 'package:fire_alarm_system/theme.dart';
import 'package:flutter/material.dart';

class RoomsCard extends StatefulWidget {
  final Image image;
  final String room_name;

  RoomsCard({
    Key key,
    @required this.image,
    @required this.room_name,
  }) : super(key: key);

  @override
  _RoomsCardState createState() => _RoomsCardState();
}

class _RoomsCardState extends State<RoomsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.red,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Container(
                child: Container(
                  height: 80,
                  width: 80,
                  child: widget.image,
                ),
              ),
              Text(
                widget.room_name,
              )
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "widget.taskList.title",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'theme',
                      fontSize: 10.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
