import 'dart:ui';
import 'package:flutter/material.dart';

class ColorHelper {
  ColorHelper._();
  static final ColorHelper _instance = ColorHelper._();
  factory ColorHelper() => _instance;



  static const Color lightPrimary = Color(0xFFf1faee);
  static const Color secondary = Color(0xFF60648c);
  static const Color primary = Color(0xFF457b9d); // Mixture of lightPrimary & secondary 50-50 Percent
  // static final Color primary = Color.lerp(lightPrimary, secondary, 0.5)??secondary;

  static const Color surface = Color(0xFFFFFFFF);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static const textPrimary = Color(0xDE000000);
  static const disabled = Color(0x66000000);

  static const outline = Color(0xFFE0E4EB);
  // static const outline = Color(0xFFE0E4EB);
  static const grey = Color(0xFF9E9E9E);

  static const alert = Color(0xFFC62828);
  static const positive = Color(0xFF4CAF50);
  static const warning = Color(0xFFF9A825);
  static const info = Color(0xFF0D47A1);

  static const Color transparent = Color(0x00000000);



}