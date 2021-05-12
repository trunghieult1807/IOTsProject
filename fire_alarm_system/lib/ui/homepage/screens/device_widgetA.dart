import 'package:animations/animations.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/model/core/room_schema.dart';
import 'package:fire_alarm_system/ui/homepage/screens/add_room.dart';
import 'package:fire_alarm_system/ui/homepage/widgets/rooms_card.dart';
import 'package:fire_alarm_system/ui/roomview/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:provider/provider.dart';

import 'package:fire_alarm_system/model/model_export.dart';
import 'package:fire_alarm_system/ui/homepage/widgets/device_card_widget.dart';


class DeviceWigdetA extends StatefulWidget {
  @override
  _DeviceWigdetAState createState() => _DeviceWigdetAState();
}

class _DeviceWigdetAState extends State<DeviceWigdetA> {
  List<Device> deviceList = [];

  _DeviceWigdetAState(){
    DeviceService.getAllDeviceOfUser().then((value) =>
      setState(() {
        //print(value.length.toString());
        this.deviceList = value;
        //print("HERE");
      })
    );
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: LightThemeColors.primary,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          0,
        ),
        child: deviceList == null ?
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Container(
                    child: LoadingBouncingGrid.circle(
                      borderColor: Colors.red,
                      borderSize: 3.0,
                      size: 30.0,
                      backgroundColor: Colors.yellow,
                      duration: Duration(milliseconds: 500),
                    ),
                  ),
                ],
              )
            :
              Row(
                children: [
                  Expanded(
                    child: deviceList.length > 0
                        ?
                    ListView.builder(
                      padding: EdgeInsets.only(top: 20),
                      //physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: deviceList.length,
                      itemBuilder: (context, index) {
                        return DeviceWidgetCard(deviceSchema: deviceList[index]);
                      },
                    )
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Welcome 🔥🔥",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'theme',
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: size.width - 100,
                              child: Text(
                                "Add your first task and lets get started ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: 'theme',
                                  fontSize: 20,
                                  // fontWeight: FontWeight.w00,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
        ),
      );
  }
}
