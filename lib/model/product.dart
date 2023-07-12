// Fluttee App Demo Code 転用

import 'package:flutter/material.dart';

enum Category {
  all,
}

class Product {
  const Product({
    required this.id,
    required this.zodiacJP,
    required this.zodiac,
    required this.birth,
    required this.color,
  });

  final int id;
  final String zodiacJP;
  final String zodiac;
  final String birth;
  final String color;

  String get assetName => 'lib/assets/zodiac_signs/$zodiac.png';
  String get assetPackage => 'zodiac_signs';
  String get assetColor => '0xFF$color';

  @override
  String toString() => "$zodiacJP (id=$id)";
}