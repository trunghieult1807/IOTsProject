import 'package:mqtt_client/mqtt_server_client.dart';

class Config {
  static MqttServerClient
      gasSensorClient; // = mqttsetup.setup('io.adafruit.com', 1833);
  static MqttServerClient tempSensorClient;
  static MqttServerClient ledClient;
  static MqttServerClient buzzerClient;
  static MqttServerClient relayClient;

  static const username = '2TMH4';
  static const apikey = 'aio_SzAy57MIRK53AffqPku6XNUgkqJ5';
}

class Global{
  static int fireThreshold = 0;
  static int warnThreshold = 0;
}
