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

  int buzzer;
  int gas;
  int circuit;
  int led;

  /*END CALL BACK Function */
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Text("Speaker",
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                  Icon(Icons.volume_up,
                      size: 30,
                      color: (buzzer == 1) ? Colors.redAccent : Colors.black54)
                ],
              ),
              Column(
                children: [
                  Text("Gas",
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                  Icon(Icons.warning_amber_outlined,
                      size: 30,
                      color: (gas == 1) ? Colors.redAccent : Colors.black54)
                ],
              ),
            ],
          ),
          Divider(color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Text("Circuit",
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                  Icon(Icons.power,
                      size: 30,
                      color: (circuit == 1) ? Colors.yellow : Colors.black54)
                ],
              ),
              Column(
                children: [
                  Text("Led",
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                  Icon(Icons.lightbulb_outline_sharp,
                      size: 30,
                      color: (led == 1) ? Colors.yellow : Colors.black54)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
