import 'package:mqtt_client/mqtt_server_client.dart';

class Config {
  static MqttServerClient
      gasSensorClient; // = mqttsetup.setup('io.adafruit.com', 1833);
  static MqttServerClient tempSensorClient;
  static MqttServerClient ledClient;
  static MqttServerClient buzzerClient;
  static MqttServerClient relayClient;

  static const username = 'haily835';
  static const apikey = 'aio_IFZu2517SGPLkd41apSTgofxrM1d';
}
