import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

enum DeviceType{
  tempSensor, gasSensor, pump, circuitRelay
}

class DeviceStatus{//might not be a good class in 'flutter way', but I'm only familiar with this C++ class style, fix it to be more 'flutter' if you wish
  String deviceName = 'generic device';
  String status = 'unknown';
  DeviceType type = DeviceType.tempSensor;
  DeviceStatus(String deviceName, String status, DeviceType type){
    this.deviceName = deviceName;
    this.status = status;
    this.type = type;
  }
}

class RoomView extends StatefulWidget {
  @override
  _RoomViewState createState() => _RoomViewState(roomName: "Kitchen",
      deviceStatusList: [DeviceStatus("Stove Temperature Sensor", "37C", DeviceType.tempSensor),
        DeviceStatus("The Pump", "ready", DeviceType.pump) ]);
}

class _RoomViewState extends State<RoomView> {
  _RoomViewState({Key key, String roomName = "roomview", List<DeviceStatus> deviceStatusList}) : super() {
    this.roomName = roomName;
    this.deviceStatusList = deviceStatusList;
  }

  String roomName = '';
  String situation = 'OK';
  bool _autofire = true;
  List<DeviceStatus> deviceStatusList = [];
  //testing the new slider, could be change later
  final slider = SleekCircularSlider(
      appearance: CircularSliderAppearance(),
      onChangeEnd: (double value) {
        print(value);
      });

  final pumpButtonImage = Image.asset('assets/images/icons/pumpButton.png');
  final breakerButtonImage = Image.asset('assets/images/icons/breakerButton.png');
  
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
            Row(children: [
              Text("Situation: " + this.situation),
              Text("Auto fire control"),
              Switch(
                value: _autofire,
                onChanged: (bool newValue) {
                  setState(() {
                    _autofire = newValue;
                  });
                },
              ),
            ]),
            
            slider,
            
            for(var d in this.deviceStatusList) Text(d.deviceName + ": " + d.status),
            
            Row(children: [
              IconButton(icon: pumpButtonImage, iconSize: 30, onPressed: ()=>{print('open pump')}),
              IconButton(icon: breakerButtonImage, iconSize: 30, onPressed: ()=>{print('open circuit')})
            ]),
            
          ],
        ),
      ),
    );
  }
}
