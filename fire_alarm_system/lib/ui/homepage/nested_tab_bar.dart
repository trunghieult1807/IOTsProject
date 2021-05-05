import 'dart:ui';

import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/homepage/screens/rooms.dart';
import 'package:fire_alarm_system/ui/homepage/widgets/rooms_card.dart';
import 'package:fire_alarm_system/ui/signout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {

  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 2, vsync: this);
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
      backgroundColor: Colors.white,
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
                                "14",
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
                                "20",
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
                      Rooms(),
                      HomeScreen(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


