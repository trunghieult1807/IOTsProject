import 'dart:async';
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
import 'package:fire_alarm_system/ui/report/screens/report.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/ui/onboarding/screens/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:provider/provider.dart';

import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:fire_alarm_system/MQTTclient/server.dart' as mqttsetup;
import 'package:fire_alarm_system/model/model_export.dart';

bool gasthresholdReach = true;
bool tempthresholdReach = false;
//int fireThreshold = 0;
//int warningThreshold = 0;
Stream<int> warningDataStream;
Stream<int> fireDataStream;

// void checkForFire() {
//   if (gasthresholdReach && tempthresholdReach) {
//     final builder2 = MqttClientPayloadBuilder();
//     builder2
//         .addString('{"id":"3", "name":"SPEAKER", "data":"1023", "unit":""}');
//     CONFIG.Config.buzzerClient.publishMessage(
//         CONFIG.Config.username + '/feeds/bk-iot-speaker',
//         MqttQos.atLeastOnce,
//         builder2.payload);
//   }
// }
//
// void checkTempThreshold(List<MqttReceivedMessage<MqttMessage>> c) {
//   final MqttPublishMessage message = c[0].payload;
//   final payload =
//       MqttPublishPayload.bytesToStringAsString(message.payload.message);
//   var json = jsonDecode(payload);
//   //YOUR CODE HERE
//   if (int.parse(json['data']) > fireThreshold) {
//     tempthresholdReach = true;
//     checkForFire();
//   }
// }
//
// void checkGasThreshold(List<MqttReceivedMessage<MqttMessage>> c) {
//   final MqttPublishMessage message = c[0].payload;
//   final payload =
//       MqttPublishPayload.bytesToStringAsString(message.payload.message);
//   var json = jsonDecode(payload);
//   //YOUR CODE HERE
//   if (int.parse(json['data']) == 1) {
//     gasthresholdReach = true;
//     checkForFire();
//   }
// }

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

  onLoginCallbackToMain();

  //CONFIG.Config.tempSensorClient.updates.listen(checkTempThreshold);
  //CONFIG.Config.gasSensorClient.updates.listen(checkGasThreshold);

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
        home: Splash(),
        routes: {
          'splash': (context) => Splash(),
          'onboarding': (context) => IntroScreen(),
          'home': (context) => NestedTabBar(),
          'wrapper': (context) => Wrapper(),
          'navbar': (context) => NavigationBarController(),
          'login': (context) =>
              LoginPage(/*onLoginSuccessCallback: onLoginCallbackToMain*/),
          'register': (context) => RegisterPage(),
          //'roomview': (context) => RoomView(),
          'addRoomView': (context) => AddRoom(),
          'addDeviceView': (context) => AddDevice(),
          'editThreshold': (context) => EditThreshold(),
          'report': (context) => Report(),
        },
      ),
    );
  }
}
Timer warningThresholdGetTimer;
Timer fireThresholdGetTimer;
onLoginCallbackToMain() {
  // warningDataStream = UserService.getFireThresholdStream();
  // warningDataStream.listen((event) {
  //   CONFIG.Global.warnThreshold = event;
  // });
  // fireDataStream = UserService.getFireThresholdStream();
  // fireDataStream.listen((event) {
  //   CONFIG.Global.fireThreshold = event;
  // });
  warningThresholdGetTimer = Timer.periodic(new Duration(seconds: 1), (timer) async {
    int data = await UserService.getWarningThreshold();
    CONFIG.Global.warnThreshold = data;
  });

  fireThresholdGetTimer =Timer.periodic(new Duration(seconds: 1), (timer) async {
    int data = await UserService.getFireThreshold();
    CONFIG.Global.fireThreshold = data;
  });
  return;
}
