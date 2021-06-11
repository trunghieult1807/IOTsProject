import 'package:fire_alarm_system/glass_card.dart';
import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/homepage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/model/model_export.dart';

class DeviceWidgetCard extends StatefulWidget {
  final Device deviceSchema;

  DeviceWidgetCard({
    Key key,
    @required this.deviceSchema,
  }) : super(key: key);

  @override
  _DeviceWidgetCardState createState() =>
      _DeviceWidgetCardState(this.deviceSchema);
}

class _DeviceWidgetCardState extends State<DeviceWidgetCard> {
  String roomName = '';

  _DeviceWidgetCardState(Device device) {
    RoomService.getRoomNameFromDevice(device).then((value) {
      setState(() {
        this.roomName = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FrostedGlassBox(
        height: 135,
        width: size.width - 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                      child: getImageFromId(widget.deviceSchema.dImg),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Text(
                      widget.deviceSchema.dName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
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
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "Belong to: " + this.roomName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'theme',
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "Type: " +
                                (widget.deviceSchema.dType == 1
                                    ? 'thermal sensor'
                                    : widget.deviceSchema.dType == 2
                                        ? 'gas sensor'
                                        : widget.deviceSchema.dType == 3
                                            ? 'LED'
                                            : widget.deviceSchema.dType == 4
                                                ? 'buzzer'
                                                : 'relay'),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'theme',
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
