import 'package:flutter/material.dart';

class RoomsCard extends StatefulWidget {
  final Image image;
  final String roomName;

  RoomsCard({
    Key key,
    @required this.image,
    @required this.roomName,
  }) : super(key: key);

  @override
  _RoomsCardState createState() => _RoomsCardState();
}

class _RoomsCardState extends State<RoomsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.red,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    height: 80,
                    width: 80,
                    child: widget.image,
                  ),
                ),
                Text(
                  widget.roomName,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Content",
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
