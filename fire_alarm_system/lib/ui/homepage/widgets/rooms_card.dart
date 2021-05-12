import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/model/core/room_schema.dart';
import 'package:fire_alarm_system/ui/homepage/utils/utils.dart';
import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/model/model_export.dart';

class RoomsCard extends StatefulWidget {
  final RoomInfo roomInfo;

  RoomsCard({
    Key key,
    @required this.roomInfo,
  }) : super(key: key);

  @override
  _RoomsCardState createState() => _RoomsCardState(this.roomInfo);
}

class _RoomsCardState extends State<RoomsCard> {
  int deviceCount = 0;

  _RoomsCardState(RoomInfo room){
    DeviceService.getAllDeviceInRoom(room).then((value){
      setState(() {
        this.deviceCount = value.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { Navigator.push(context, PageRouteBuilder(
          pageBuilder: (c, a1, a2) => RoomView(widget.roomInfo),
          // transitionsBuilder: (c, anim, a2, child) =>
          //     FadeTransition(opacity: anim, child: child),
          // transitionDuration: Duration(milliseconds: 500),
        ),
      );},
      child: Container(
        height: 130,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.red.shade300,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    height: 80,
                    width: 80,
                    child: getImageFromId(widget.roomInfo.imageId),
                  ),
                ),
                Text(
                  widget.roomInfo.roomName,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Container(
              height: 90,
              width: 6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Number of devices: ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'theme',
                        fontSize: 15.0,
                        color: LightThemeColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      this.deviceCount.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'theme',
                        fontSize: 15.0,
                        color: LightThemeColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Text(
                      "ID: " + widget.roomInfo.roomId,
                      maxLines: 3,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontFamily: 'theme',
                        fontSize: 15.0,
                        color: LightThemeColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
