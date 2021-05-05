import 'package:fire_alarm_system/services/auth.dart';
import 'package:fire_alarm_system/ui/auth/screens/login.dart';
import 'package:fire_alarm_system/ui/auth/screens/register.dart';
import 'package:fire_alarm_system/ui/homepage/nested_tab_bar.dart';
import 'package:fire_alarm_system/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/ui/onboarding/screens/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthService().user,
      child: MaterialApp(
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
        home: Wrapper(),
        routes: {
          'intro': (context) => IntroScreen(),
          'home': (context) => NestedTabBar(),
          'auth': (context) => Wrapper(),
          'login': (context) => LoginPage(),
          'register': (context) => RegisterPage(),
        },
      ),
    );
  }
}