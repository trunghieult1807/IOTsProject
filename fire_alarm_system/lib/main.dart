import 'package:fire_alarm_system/ui/edit_threshold/screens/edit_threshold.dart';
import 'package:fire_alarm_system/ui/homepage/nested_tab_bar.dart';
import 'package:fire_alarm_system/controllers/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/ui/onboarding/screens/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:provider/provider.dart';
import 'package:fire_alarm_system/MQTTclient/server.dart' as mqttsetup;
import 'package:mqtt_client/mqtt_server_client.dart';

MqttServerClient testClient;// = mqttsetup.setup('io.adafruit.com', 1833);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  testClient = await mqttsetup.setup('io.adafruit.com', 1883);
  testClient.subscribe('Siv_Cloud/feeds/test-feed-led', MqttQos.atLeastOnce);
  testClient.subscribe('Siv_Cloud/feeds/test-text-publish', MqttQos.atLeastOnce);

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
          'setThreshold': (context) => EditThreshold(),
        },
      ),

    );
  }
}