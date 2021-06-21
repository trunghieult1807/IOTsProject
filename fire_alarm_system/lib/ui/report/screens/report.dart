import 'package:fire_alarm_system/model/model_export.dart';
import 'package:fire_alarm_system/ui/report/widgets/chart.dart';
import 'package:fire_alarm_system/ui/report/widgets/summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:fire_alarm_system/ui/homepage/utils/utils.dart';

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
  int numOfCircuit = 0;

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
        this.numOfCircuit = 0;

        for (var device in devices) {
          if (device.dType == 1) {
            this.numOfTemp += 1;
          } else if (device.dType == 2) {
            this.numOfGas += 1;
          } else if (device.dType == 3) {
            this.numOfLed += 1;
          } else if (device.dType == 4) {
            this.numOfBuzz += 1;
          } else if (device.dType == 5) {
            this.numOfCircuit += 1;
          } else if (device.dType == 6) {
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
      print('circuit ' + this.numOfCircuit.toString());
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
              child: ListView(
                children: <Widget>[
                  Chart(isShow: this.numOfTemp),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: getImageFromId((selectedRoom != null
                                  ? selectedRoom.imageId
                                  : "livingroom"))),
                          Text(
                              (this.selectedRoom != null)
                                  ? this.selectedRoom.roomName
                                  : 'No room selected',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15)),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue.shade700)),
                            child: Text('Select room',
                                style: TextStyle(fontSize: 15)),
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
                      )),
                  Summary(
                      numOfGas: this.numOfGas,
                      numOfPump: this.numOfPump,
                      numOfLed: this.numOfLed,
                      numOfBuzz: this.numOfBuzz,
                      numOfCircuit: this.numOfCircuit),
                ],
              ))),
    );
  }
}
