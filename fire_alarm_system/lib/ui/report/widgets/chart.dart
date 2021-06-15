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
  final int isShow;
  Chart({
    Key key,
    this.isShow,
  }) : super(key: key);

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

    var data = json['data'];

    for (int i = 1; i < data.length; i++) {
      if (data[i] == '-') {
        data = data.substring(0, i);
        break;
      }
    }
    setState(() {
      if (chartData.length == 0) {
        chartData.add(_ChartData(time, num.parse(data)));
      } else {
        var last = chartData[chartData.length - 1];
        if (time.millisecondsSinceEpoch - last.time.millisecondsSinceEpoch >=
            1000) {
          chartData.add(_ChartData(time, num.parse(data)));
          if (chartData.length == 10) {
            chartData.removeAt(0);
          }
        }
        count += 1;
      }
    });
  }

  /*END CALL BACK Function */
  _ChartState() {
    this.temperatureClientStreamEvent =
        CONFIG.Config.tempSensorClient.updates.listen(_updateDataSource);
  }
  @protected
  @mustCallSuper
  void dispose() {
    print("DISPOSED");
    this.temperatureClientStreamEvent.cancel();
    super.dispose();
  }

  List<_ChartData> chartData = <_ChartData>[];
  int count = 0;
  StreamSubscription temperatureClientStreamEvent;

  // Storing some data:
  //Loading counter value on start

  @override
  Widget build(BuildContext context) {
    if (widget.isShow == 0) {}

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
        primaryYAxis: NumericAxis(
            isVisible: true,
            majorGridLines: MajorGridLines(
                width: 1, color: Colors.grey, dashArray: <double>[5, 5]),
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
                fontWeight: FontWeight.w500),
            majorGridLines: MajorGridLines(width: 0)),
        series: <ChartSeries<_ChartData, DateTime>>[
          AreaSeries<_ChartData, DateTime>(
              gradient: gradientColors,
              opacity: 0.7,
              markerSettings: MarkerSettings(
                  isVisible: true,
                  // Marker shape is set to diamond
                  shape: DataMarkerType.circle),
              dataLabelSettings: DataLabelSettings(
                  textStyle: TextStyle(color: Colors.white),
                  isVisible: true,
                  // Positioning the data label
                  labelAlignment: ChartDataLabelAlignment.top),
              dataSource: (widget.isShow != 0) ? chartData : [],
              xValueMapper: (_ChartData temp, _) => temp.time,
              yValueMapper: (_ChartData temp, _) => temp.temp),
        ]);
  }
}
