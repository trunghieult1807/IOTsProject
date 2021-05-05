import 'package:flutter/material.dart';

class RoomInfo {
  Image _image;
  String _roomName;
  String _temperature;
  String _sensorStatus;
  String _prediction;

  RoomInfo(Image image, String roomName, String temperature,
      String sensorStatus, String prediction)
      : _image = image,
        _roomName = roomName,
        _temperature = temperature,
        _sensorStatus = sensorStatus,
        _prediction = prediction;

  Image get image => _image;

  String get roomName => _roomName;

  String get temperature => _temperature;

  String get sensorStatus => _sensorStatus;

  String get prediction => _prediction;
}
