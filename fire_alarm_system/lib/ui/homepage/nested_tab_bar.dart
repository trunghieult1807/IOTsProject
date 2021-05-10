import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/add_devices/screens/screens.dart';
import 'package:fire_alarm_system/ui/add_room/screens/screens.dart';
import 'package:fire_alarm_system/ui/homepage/rooms_provider.dart';
// import 'package:fire_alarm_system/ui/homepage/screens/add_room.dart';
import 'package:fire_alarm_system/ui/homepage/screens/device_widgetA.dart';
import 'package:fire_alarm_system/ui/signout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:charcode/html_entity.dart";

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  // int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 2, vsync: this);
    _nestedTabController.addListener(() {
      setState(() {
        // _selectedIndex = _nestedTabController.index;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: LightThemeColors.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                5,
                20,
                0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Your home",
                        style: TextStyle(
                          fontFamily: ThemeText.textStyle,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.cloud),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Cloudy"),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Text(
                                "14${String.fromCharCodes([$deg])}C",
                                style: TextStyle(
                                  fontFamily: ThemeText.textStyle,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Temp outside"),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Text(
                                "20${String.fromCharCodes([$deg])}C",
                                style: TextStyle(
                                  fontFamily: ThemeText.textStyle,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Temp inside"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red,
                    Colors.yellow,
                    //widget.taskList.color.withOpacity(0.7)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              controller: _nestedTabController,
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: ThemeText.textStyle,
              ),
              unselectedLabelColor: Colors.black54,
              isScrollable: true,
              tabs: <Widget>[
                Container(
                  width: 120.0,
                  child: Tab(
                    text: "Rooms",
                  ),
                ),
                Container(
                  width: 120.0,
                  child: Tab(
                    text: "Devices",
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: size.height * 1.0,
                  child: TabBarView(
                    controller: _nestedTabController,
                    children: <Widget>[
                      RoomsProvider(),
                      DeviceWigdetA(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: _nestedTabController.index == 0 ? OpenContainer(
        openColor: Colors.transparent,
        closedColor: Colors.transparent,
        transitionDuration: Duration(milliseconds: 1000),
        transitionType: ContainerTransitionType.fade,
        closedElevation: 0.0,
        openElevation: 0.0,
        closedBuilder: (BuildContext c, VoidCallback action) {
          return FloatingActionButton(
            backgroundColor: LightThemeColors.contrast,
            elevation: 0,
            child: Icon(Icons.add),
          );
        },
        openBuilder: (BuildContext c, VoidCallback action) {
          return AddRoom();//isEditMode: false);
        },
        tappable: true,
      ): OpenContainer(
        openColor: Colors.transparent,
        closedColor: Colors.transparent,
        transitionDuration: Duration(milliseconds: 1000),
        transitionType: ContainerTransitionType.fade,
        closedElevation: 0.0,
        openElevation: 0.0,
        closedBuilder: (BuildContext c, VoidCallback action) {
          return FloatingActionButton(
            backgroundColor: Colors.red,
            elevation: 0,
            child: Icon(Icons.add),
          );
        },
        openBuilder: (BuildContext c, VoidCallback action) {
          return AddDevice();//isEditMode: false);
        },
        tappable: true,
      ),
    );
  }
}
