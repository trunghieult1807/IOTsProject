import 'package:mqtt_client/mqtt_server_client.dart';

class Config {
  static MqttServerClient
      gasSensorClient; // = mqttsetup.setup('io.adafruit.com', 1833);
  static MqttServerClient tempSensorClient;
  static MqttServerClient ledClient;
  static MqttServerClient buzzerClient;
  static MqttServerClient relayClient;

  //static String username = '2TMH4';
  static String username = 'test'; // If username is 'test', we will switch to the two test feed (used by teacher)
  static String apikey = 'aio_SzAy57MIRK53AffqPku6XNUgkqJ5';

  static String testName0 = 'CSE_BBC';
  static String testKey0 = 'aio_ujHa39CATridh60sV0wkkAhJmNhG';

  static String testName1 = 'CSE_BBC1';
  static String testKey1 = 'aio_yqUQ00Ryi2liePf8ElzL3yq3dNij';
}

class Global{
  static int fireThreshold = 0;
  static int warnThreshold = 0;
}
