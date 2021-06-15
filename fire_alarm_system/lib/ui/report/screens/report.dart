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

  _ReportState() {
    RoomService.getAllRoom().then((value) => {
          setState(() {
            this.roomList = value;
          })
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
                  Chart(),
                  Summary(),
                  ElevatedButton(
                    child: (this.selectedRoom != null)
                        ? Text('Select room ')
                        : Text(this.selectedRoom.roomName),
                    onPressed: () => showMaterialScrollPicker<RoomInfo>(
                      context: context,
                      title: 'Choose a room',
                      showDivider: false,
                      items: this.roomList,
                      selectedItem: this.selectedRoom,
                      onChanged: (value) =>
                          setState(() => this.selectedRoom = value),
                      onCancelled: () => print('Scroll Picker cancelled'),
                      onConfirmed: () => print(this.selectedRoom),
                    ),
                  )
                ],
              ))),
    );
  }
}
