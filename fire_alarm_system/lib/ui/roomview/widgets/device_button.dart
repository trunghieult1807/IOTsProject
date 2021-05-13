import 'package:fire_alarm_system/theme.dart';
import 'package:fire_alarm_system/ui/roomview/models/device_info.dart';
import 'package:fire_alarm_system/ui/roomview/screens/roomview.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

Color setColor(
    bool pumpState, bool ledState, bool buzzerState, String nameBtn) {
  if (pumpState && nameBtn == "Pump water") {
    return Color(0xffFF9900);
  }

  if (ledState && nameBtn == "LED") {
    return Color(0xffFF9900);
  }

  if (buzzerState && nameBtn == "Buzzer") {
    return Color(0xffFF9900);
  }

  return LightThemeColors.primary;
}

class DeviceButton extends StatefulWidget {
  final DeviceInfo deviceInfo;
  final int situtionState;

  DeviceButton({
    Key key,
    @required this.deviceInfo,
    @required this.situtionState,
  }) : super(key: key);

  @override
  _DeviceButtonState createState() => _DeviceButtonState();
}

class _DeviceButtonState extends State<DeviceButton> {
  bool pumpOpened = false;
  bool ledOpened = false;
  bool buzzerOpened = false;
  Color c = LightThemeColors.primary;

  void check() {
    if (widget.situtionState == 1) {
      pumpOpened = true;
      ledOpened = true;
      buzzerOpened = true;
    } else {
      pumpOpened = false;
      ledOpened = false;
      buzzerOpened = false;
    }
  }

  void onPress(String device) {
    if (device == "Pump water") {
      if (pumpOpened) {
        final builder1 = MqttClientPayloadBuilder();
        builder1
            .addString('{ "id":"11", "name":"RELAY", "data":"0", "unit":"" }');
        CONFIG.Config.relayClient.publishMessage(
            CONFIG.Config.username + '/feeds/bk-iot-relay',
            MqttQos.atLeastOnce,
            builder1.payload);
        pumpOpened = false;
        print(pumpOpened);
      } else {
        final builder1 = MqttClientPayloadBuilder();
        builder1
            .addString('{ "id":"11", "name":"RELAY", "data":"1", "unit":"" }');
        CONFIG.Config.relayClient.publishMessage(
            CONFIG.Config.username + '/feeds/bk-iot-relay',
            MqttQos.atLeastOnce,
            builder1.payload);
        pumpOpened = true;
        print(pumpOpened);
      }
    } else if (device == "LED") {
      if (ledOpened) {
        final builder2 = MqttClientPayloadBuilder();
        builder2.addString('{ "id":"1", "name":"LED", "data":"0", "unit":"" }');
        CONFIG.Config.ledClient.publishMessage(
            CONFIG.Config.username + '/feeds/bk-iot-led',
            MqttQos.atLeastOnce,
            builder2.payload);
        ledOpened = false;
        print(ledOpened);
      } else {
        final builder2 = MqttClientPayloadBuilder();
        builder2.addString('{ "id":"1", "name":"LED", "data":"1", "unit":"" }');
        CONFIG.Config.ledClient.publishMessage(
            CONFIG.Config.username + '/feeds/bk-iot-led',
            MqttQos.atLeastOnce,
            builder2.payload);
        ledOpened = true;
        print(ledOpened);
      }
    } else {
      if (buzzerOpened) {
        final builder3 = MqttClientPayloadBuilder();
        builder3
            .addString('{ "id":"3", "name":"SPEAKER", "data":"0", "unit":"" }');
        CONFIG.Config.buzzerClient.publishMessage(
            CONFIG.Config.username + '/feeds/bk-iot-speaker',
            MqttQos.atLeastOnce,
            builder3.payload);
        buzzerOpened = false;
        print(buzzerOpened);
      } else {
        final builder3 = MqttClientPayloadBuilder();
        builder3.addString(
            '{ "id":"3", "name":"SPEAKER", "data":"1000", "unit":"" }');
        CONFIG.Config.buzzerClient.publishMessage(
            CONFIG.Config.username + '/feeds/bk-iot-speaker',
            MqttQos.atLeastOnce,
            builder3.payload);
        buzzerOpened = true;
        print(buzzerOpened);
      }
    }
    setState(() {
      c = setColor(
          pumpOpened, ledOpened, buzzerOpened, widget.deviceInfo.deviceName);
    });
  }

  @override
  Widget build(BuildContext context) {
    // check();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            print(widget.deviceInfo.deviceName);
            onPress(widget.deviceInfo.deviceName);
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              // widget.situtionState
              // ? LightThemeColors.primary
              //     : Color(0xffFF9900)
              color: c,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(6),
              child: widget.deviceInfo.image,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${widget.deviceInfo.deviceName}",
          style: TextStyle(
            color: LightThemeColors.contrast,
            fontFamily: ThemeText.textStyle,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
