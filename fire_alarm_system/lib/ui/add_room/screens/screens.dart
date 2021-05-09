import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_alarm_system/model/core/room_schema.dart';
import 'package:fire_alarm_system/model/model_export.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/add_room/widgets/iconBtn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AddRoom extends StatefulWidget {
  @override
  _AddRoomState createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> {
  String roomImg = '';
  TextEditingController roomNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff2A2A37),
        leading: MyBackButton(),
        // BackButton(
        //   color: Colors.white,
        // ),
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
              onPressed: () {
                RoomService.createOrEditRoom(RoomInfo.db(null, null, this.roomImg, this.roomNameController.text));

                Navigator.of(context, rootNavigator: false).pop(context);},
                ),
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
              controller: roomNameController,
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
                GestureDetector(
                  child: IconBtn(
                    iconURL: "assets/images/icons/kitchen.png",
                    name: "Kitchen",
                    onPressCallback: () {
                      roomImg = "kitchen";
                    },
                  ),
                ),
                IconBtn(
                  iconURL: "assets/images/icons/bedroom.png",
                  name: "BedRoom",
                  onPressCallback: () {
                    roomImg = "bedroom";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/bathroom.png",
                  name: "BathRoom",
                  onPressCallback: () {
                    roomImg = "bathroom";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/office.png",
                  name: "Office",
                  onPressCallback: () {
                    roomImg = "office";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/tvroom.png",
                  name: "TV Room",
                  onPressCallback: () {
                    roomImg = "tvroom";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/livingroom.png",
                  name: "Living Room",
                  onPressCallback: () {
                    roomImg = "livingroom";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/garage.png",
                  name: "Garage",
                  onPressCallback: () {
                    roomImg = "garage";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/toilet.png",
                  name: "Toilet",
                  onPressCallback: () {
                    roomImg = "toilet";
                  },
                ),
                IconBtn(
                  iconURL: "assets/images/icons/kidroom.png",
                  name: "Kidroom",
                  onPressCallback: () {
                    roomImg = "kidroom";
                  },
                ),
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
