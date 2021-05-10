import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'device_schema.dart';

class RoomInfo {
  
  String _roomId;
  String _imageId;
  String _roomName;
  String _temperature;
  String _sensorStatus;
  String _prediction;
  String userID;

  RoomInfo(String userID, String roomId, String imageId, String roomName, String temperature,
      String sensorStatus, String prediction)
      : this.userID = userID,
        _roomId = roomId,
        _imageId = imageId,
        _roomName = roomName,
        _temperature = temperature,
        _sensorStatus = sensorStatus,
        _prediction = prediction;

  RoomInfo.db(String userID, String roomId, String imageId, String roomName)
      : this.userID = userID,
        _roomId = roomId,
        _imageId = imageId,
        _roomName = roomName;
  
  // List<Device> getAllDevice(){
  //   return _db.collection('users').doc(userID).collection('roomList').doc(_roomId).collection('DeviceList').
  // }

  String get roomId => _roomId;

  String get imageId => _imageId;

  String get roomName => _roomName;

  String get temperature => _temperature;

  String get sensorStatus => _sensorStatus;

  String get prediction => _prediction;
  
}
