import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularIndicator extends StatefulWidget {
  final double initialVal;

  CircularIndicator({
    Key key,
    @required this.initialVal,
  }) : super(key: key);

  @override
  _CircularIndicatorState createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SleekCircularSlider(
      initialValue: widget.initialVal,
      appearance: CircularSliderAppearance(

        size: size.width - 150,
      ),
      onChangeEnd: (double value) {
        print(value);
      },
    );
  }
}
