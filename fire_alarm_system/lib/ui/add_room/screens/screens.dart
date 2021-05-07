import 'package:fire_alarm_system/ui/iconBtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddRoom extends StatefulWidget {
  @override
  _AddRoomState createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff2A2A37),
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          "Add Room",
        ),
        actions: <Widget>[
          IconButton(
              constraints: BoxConstraints.expand(width: 80),
              icon: Text(
                "Save",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
            child: Text(
              "Enter Room's name:",
              style: TextStyle(color: Color(0xFF979797), fontFamily: "Arial"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xFFD3D3D3)))),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
            child: Text("Select room's icon",
                style: TextStyle(color: Color(0xFF979797))),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 18,
              children: <Widget>[
                IconBtn(
                    iconURL: "assets/images/icons/kitchen.png",
                    name: "Kitchen"),
                IconBtn(
                    iconURL: "assets/images/icons/bedroom.png",
                    name: "BedRoom"),
                IconBtn(
                    iconURL: "assets/images/icons/bathroom.png",
                    name: "BathRoom"),
                IconBtn(
                    iconURL: "assets/images/icons/office.png",
                    name: "Living Room"),
                IconBtn(
                    iconURL: "assets/images/icons/tvroom.png", name: "BedRoom"),
                IconBtn(
                    iconURL: "assets/images/icons/livingroom.png",
                    name: "BathRoom"),
                IconBtn(
                    iconURL: "assets/images/icons/garage.png",
                    name: "Living Room"),
                IconBtn(
                    iconURL: "assets/images/icons/toilet.png", name: "BedRoom"),
                IconBtn(
                    iconURL: "assets/images/icons/kidroom.png",
                    name: "BathRoom"),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(260, 0, 0, 20),
              child: FloatingActionButton.extended(
                  backgroundColor: Color(0xFF597360),
                  foregroundColor: Colors.black,
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Room")))
        ],
      ),
    );
  }
}
