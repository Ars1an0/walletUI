import 'package:flutter/material.dart';

TextStyle style = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
Image imageWidget(String imageName,Color color) {
  return Image(
    color: color,
    width: 30,
    height: 30,
    image: AssetImage('assets/$imageName'),
  );
}

