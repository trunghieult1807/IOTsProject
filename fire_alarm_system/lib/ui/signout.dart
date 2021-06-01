import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fire_alarm_system/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:fire_alarm_system/MQTTclient/server.dart' as mqttsetup;
import 'package:mqtt_client/mqtt_client.dart';

import 'package:http/http.dart' as http;

class SignoutScreen extends StatelessWidget {
  final AuthService authBase = AuthService();

  TextEditingController mqttUsernameCtrl =
      new TextEditingController(text: CONFIG.Config.username);
  TextEditingController mqttApiKeyCtrl =
      new TextEditingController(text: CONFIG.Config.apikey);

  void reconnectMQTT() async {
    CONFIG.Config.tempSensorClient.unsubscribe(CONFIG.Config.username + '/feeds/bk-iot-temp-humid');
    CONFIG.Config.gasSensorClient.unsubscribe(CONFIG.Config.username + '/feeds/bk-iot-gas');
    CONFIG.Config.buzzerClient.unsubscribe(CONFIG.Config.username + '/feeds/bk-iot-speaker');
    CONFIG.Config.ledClient.unsubscribe(CONFIG.Config.username + '/feeds/bk-iot-led');
    CONFIG.Config.relayClient.unsubscribe(CONFIG.Config.username + '/feeds/bk-iot-relay');

    CONFIG.Config.tempSensorClient.disconnect();
    CONFIG.Config.gasSensorClient.disconnect();
    CONFIG.Config.buzzerClient.disconnect();
    CONFIG.Config.ledClient.disconnect();
    CONFIG.Config.relayClient.disconnect();

    CONFIG.Config.username = mqttUsernameCtrl.text;
    CONFIG.Config.apikey = mqttApiKeyCtrl.text;

    if(CONFIG.Config.username == 'test'){
      final response = await http.get(Uri.parse('http://dadn.esp32thanhdanh.link'));
      if(response.statusCode == 200){
        List<String> keys = jsonDecode(response.body)['key'].split(':');
        CONFIG.Config.testKey0 = keys[0];
        CONFIG.Config.testKey1 = keys[1];
      }
      else print("SOMETHING WRONG WHEN GETTING KEYS FROM http://dadn.esp32thanhdanh.link");

      CONFIG.Config.gasSensorClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.testName1, CONFIG.Config.testKey1);
      CONFIG.Config.tempSensorClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.testName0, CONFIG.Config.testKey0);
      CONFIG.Config.ledClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.testName0, CONFIG.Config.testKey0);
      CONFIG.Config.buzzerClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.testName0, CONFIG.Config.testKey0);
      CONFIG.Config.relayClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.testName1, CONFIG.Config.testKey1);

      CONFIG.Config.gasSensorClient.subscribe(
          CONFIG.Config.testName1 + '/feeds/bk-iot-gas', MqttQos.atLeastOnce);
      CONFIG.Config.tempSensorClient.subscribe(
          CONFIG.Config.testName0 + '/feeds/bk-iot-temp-humid',
          MqttQos.atLeastOnce);
      CONFIG.Config.ledClient.subscribe(
          CONFIG.Config.testName0 + '/feeds/bk-iot-led', MqttQos.atLeastOnce);
      CONFIG.Config.buzzerClient.subscribe(
          CONFIG.Config.testName0 + '/feeds/bk-iot-speaker', MqttQos.atLeastOnce);
      CONFIG.Config.relayClient.subscribe(
          CONFIG.Config.testName1 + '/feeds/bk-iot-relay', MqttQos.atLeastOnce);
    }
    else {
      CONFIG.Config.gasSensorClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.username, CONFIG.Config.apikey);
      CONFIG.Config.tempSensorClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.username, CONFIG.Config.apikey);
      CONFIG.Config.ledClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.username, CONFIG.Config.apikey);
      CONFIG.Config.buzzerClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.username, CONFIG.Config.apikey);
      CONFIG.Config.relayClient = await mqttsetup.setup(
          'io.adafruit.com', 1883, CONFIG.Config.username, CONFIG.Config.apikey);

      CONFIG.Config.gasSensorClient.subscribe(
          CONFIG.Config.username + '/feeds/bk-iot-gas', MqttQos.atLeastOnce);
      CONFIG.Config.tempSensorClient.subscribe(
          CONFIG.Config.username + '/feeds/bk-iot-temp-humid',
          MqttQos.atLeastOnce);
      CONFIG.Config.ledClient.subscribe(
          CONFIG.Config.username + '/feeds/bk-iot-led', MqttQos.atLeastOnce);
      CONFIG.Config.buzzerClient.subscribe(
          CONFIG.Config.username + '/feeds/bk-iot-speaker', MqttQos.atLeastOnce);
      CONFIG.Config.relayClient.subscribe(
          CONFIG.Config.username + '/feeds/bk-iot-relay', MqttQos.atLeastOnce);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text('ADAFRUIT CONNECTION:', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text('Adafruit username:', style: TextStyle(fontSize: 15)),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: mqttUsernameCtrl,
                )),
            SizedBox(
              height: 7,
            ),
            Text('Api Key:', style: TextStyle(fontSize: 15)),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: mqttApiKeyCtrl,
                )),
            TextButton(onPressed: reconnectMQTT, child: Text("RECONNECT")),
            SizedBox(
              height: 20,
            ),
            Text('Logged in as userID:', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text(
                FirebaseAuth.instance.currentUser == null
                    ? 'None'
                    : FirebaseAuth.instance.currentUser.uid,
                style: TextStyle(fontSize: 17, color: Colors.deepPurple)),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text(
                'Sign out',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () async {
                await authBase.signOut();
                // Navigator.of(context).pushReplacementNamed('login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
