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
        backgroundColor: Colors.black54,
        title: Text("Report"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[Chart(), Summary()],
          )),
      backgroundColor: Colors.brown,
    );
  }
}
