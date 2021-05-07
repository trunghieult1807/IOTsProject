import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/homepage/nested_tab_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationBarController extends StatefulWidget {
  final BuildContext menuScreenContext;
  NavigationBarController({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _NavigationBarControllerState createState() => _NavigationBarControllerState();
}

class _NavigationBarControllerState extends State<NavigationBarController> {
  var _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.notifications,
    Icons.bar_chart,
    Icons.person,
  ];

  @override
  void initState() {
    super.initState();
  }


  List<Widget> _buildScreens() {
    return [
      NestedTabBar(),
      SizedBox(),
      SizedBox(),
      SizedBox(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightThemeColors.primary,
      body: _buildScreens()[_bottomNavIndex],
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: LightThemeColors.contrast.withOpacity(1),
        elevation: 10,
        splashColor: LightThemeColors.primary,
        activeColor: LightThemeColors.primary,
        icons: iconList,
        inactiveColor: Colors.white54,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}