import 'package:flutter/material.dart';

class RoomInfo {
  String _roomId;
  String _imageId;
  String _roomName;
  String _temperature;
  String _sensorStatus;
  String _prediction;

  RoomInfo(String roomId, String imageId, String roomName, String temperature,
      String sensorStatus, String prediction)
      : _roomId = roomId,
        _imageId = imageId,
        _roomName = roomName,
        _temperature = temperature,
        _sensorStatus = sensorStatus,
        _prediction = prediction;

  RoomInfo.db(String roomId, String imageId, String roomName)
      : _roomId = roomId,
        _imageId = imageId,
        _roomName = roomName;

  String get roomId => _roomId;

  String get imageId => _imageId;

  String get roomName => _roomName;

  String get temperature => _temperature;

  String get sensorStatus => _sensorStatus;

  String get prediction => _prediction;
}
