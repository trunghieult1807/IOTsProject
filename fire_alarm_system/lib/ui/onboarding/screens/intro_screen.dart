import 'package:fire_alarm_system/controllers/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/ui/onboarding/widgets/original_button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            Hero(
              tag: 'logoAnimation',
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OriginalButton(
                text: 'Get Started',
                color: Colors.white,
                textColor: Colors.lightBlue,
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => Wrapper(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 500),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
