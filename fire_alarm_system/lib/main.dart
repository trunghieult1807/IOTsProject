import 'dart:convert';

import 'package:fire_alarm_system/ui/edit_threshold/screens/edit_threshold.dart';
import 'package:fire_alarm_system/controllers/navigation_bar_controller.dart';
import 'package:fire_alarm_system/controllers/splash_controller.dart';
import 'package:fire_alarm_system/services/auth.dart';
import 'package:fire_alarm_system/ui/auth/screens/login.dart';
import 'package:fire_alarm_system/ui/auth/screens/register.dart';
import 'package:fire_alarm_system/ui/add_devices/screens/screens.dart';
import 'package:fire_alarm_system/ui/add_room/screens/screens.dart';
import 'package:fire_alarm_system/ui/homepage/nested_tab_bar.dart';
import 'package:fire_alarm_system/controllers/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/ui/onboarding/screens/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:provider/provider.dart';

import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:fire_alarm_system/MQTTclient/server.dart' as mqttsetup;
import 'package:mqtt_client/mqtt_server_client.dart';

bool gasthresholdReach = false;
bool tempthresholdReach = false;

void checkForFire() {
  print("HI3");
  if (gasthresholdReach && tempthresholdReach) {
    print("HI4");
    final builder2 = MqttClientPayloadBuilder();
    builder2
        .addString('{"id":"3", "name":"SPEAKER", "data":"1023", "unit":""}');
    CONFIG.Config.buzzerClient.publishMessage(
        CONFIG.Config.username + '/feeds/bk-iot-speaker',
        MqttQos.atLeastOnce,
        builder2.payload);
  }
}

void checkTempThreshold(List<MqttReceivedMessage<MqttMessage>> c) {
  final MqttPublishMessage message = c[0].payload;
  final payload =
      MqttPublishPayload.bytesToStringAsString(message.payload.message);
  //print('Received message:$payload from topic: ${c[0].topic}>');
  var json = jsonDecode(payload);
  //YOUR CODE HERE
  print("HI");
  if (int.parse(json['data']) > 200) {
    tempthresholdReach = true;
    checkForFire();
  }
}

void checkGasThreshold(List<MqttReceivedMessage<MqttMessage>> c) {
  final MqttPublishMessage message = c[0].payload;
  final payload =
      MqttPublishPayload.bytesToStringAsString(message.payload.message);
  //print('Received message:$payload from topic: ${c[0].topic}>');
  var json = jsonDecode(payload);
  //YOUR CODE HERE
  print("HI2");
  if (int.parse(json['data']) == 1) {
    gasthresholdReach = true;
    checkForFire();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      CONFIG.Config.username + '/feeds/bk-iot-temp-humid', MqttQos.atLeastOnce);
  CONFIG.Config.ledClient.subscribe(
      CONFIG.Config.username + '/feeds/bk-iot-led', MqttQos.atLeastOnce);
  CONFIG.Config.buzzerClient.subscribe(
      CONFIG.Config.username + '/feeds/bk-iot-speaker', MqttQos.atLeastOnce);
  CONFIG.Config.relayClient.subscribe(
      CONFIG.Config.username + '/feeds/bk-iot-relay', MqttQos.atLeastOnce);

  CONFIG.Config.tempSensorClient.updates.listen(checkTempThreshold);
  CONFIG.Config.gasSensorClient.updates.listen(checkGasThreshold);
  // final builder1 = MqttClientPayloadBuilder();
  // builder1.addString('TEST LED PUBLISH');
  // G_ledClient.publishMessage(G_username + '/feeds/bk-iot-led', MqttQos.atLeastOnce, builder1.payload);
  //
  // final builder2 = MqttClientPayloadBuilder();
  // builder2.addString('TEST BUZZER PUBLISH');
  // G_buzzerClient.publishMessage(G_username + '/feeds/bk-iot-speaker', MqttQos.atLeastOnce, builder2.payload);
  //
  // final builder3 = MqttClientPayloadBuilder();
  // builder3.addString('TEST PUMP PUBLISH');
  // G_relayClient.publishMessage(G_username + '/feeds/bk-iot-relay', MqttQos.atLeastOnce, builder3.payload);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fire Alarm System',
        home: RoomView(),
        routes: {
          'splash': (context) => Splash(),
          'onboarding': (context) => IntroScreen(),
          'home': (context) => NestedTabBar(),
          'wrapper': (context) => Wrapper(),
          'navbar': (context) => NavigationBarController(),
          'login': (context) => LoginPage(),
          'register': (context) => RegisterPage(),
          'roomview': (context) => RoomView(),
          'addRoomView': (context) => AddRoom(),
          'addDeviceView': (context) => AddDevice(),
          'editThreshold': (context) => EditThreshold(),
        },
      ),
    );
  }
}
