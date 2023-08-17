import 'package:flutter/material.dart';

class ColorModel {
  final String name;
  final Color color;
  const ColorModel({
    required this.name,
    required this.color,
  });
}

List<ColorModel> colorsForRug = [
  const ColorModel(name: 'Yellow', color: Colors.amber),
  const ColorModel(name: 'Red', color: Colors.red),
  const ColorModel(name: 'Blue', color: Colors.blue),
];
