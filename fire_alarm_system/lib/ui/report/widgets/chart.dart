import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

//IMPORT THESE FOR USING MQTT CLIENT
import 'dart:convert';
import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
//END IMPORT THESE FOR USING MQTT CLIENT

/// Private calss for storing the chart series data points.
class _ChartData {
  _ChartData(this.time, this.temp);
  final DateTime time;
  final num temp;
  String getString() {
    return "[\"${this.time.toString()}\", ${this.temp.toString()}]";
  }
}

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  /*CALL BACK Function*/
  void _updateDataSource(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;

    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);

    var json = jsonDecode(payload);
    var time = DateTime.now();

    setState(() {
      if (chartData.length == 0) {
        chartData.add(_ChartData(time, num.parse(json['data'])));
      } else {
        var last = chartData[chartData.length - 1];
        if (time.millisecondsSinceEpoch - last.time.millisecondsSinceEpoch >=
            1000) {
          chartData.add(_ChartData(time, num.parse(json['data'])));
          if (chartData.length == 10) {
            chartData.removeAt(0);
          }
        }
        count += 1;
      }
    });
  }
  /*END CALL BACK Function */

  _ChartState() : super() {
    temperatureClientStreamEvent =
        CONFIG.Config.tempSensorClient.updates.listen(_updateDataSource);
  }

  List<_ChartData> chartData = <_ChartData>[];
  int count = 0;
  StreamSubscription temperatureClientStreamEvent;

  // Storing some data:
  //Loading counter value on start

  @override
  Widget build(BuildContext context) {
    final List<Color> color = <Color>[];

    color.add(Colors.red);
    color.add(Colors.black.withRed(50));

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(1.0);

    final LinearGradient gradientColors = LinearGradient(
      colors: color,
      stops: stops,
      begin: Alignment(0.0, -1.0),
      end: Alignment(0.0, 1.0),
    );

    return SfCartesianChart(
        // Initialize category axis
        enableAxisAnimation: true,
        primaryYAxis: NumericAxis(
            labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500)),
        primaryXAxis: DateTimeAxis(
            dateFormat: DateFormat.Hms(),
            labelRotation: 60,
            labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500)),
        series: <ChartSeries<_ChartData, DateTime>>[
          SplineAreaSeries<_ChartData, DateTime>(
              gradient: gradientColors,
              markerSettings: MarkerSettings(
                  isVisible: true,
                  // Marker shape is set to diamond
                  shape: DataMarkerType.circle),
              dataLabelSettings: DataLabelSettings(
                  textStyle: TextStyle(color: Colors.white),
                  isVisible: true,
                  // Positioning the data label
                  labelAlignment: ChartDataLabelAlignment.top),
              dataSource: chartData,
              xValueMapper: (_ChartData temp, _) => temp.time,
              yValueMapper: (_ChartData temp, _) => temp.temp),
        ]);
  }
}
