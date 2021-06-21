import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

//IMPORT THESE FOR USING MQTT CLIENT
import 'dart:convert';
import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
//END IMPORT THESE FOR USING MQTT CLIENT

class Summary extends StatefulWidget {
  final int numOfGas;
  final int numOfPump;
  final int numOfLed;
  final int numOfBuzz;
  final int numOfCircuit;
  Summary(
      {Key key,
      this.numOfGas,
      this.numOfPump,
      this.numOfLed,
      this.numOfBuzz,
      this.numOfCircuit})
      : super(key: key);

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  /*CALL BACK Functions*/
  void _updateLed(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    var json = jsonDecode(payload);
    setState(() {
      led = int.parse(json['data']);
    });
  }

  void _updateBuzzer(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    var json = jsonDecode(payload);
    setState(() {
      buzzer = int.parse(json['data']);
      print(buzzer);
    });
  }

  void _updateGas(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    var json = jsonDecode(payload);

    setState(() {
      gas = int.parse(json['data']);
    });
  }

  void _updateCircuit(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    var json = jsonDecode(payload);

    setState(() {
      circuit = int.parse(json['data']);
    });
  }

  @protected
  @mustCallSuper
  void dispose() {
    print("DISPOSED");
    this.buzzerClientStreamEvent.cancel();
    this.gasClientStreamEvent.cancel();
    this.circuitClientStreamEvent.cancel();
    this.ledClientStreamEvent.cancel();
    super.dispose();
  }

  _SummaryState() : super() {
    buzzerClientStreamEvent =
        CONFIG.Config.buzzerClient.updates.listen(_updateBuzzer);
    gasClientStreamEvent =
        CONFIG.Config.gasSensorClient.updates.listen(_updateGas);
    circuitClientStreamEvent =
        CONFIG.Config.relayClient.updates.listen(_updateCircuit);
    ledClientStreamEvent = CONFIG.Config.ledClient.updates.listen(_updateLed);
  }

  StreamSubscription buzzerClientStreamEvent;
  StreamSubscription gasClientStreamEvent;
  StreamSubscription circuitClientStreamEvent;
  StreamSubscription ledClientStreamEvent;

  int buzzer = 0;
  int gas = 0;
  int circuit = 0;
  int led = 0;

  /*END CALL BACK Function */
  @override
  Widget build(BuildContext context) {
    List<List<Widget>> widgets = [];
    List<Widget> widgetRow = [];

    for (var i = 1; i <= widget.numOfBuzz; i++) {
      Widget w = Column(
        children: [
          Text("Speaker " + i.toString(),
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          Icon(Icons.volume_up,
              size: 30, color: (buzzer > 0) ? Colors.redAccent : Colors.black54)
        ],
      );

      widgetRow.add(w);
    }

    widgets.add(widgetRow);
    widgetRow = [];

    for (var i = 1; i <= widget.numOfGas; i++) {
      Widget w = Column(
        children: [
          Text("Gas " + i.toString(),
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          Icon(Icons.warning_amber_outlined,
              size: 30, color: (gas == 1) ? Colors.redAccent : Colors.black54)
        ],
      );

      widgetRow.add(w);
    }

    widgets.add(widgetRow);
    widgetRow = [];

    // Led
    for (var i = 1; i <= widget.numOfLed; i++) {
      Widget w = Column(
        children: [
          Text("Led " + i.toString(),
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          Icon(Icons.lightbulb_outline_sharp,
              size: 30,
              color: (led == 1)
                  ? Colors.red
                  : (led == 2)
                      ? Colors.green
                      : Colors.black54)
        ],
      );

      widgetRow.add(w);
    }

    widgets.add(widgetRow);
    widgetRow = [];

    // circuit
    for (var i = 1; i <= widget.numOfCircuit; i++) {
      Widget w = Column(
        children: [
          Text("Circuit " + i.toString(),
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          Icon(Icons.power,
              size: 30, color: (circuit == 1) ? Colors.yellow : Colors.black54)
        ],
      );

      widgetRow.add(w);
    }

    widgets.add(widgetRow);
    widgetRow = [];

    return SingleChildScrollView(
        child: Container(
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: widgets[0].length != 0
                  ? widgets[0]
                  : [Text('No buzzer devices')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: widgets[1].length != 0
                  ? widgets[1]
                  : [Text('No gas devices')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: widgets[2].length != 0
                  ? widgets[2]
                  : [Text('No led devices')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: widgets[3].length != 0
                  ? widgets[3]
                  : [Text('No circuit devices')]),
        ],
      ),
    ));
  }
}
