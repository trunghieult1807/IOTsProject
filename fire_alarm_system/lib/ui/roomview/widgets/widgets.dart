import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  final Image image;
  final String roomName;

  Widgets({
    Key key,
    @required this.image,
    @required this.roomName,
  }) : super(key: key);

  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Text('${widget.roomName}');
  }
}
