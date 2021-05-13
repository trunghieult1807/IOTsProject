import 'package:fire_alarm_system/ui/report/widgets/chart.dart';
import 'package:fire_alarm_system/ui/report/widgets/summary.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                children: <Widget>[Chart(), Summary()],
              ))),
    );
  }
}
