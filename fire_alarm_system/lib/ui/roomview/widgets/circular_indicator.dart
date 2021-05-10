import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularIndicator extends StatefulWidget {
  final double value;

  CircularIndicator({
    Key key,
    @required this.value,
  }) : super(key: key);

  @override
  _CircularIndicatorState createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  @override
  Widget build(BuildContext context) {
    double idicator_value = widget.value;
    if (widget.value > 100) {
      idicator_value = 100;
    }
    final Size size = MediaQuery.of(context).size;
    return SleekCircularSlider(
      initialValue: idicator_value,
      appearance: CircularSliderAppearance(
          size: size.width - 150,
          infoProperties: InfoProperties(modifier: (value) {
            final roundedValue = (widget.value).ceil().toInt().toString();
            return roundedValue + "°C";
          })),
    );
  }
}
