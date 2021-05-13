import 'package:mqtt_client/mqtt_server_client.dart';

class Config {
  static MqttServerClient
      gasSensorClient; // = mqttsetup.setup('io.adafruit.com', 1833);
  static MqttServerClient tempSensorClient;
  static MqttServerClient ledClient;
  static MqttServerClient buzzerClient;
  static MqttServerClient relayClient;

  static const username = 'TMH24';
  static const apikey = 'aio_tHek32HeF8xlfu94XaVhhxMWVHoh';
}

class Global{
  static int fireThreshold = 0;
  static int warnThreshold = 0;
}
