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
import 'package:fire_alarm_system/model/model_export.dart';

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

  int totalNumberOfRoom = 0;
  int totalNumberOfDevice = 0;

  _NestedTabBarState() : super() {
    RoomService.getAllRoom().then((value) {
      setState(() {
        this.totalNumberOfRoom = value.length;
      });
    });
    DeviceService.getAllDeviceOfUser().then((value) {
      setState(() {
        this.totalNumberOfDevice = value.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: LightThemeColors.primary,
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: LightThemeColors.primary,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: topPadding),
                Expanded(
                  // height: (size.height - 150),
                  child: Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new ExactAssetImage('assets/images/3d/bg10.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(0.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      20,
                      20,
                      20,
                      0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "WELCOME HOME",
                              style: TextStyle(
                                fontFamily: ThemeText.textStyle,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Text("No. Rooms"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(this.totalNumberOfRoom.toString()),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  children: [
                                    Text('No. Devices'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(this.totalNumberOfDevice.toString()),
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
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blueAccent.withOpacity(0.5),
                          Colors.indigoAccent,
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
                    child: Container(
                      height: size.height * 0.5,
                      child: TabBarView(
                        controller: _nestedTabController,
                        children: <Widget>[
                          RoomsProvider(),
                          DeviceWigdetA(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            floatingActionButton: _nestedTabController.index == 0
                ? OpenContainer(
                    openColor: Colors.transparent,
                    closedColor: Colors.transparent,
                    transitionDuration: Duration(milliseconds: 1000),
                    transitionType: ContainerTransitionType.fade,
                    closedElevation: 0.0,
                    openElevation: 0.0,
                    closedBuilder: (BuildContext c, VoidCallback action) {
                      return FloatingActionButton(
                        backgroundColor: Colors.indigo,
                        elevation: 0,
                        child: Icon(Icons.add),
                      );
                    },
                    openBuilder: (BuildContext c, VoidCallback action) {
                      return AddRoom(); //isEditMode: false);
                    },
                    tappable: true,
                  )
                : OpenContainer(
                    openColor: Colors.transparent,
                    closedColor: Colors.transparent,
                    transitionDuration: Duration(milliseconds: 1000),
                    transitionType: ContainerTransitionType.fade,
                    closedElevation: 0.0,
                    openElevation: 0.0,
                    closedBuilder: (BuildContext c, VoidCallback action) {
                      return FloatingActionButton(
                        backgroundColor: Colors.indigo,
                        elevation: 0,
                        child: Icon(Icons.add),
                      );
                    },
                    openBuilder: (BuildContext c, VoidCallback action) {
                      return AddDevice(); //isEditMode: false);
                    },
                    tappable: true,
                  ),
          ),
        ],
      ),
    );
  }
}
