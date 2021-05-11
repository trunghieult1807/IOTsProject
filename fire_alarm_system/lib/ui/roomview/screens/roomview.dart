import 'package:fire_alarm_system/ui/roomview/models/device_info.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/circular_indicator.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/device_button.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/power_button.dart';
import 'package:fire_alarm_system/ui/roomview/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:fire_alarm_system/model/model_export.dart';

//IMPORT THESE FOR USING MQTT CLIENT
import 'dart:async';
import 'dart:convert';
import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
//END IMPORT THESE FOR USING MQTT CLIENT

enum DeviceType { tempSensor, gasSensor, pump, led, buzzer }

class DeviceStatus {
  //might not be a good class in 'flutter way', but I'm only familiar with this C++ class style, fix it to be more 'flutter' if you wish
  String deviceName = 'generic device';
  String status = 'unknown';
  DeviceType type = DeviceType.tempSensor;

  DeviceStatus(String deviceName, String status, DeviceType type) {
    this.deviceName = deviceName;
    this.status = status;
    this.type = type;
  }
}

class RoomView extends StatefulWidget {
  @override
  RoomInfo theRoom;

  RoomView(RoomInfo room){
    this.theRoom = room;
    print("ROMINFO CONSTUCTOR: " + theRoom.roomId);
  }

  _RoomViewState createState() =>
      _RoomViewState(room: theRoom);
}

class _RoomViewState extends State<RoomView> {
  /*CALL BACK Function*/
  void updateTemperatureText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    print(json['data']);
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.tempSensor) d.status = json['data'];
      }
    });
  }

  void updateGasText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YOUR CODE HERE
    print(json['data']);
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.gasSensor && int.parse(json['data']) == 1) {
          d.status = "Heavy smoke";
        } else if (d.type == DeviceType.gasSensor &&
            int.parse(json['data']) == 0) {
          d.status = "normal";
        }
      }
    });
  }

  void updateRelayText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    print('****Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    print(json['data']);
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.pump && int.parse(json['data']) == 1) {
          d.status = "opened";
        } else if (d.type == DeviceType.pump && int.parse(json['data']) == 0) {
          d.status = "closed";
        }
      }
    });
  }

  void updateLedText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    print('****Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    print(json['data']);
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.led &&
            (int.parse(json['data']) == 1 || int.parse(json['data']) == 2)) {
          d.status = "opened";
        } else if (d.type == DeviceType.led && int.parse(json['data']) == 0) {
          d.status = "closed";
        }
      }
    });
  }

  void updateBuzzerText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    print('****Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    print(json['data']);
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.buzzer && int.parse(json['data']) > 0) {
          d.status = "opened";
        } else if (d.type == DeviceType.buzzer &&
            int.parse(json['data']) == 0) {
          d.status = "closed";
        }
      }
    });
  }

  bool checkSituation() {
    int statusTemp = 0;
    bool haveGas = false;
    for (var d in this.deviceStatusList) {
      if (d.type == DeviceType.tempSensor) {
        statusTemp = int.parse(d.status);
      }
      if (d.type == DeviceType.gasSensor) {
        if (d.status == "Heavy smoke") {
          haveGas = true;
        }
      }
    }
    print(CONFIG.Global.fireThreshold);
    print("NULLCHECK:" + statusTemp.toString());
    if (statusTemp >= CONFIG.Global.fireThreshold && haveGas) {
      return false;
    } else if (statusTemp < CONFIG.Global.fireThreshold && !haveGas) {
      return true;
    }
    return true;
  }

  /*END CALL BACK Function */

  _RoomViewState(
      {Key key, room})
      : super() {

    CONFIG.Config.tempSensorClient.updates.listen(updateTemperatureText);
    CONFIG.Config.gasSensorClient.updates.listen(updateGasText);
    CONFIG.Config.relayClient.updates.listen(updateRelayText);
    CONFIG.Config.ledClient.updates.listen(updateLedText);
    CONFIG.Config.buzzerClient.updates.listen(updateBuzzerText);

    this.roomName = room.roomName;
    DeviceService.getAllDeviceInRoom(room).then((value){
      setState(() {
        this.deviceStatusList = value.map((device){
          return DeviceStatus(device.dName, '0',
            device.dType == 1 ? DeviceType.tempSensor :   device.dType == 2 ? DeviceType.gasSensor :
            device.dType == 3 ? DeviceType.led : device.dType == 4 ? DeviceType.buzzer : DeviceType.pump
          );
        }).toList();

      });
    });
  }

  StreamSubscription temperatureClientStreamEvent;
  String roomName = '';
  String situation = 'OK';
  bool _autofire = true;
  List<DeviceStatus> deviceStatusList = [];

  @override
  Widget build(BuildContext context) {
    bool situationIsOk = checkSituation();
    if (situationIsOk) {
      situation = 'OK';
    } else {
      situation = 'ON FIRE!!!';
    }
    return Scaffold(
      backgroundColor: situationIsOk ? Colors.white : Color(0xffFF9393),
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Color(0xff2A2A37),
        centerTitle: true,
        title: Text(this.roomName),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Situation: " + this.situation,
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Auto fire control"),
                    SizedBox(height: 5),
                    SwitchButton(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            for (var d in this.deviceStatusList)
              if (d.type == DeviceType.tempSensor)
                CircularIndicator(
                  value: double.parse(d.status),
                ),
            SizedBox(
              height: 5,
            ),
            for (var d in this.deviceStatusList)
              if (d.type == DeviceType.tempSensor)
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(d.deviceName + ": " + d.status + '°C')),
            for (var d in this.deviceStatusList)
              if (d.type != DeviceType.tempSensor)
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(d.deviceName + ": " + d.status)),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DeviceButton(
                  deviceInfo: DeviceInfo(
                    Image(
                      image: AssetImage('assets/images/icons/pumpButton.png'),
                    ),
                    "Pump water",
                  ),
                  situtionState: situationIsOk,
                ),
                SizedBox(
                  width: 20,
                ),
                DeviceButton(
                  deviceInfo: DeviceInfo(
                    Image(
                      image: AssetImage('assets/images/icons/led.png'),
                    ),
                    "LED",
                  ),
                  situtionState: situationIsOk,
                ),
                SizedBox(
                  width: 20,
                ),
                DeviceButton(
                  deviceInfo: DeviceInfo(
                    Image(
                      image: AssetImage('assets/images/icons/buzzer.png'),
                    ),
                    "Buzzer",
                  ),
                  situtionState: situationIsOk,
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            PowerButton(),
          ],
        ),
      ),
    );
  }
}
