import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';

class ShapeModel {
  final String name;
  final BoxDecoration boxDecoration;
  final double height;
  final double width;
  const ShapeModel(
      {required this.name,
      required this.boxDecoration,
      required this.height,
      required this.width});
}

List<ShapeModel> shapesForRugs = [
  ShapeModel(
    width: 30,
    height: 30,
    name: 'Round',
    boxDecoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(100),
    ),
  ),
  ShapeModel(
    width: 30,
    height: 30,
    name: 'RoundSquare',
    boxDecoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(6),
    ),
  ),
  ShapeModel(
    width: 30,
    height: 30,
    name: 'square',
    boxDecoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(0),
    ),
  ),
  ShapeModel(
    width: 40,
    height: 30,
    name: 'square',
    boxDecoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(6),
    ),
  ),
  ShapeModel(
    width: 20,
    height: 30,
    name: 'square',
    boxDecoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(6),
    ),
  ),
];
