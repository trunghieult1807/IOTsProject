import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceCard extends StatefulWidget {
  final List<DeviceStatus> deviceStatusList;
  final DeviceType type;
  final ImageProvider<Object> image;

  @override
  _DeviceCardState createState() => _DeviceCardState();
  DeviceCard({this.deviceStatusList, this.type, this.image});
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        boxShadow: [BoxShadow(color: Colors.red)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var d in widget.deviceStatusList)
                  if (d.type == widget.type)
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(d.deviceName + ":",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(d.status,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.green[300]))),
                          ],
                        ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Image(
              alignment: Alignment.bottomRight,
              image: widget.image,
              height: 60,
              width: 60,
            ),
          ),
        ],
      ),
    );
  }
}
