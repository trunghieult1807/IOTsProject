import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TempBar extends StatelessWidget {
  TempBar({Key key, @required this.currValue, @required this.title})
      : super(key: key);

  final int currValue;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(minimum: 50, maximum: 200, ranges: <GaugeRange>[
          GaugeRange(startValue: 50, endValue: 100, color: Colors.green),
          GaugeRange(startValue: 100, endValue: 150, color: Colors.orange),
          GaugeRange(startValue: 150, endValue: 200, color: Colors.red)
        ], pointers: <GaugePointer>[
          NeedlePointer(value: currValue.toDouble())
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Container(
                  child: Text(currValue.toString(),
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
              angle: 90,
              positionFactor: 0.5)
        ]),
      ],
      title: GaugeTitle(text: title, textStyle: TextStyle(fontSize: 20)),
    );
  }
}
