import 'package:flutter/material.dart';

Image getImageFromId(String imageId) {
  return Image(
    image: AssetImage('assets/images/icons/$imageId.png'),
  );
}
