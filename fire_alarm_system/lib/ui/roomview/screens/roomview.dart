import 'package:fire_alarm_system/ui/roomview/models/device_info.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/circular_indicator.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/device_button.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/power_button.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

enum DeviceType { tempSensor, gasSensor, pump, circuitRelay }

class DeviceStatus {
  //might not be a good class in 'flutter way', but I'm only familiar with this C++ class style, fix it to be more 'flutter' if you wish
  String deviceName = 'generic device';
  String status = 'unknown';
  DeviceType type = DeviceType.tempSensor;

  DeviceStatus(String deviceName, String status, DeviceType type) {
    this.deviceName = deviceName;
    this.status = status;
    this.type = type;
  }
}

class RoomView extends StatefulWidget {
  @override
  _RoomViewState createState() =>
      _RoomViewState(roomName: "Kitchen", deviceStatusList: [
        DeviceStatus("Stove Temperature Sensor", "37C", DeviceType.tempSensor),
        DeviceStatus("The Pump", "ready", DeviceType.pump)
      ]);
}

class _RoomViewState extends State<RoomView> {
  _RoomViewState(
      {Key key,
      String roomName = "roomview",
      List<DeviceStatus> deviceStatusList})
      : super() {
    this.roomName = roomName;
    this.deviceStatusList = deviceStatusList;
  }

  String roomName = '';
  String situation = 'OK';
  bool _autofire = true;
  List<DeviceStatus> deviceStatusList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.roomName),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Situation: " + this.situation),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Auto fire control"),
                    SwitchButton(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CircularIndicator(initialVal: 30),
            SizedBox(
              height: 30,
            ),
            for (var d in this.deviceStatusList)
              Text(d.deviceName + ": " + d.status),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DeviceButton(
                  deviceInfo: DeviceInfo(
                    Image(
                      image: AssetImage('assets/images/icons/pumpButton.png'),
                    ),
                    "Pump water",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                DeviceButton(
                  deviceInfo: DeviceInfo(
                    Image(
                      image:
                          AssetImage('assets/images/icons/breakerButton.png'),
                    ),
                    "Break circuit",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            PowerButton(),
          ],
        ),
      ),
    );
  }
}
