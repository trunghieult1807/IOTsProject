import 'package:fire_alarm_system/ui/homepage/nested_tab_bar.dart';
import 'package:fire_alarm_system/ui/roomview/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/ui/auth/screens/auth_screen.dart';
import 'package:fire_alarm_system/ui/signout.dart';
import 'package:fire_alarm_system/ui/onboarding/screens/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: RoomView(),
      routes: {
        'intro': (context) => IntroScreen(),
        'home': (context) => NestedTabBar(),
        'login': (context) => AuthScreen(authType: AuthType.login),
        'register': (context) => AuthScreen(authType: AuthType.register),
        'roomview': (context) => RoomView()
      },
    );
  }
}
