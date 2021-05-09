import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatefulWidget {
  final String iconURL;
  final String name;
  var onPressCallback;

  IconBtn({this.iconURL, this.name, this.onPressCallback});

  @override
  _IconBtnState createState() => _IconBtnState();
}

class _IconBtnState extends State<IconBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 100,
                width: 100,
                child: FloatingActionButton(
                  backgroundColor: Color(0xffF0F0F0),
                  foregroundColor: Color(0xFFAFAFAF),
                  onPressed: () {widget.onPressCallback();},
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: ImageIcon(AssetImage(widget.iconURL))),
                )),
            SizedBox(height: 8),
            Text(widget.name),
          ],
        ));
  }
}
