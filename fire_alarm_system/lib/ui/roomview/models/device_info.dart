import 'package:flutter/material.dart';

class DeviceInfo {
  Image _image;
  String _deviceName;

  DeviceInfo(Image image, String deviceName)
      : _image = image,
        _deviceName = deviceName;

  Image get image => _image;

  String get deviceName => _deviceName;
}
