import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/homepage/models/room_info.dart';
import 'package:fire_alarm_system/ui/homepage/utils/utils.dart';
import 'package:flutter/material.dart';

class RoomsCard extends StatefulWidget {
  final RoomInfo roomInfo;

  RoomsCard({
    Key key,
    @required this.roomInfo,
  }) : super(key: key);

  @override
  _RoomsCardState createState() => _RoomsCardState();
}

class _RoomsCardState extends State<RoomsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image(
                        image:
                            AssetImage('assets/images/icons/temperature.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "Temperature",
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
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image(
                        image:
                            AssetImage('assets/images/icons/sensor.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "Gas status",
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
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image(
                        image:
                            AssetImage('assets/images/icons/prediction_warning.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "Prediction",
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
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
