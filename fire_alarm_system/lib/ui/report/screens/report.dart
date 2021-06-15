import 'package:fire_alarm_system/model/model_export.dart';
import 'package:fire_alarm_system/ui/report/widgets/chart.dart';
import 'package:fire_alarm_system/ui/report/widgets/summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  List<RoomInfo> roomList = [];
  RoomInfo selectedRoom = null;
  List<Device> devices = [];
  int numOfTemp = 0;
  int numOfGas = 0;
  int numOfPump = 0;
  int numOfLed = 0;
  int numOfBuzz = 0;

  _ReportState() {
    RoomService.getAllRoom().then((value) => {
          setState(() {
            this.roomList = value;
          })
        });
  }

  void handleSelectedRoom(RoomInfo room) {
    DeviceService.getAllDeviceInRoom(room).then((value) {
      setState(() {
        this.selectedRoom = room;
        this.devices = value;

        // reset
        this.numOfTemp = 0;
        this.numOfGas = 0;
        this.numOfPump = 0;
        this.numOfLed = 0;
        this.numOfBuzz = 0;

        for (var device in devices) {
          print(device.dType);
          if (device.dType == 1) {
            this.numOfTemp += 1;
          } else if (device.dType == 2) {
            this.numOfGas += 1;
          } else if (device.dType == 3) {
            this.numOfLed += 1;
          } else if (device.dType == 4) {
            this.numOfBuzz += 1;
          } else if (device.dType == 5) {
            this.numOfPump += 1;
          }
        }
      });

      print('room name: ' + this.selectedRoom.roomName);
      print('total devices ' + this.devices.length.toString());
      print('temps ' + this.numOfTemp.toString());
      print('gas ' + this.numOfGas.toString());
      print('pump ' + this.numOfPump.toString());
      print('led ' + this.numOfLed.toString());
      print('buzz ' + this.numOfBuzz.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text("Report",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30)),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black87, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                      (this.selectedRoom != null)
                          ? this.selectedRoom.roomName
                          : '',
                      style: TextStyle(color: Colors.white)),
                  Chart(isShow: this.numOfTemp),
                  Summary(),
                  ElevatedButton(
                    child: Text('Select room'),
                    onPressed: () => showMaterialScrollPicker<RoomInfo>(
                      context: context,
                      title: 'Choose a room',
                      showDivider: false,
                      items: this.roomList,
                      selectedItem: this.selectedRoom,
                      onChanged: (value) {
                        this.handleSelectedRoom(value);
                      },
                    ),
                  )
                ],
              ))),
    );
  }
}
