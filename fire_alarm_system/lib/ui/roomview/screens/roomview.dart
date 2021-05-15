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

  RoomView(RoomInfo room) {
    this.theRoom = room;
    print("ROMINFO CONSTUCTOR: " + theRoom.roomId);
  }

  _RoomViewState createState() => _RoomViewState(room: theRoom);
}

class _RoomViewState extends State<RoomView> {
  /*CALL BACK Function*/
  bool haveGas = false;
  bool pumpOpened = false;
  bool ledOpened = false;
  bool buzzerpOpened = false;
  int situationIsOk = 0;
  int statusTemp = 0;

  void updateTemperatureText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    // print(json['data']);
    print("Update temperature text");
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.tempSensor) {
          String data = json['data'];
          // for (int i = 0; i < data.length; i++) {
          //   if (data[i] == '-') {
          //     data = data.substring(0, i);
          //     statusTemp = int.parse(data);
          //     break;
          //   }
          // }
          // d.status = data;
          statusTemp = int.parse(data);
          d.status = data;
        }
      }
    });
    setState(() {
      situationIsOk = checkSituation();
      autoFireRespond();
    });
  }

  void updateGasText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YOUR CODE HERE
    // print(json['data']);
    print("Update gas text");
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.gasSensor && int.parse(json['data']) == 1) {
          d.status = "Heavy smoke";
          haveGas = true;
        } else if (d.type == DeviceType.gasSensor &&
            int.parse(json['data']) == 0) {
          d.status = "normal";
          haveGas = false;
        }
      }
    });
    setState(() {
      situationIsOk = checkSituation();
      autoFireRespond();
    });
  }

  void updateRelayText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('****Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    // print(json['data']);
    print("Update pump text");
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.pump && int.parse(json['data']) == 1) {
          d.status = "opened";
          pumpOpened = true;
        } else if (d.type == DeviceType.pump && int.parse(json['data']) == 0) {
          d.status = "closed";
          pumpOpened = false;
        }
      }
    });
  }

  void updateLedText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('****Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    // print(json['data']);
    print("Update led text");
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.led &&
            (int.parse(json['data']) == 1 || int.parse(json['data']) == 2)) {
          d.status = "opened";
          ledOpened = true;
        } else if (d.type == DeviceType.led && int.parse(json['data']) == 0) {
          d.status = "closed";
          ledOpened = false;
        }
      }
    });
  }

  void updateBuzzerText(List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttPublishMessage message = c[0].payload;
    final payload =
        MqttPublishPayload.bytesToStringAsString(message.payload.message);
    // print('****Received message:$payload from topic: ${c[0].topic}>');
    var json = jsonDecode(payload);

    //YPUR CODE HERE
    // print(json['data']);
    print("Update buzzer text");
    setState(() {
      for (var d in this.deviceStatusList) {
        if (d.type == DeviceType.buzzer && int.parse(json['data']) > 0) {
          d.status = "opened";
          buzzerpOpened = true;
        } else if (d.type == DeviceType.buzzer &&
            int.parse(json['data']) == 0) {
          d.status = "closed";
          buzzerpOpened = false;
        }
      }
    });
  }

  int checkSituation() {
    if (statusTemp >= CONFIG.Global.fireThreshold && haveGas) {
      return 1;
    }
    else if (statusTemp >= CONFIG.Global.warnThreshold || haveGas) {
      return 2;
    }
    return 0;
  }

  void autoFireRespond() {
    if (autoFireState) {
      if (situationIsOk == 1) {
        pumpOpened = true;
        ledOpened = true;
        buzzerpOpened = true;
      }else{
        pumpOpened = false;
        ledOpened = false;
        buzzerpOpened = false;
      }
    }
  }

  /*END CALL BACK Function */

  StreamSubscription tempSub, gasSub, relaySub, ledSub, buzzerSub;

  @protected
  @mustCallSuper
  void dispose(){
    print("DISPOSED");
    this.tempSub.cancel();
    this.gasSub.cancel();
    this.relaySub.cancel();
    this.ledSub.cancel();
    this.buzzerSub.cancel();
    super.dispose();
  }

  _RoomViewState({Key key, room}) : super() {
    this.tempSub = CONFIG.Config.tempSensorClient.updates.listen(updateTemperatureText);
    this.gasSub = CONFIG.Config.gasSensorClient.updates.listen(updateGasText);
    this.relaySub = CONFIG.Config.relayClient.updates.listen(updateRelayText);
    this.ledSub = CONFIG.Config.ledClient.updates.listen(updateLedText);
    this.buzzerSub = CONFIG.Config.buzzerClient.updates.listen(updateBuzzerText);

    this.roomName = room.roomName;
    DeviceService.getAllDeviceInRoom(room).then((value) {
      setState(() {
        this.deviceStatusList = value.map((device) {
          return DeviceStatus(
              device.dName,
              '0',
              device.dType == 1
                  ? DeviceType.tempSensor
                  : device.dType == 2
                      ? DeviceType.gasSensor
                      : device.dType == 3
                          ? DeviceType.led
                          : device.dType == 4
                              ? DeviceType.buzzer
                              : DeviceType.pump);
        }).toList();
      });
    });
  }

  StreamSubscription temperatureClientStreamEvent;
  String roomName = '';
  String situation = 'OK';
  bool _autofire = true;
  List<DeviceStatus> deviceStatusList = [];

  bool autoFireState = false;

  void changeState(state) {
    autoFireState = state;
  }

  @override
  Widget build(BuildContext context) {
    var thermalCircle = null;
    for (var d in this.deviceStatusList) {
      if (d.type == DeviceType.tempSensor) {
        thermalCircle = CircularIndicator(
          value: double.parse(d.status),
        );
        break;
      }
    }
    if (situationIsOk == 0) {
      situation = 'OK';
    } else if (situationIsOk == 1) {
      situation = 'ON FIRE!!!';
    } else {
      situation = 'WARNING!!';
    }
    return Scaffold(
      backgroundColor: situationIsOk == 0
          ? Colors.white
          : situationIsOk == 1
              ? Color(0xffFF9393)
              : Colors.yellow,
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Color(0xff2A2A37),
        centerTitle: true,
        title: Text(this.roomName),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                      SwitchButton(changeState: changeState),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              // for (var d in this.deviceStatusList)
              //   if (d.type == DeviceType.tempSensor)
              //     CircularIndicator(
              //       value: double.parse(d.status),
              //     ),
              if (thermalCircle != null) thermalCircle,
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
                    onPress: onPress,
                    btnOpened: pumpOpened,
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
                    onPress: onPress,
                    btnOpened: ledOpened,
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
                    onPress: onPress,
                    btnOpened: buzzerpOpened,
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              PowerButton(),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}

void onPress(String device, bool btnState) {
  final builder1 = MqttClientPayloadBuilder();
  if (device == "Pump water") {
    if (!btnState) {
      builder1
          .addString('{ "id":"11", "name":"RELAY", "data":"0", "unit":"" }');
      CONFIG.Config.relayClient.publishMessage(
          CONFIG.Config.username + '/feeds/bk-iot-relay',
          MqttQos.atLeastOnce,
          builder1.payload);
      // print(pumpOpened);
      print("2: turn off pump");
    } else {
      builder1
          .addString('{ "id":"11", "name":"RELAY", "data":"1", "unit":"" }');
      CONFIG.Config.relayClient.publishMessage(
          CONFIG.Config.username + '/feeds/bk-iot-relay',
          MqttQos.atLeastOnce,
          builder1.payload);
      // print(pumpOpened);
      print("2: turn on pump");
    }
  } else if (device == "LED") {
    if (!btnState) {
      builder1.addString('{ "id":"1", "name":"LED", "data":"0", "unit":"" }');
      CONFIG.Config.ledClient.publishMessage(
          CONFIG.Config.username + '/feeds/bk-iot-led',
          MqttQos.atLeastOnce,
          builder1.payload);
      print("2: turn off led");
    } else {
      builder1.addString('{ "id":"1", "name":"LED", "data":"1", "unit":"" }');
      CONFIG.Config.ledClient.publishMessage(
          CONFIG.Config.username + '/feeds/bk-iot-led',
          MqttQos.atLeastOnce,
          builder1.payload);
      print("2: turn on led");
    }
  } else {
    if (!btnState) {
      builder1
          .addString('{ "id":"3", "name":"SPEAKER", "data":"0", "unit":"" }');
      CONFIG.Config.buzzerClient.publishMessage(
          CONFIG.Config.username + '/feeds/bk-iot-speaker',
          MqttQos.atLeastOnce,
          builder1.payload);
      // print(buzzerOpened);
      print("2: turn off buzzer");
    } else {
      final builder3 = MqttClientPayloadBuilder();
      builder3.addString(
          '{ "id":"3", "name":"SPEAKER", "data":"1000", "unit":"" }');
      CONFIG.Config.buzzerClient.publishMessage(
          CONFIG.Config.username + '/feeds/bk-iot-speaker',
          MqttQos.atLeastOnce,
          builder3.payload);
      // print(buzzerOpened);
      print("2: turn on buzzer");
    }
  }
}
