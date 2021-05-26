import 'package:fire_alarm_system/theme.dart';
import 'package:flutter/material.dart';
import 'package:fire_alarm_system/config.dart' as CONFIG;
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class PowerButton extends StatefulWidget {
  @override
  _PowerButtonState createState() => _PowerButtonState();
}

class _PowerButtonState extends State<PowerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final builder1 = MqttClientPayloadBuilder();
        final builder2 = MqttClientPayloadBuilder();
        final builder3 = MqttClientPayloadBuilder();
        builder1.addString('{ "id":"11", "name":"RELAY", "data":"0", "unit":"" }');
        builder2.addString('{ "id":"1", "name":"LED", "data":"0", "unit":"" }');
        builder3.addString('{ "id":"2", "name":"SPEAKER", "data":"0", "unit":"" }');

        String server0 = CONFIG.Config.username;
        String server1 = CONFIG.Config.username;

        if(CONFIG.Config.username == 'test'){
          server0 = CONFIG.Config.testName0;
          server1 = CONFIG.Config.testName1;
        }

        CONFIG.Config.relayClient.publishMessage(server1 + '/feeds/bk-iot-relay', MqttQos.atLeastOnce, builder1.payload);
        CONFIG.Config.ledClient.publishMessage(server0 + '/feeds/bk-iot-led', MqttQos.atLeastOnce, builder2.payload);
        CONFIG.Config.buzzerClient.publishMessage(server0 + '/feeds/bk-iot-speaker', MqttQos.atLeastOnce, builder3.payload);
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: LightThemeColors.primary,
          shape: BoxShape.circle,
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
          child: Icon(Icons.power_settings_new_sharp)
        ),
      ),
    );
  }
}
