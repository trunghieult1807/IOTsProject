import 'package:flutter/material.dart';

class RoomView extends StatefulWidget {
  @override
  _RoomViewState createState() => _RoomViewState();
}

class _RoomViewState extends State<RoomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
          ),
        ],
        // onPressed: () {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //       const SnackBar(content: Text('This is a snackbar')));
        // },
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          0,
        ),
      ),
    );
  }
}
