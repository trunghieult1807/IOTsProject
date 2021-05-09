import 'package:fire_alarm_system/ui/add_room/widgets/iconBtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDevice extends StatefulWidget {
  @override
  _AddDeviceState createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff2A2A37),
        leading: BackButton(),
        title: Text("Add Devices"),
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
          SizedBox(height: 10),
          Text(
            "Choose the device type",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          SizedBox(
              height: 270,
              child: GridView.count(
                crossAxisCount: 3,
                children: <Widget>[
                  IconBtn(
                      iconURL: "assets/images/icons/pump.png", name: "Pump"),
                  IconBtn(
                      iconURL: "assets/images/icons/circuitRelay.png",
                      name: "Cỉcuit Relay"),
                  IconBtn(
                      iconURL: "assets/images/icons/thermalSensor.png",
                      name: "Thermal Sensor"),
                  IconBtn(
                      iconURL: "assets/images/icons/gasSensor.png",
                      name: "Gas Sensor"),
                  IconBtn(
                      iconURL: "assets/images/icons/buzzer.png",
                      name: "Buzzer"),
                  IconBtn(iconURL: "assets/images/icons/led.png", name: "LED")
                ],
              )),
          Container(
            height: 4,
            child: Divider(
                color: Colors.black, thickness: 2, indent: 10, endIndent: 10),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
            child: Text(
              "Enter device's name:",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD3D3D3)),
                        borderRadius: BorderRadius.circular(12)))),
          ),
          SizedBox(height: 15),
          Text(
            "Select the room for the device",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Expanded(
              child: GridView.count(crossAxisCount: 3, mainAxisSpacing: 10, children: <Widget>[
            IconBtn(
                iconURL: "assets/images/icons/kitchen.png", name: "Kitchen"),
            IconBtn(
                iconURL: "assets/images/icons/bedroom.png", name: "BedRoom"),
            IconBtn(
                iconURL: "assets/images/icons/bathroom.png", name: "BathRoom"),
            IconBtn(
                iconURL: "assets/images/icons/office.png", name: "Living Room"),
            IconBtn(iconURL: "assets/images/icons/tvroom.png", name: "BedRoom"),
            IconBtn(
                iconURL: "assets/images/icons/livingroom.png",
                name: "BathRoom"),
            IconBtn(
                iconURL: "assets/images/icons/garage.png", name: "Living Room"),
            IconBtn(iconURL: "assets/images/icons/toilet.png", name: "BedRoom"),
            IconBtn(
                iconURL: "assets/images/icons/kidroom.png", name: "BathRoom"),
          ]))
        ],
      ),
    );
  }
}
