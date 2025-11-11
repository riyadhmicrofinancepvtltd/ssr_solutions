import 'dart:ui';

class FontHelper {
  FontHelper._();
  static final FontHelper instance = FontHelper._();

  factory FontHelper () => instance;


  static const double size_8 = 8.0;
  static const double size_10 = 10.0;
  static const double size_12 = 12.0;
  static const double size_14 = 14.0;
  static const double size_16 = 16.0;
  static const double size_18 = 18.0;
  static const double size_20 = 20.0;
  static const double size_22 = 22.0;
  static const double size_24 = 24.0;
  static const double size_26 = 26.0;
  static const double size_28 = 28.0;
  static const double size_30 = 30.0;
  static const double size_36 = 36.0;
  static const double size_40 = 40.0;


  // static const FontWeight thin = FontWeight.w100;
  // static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  // static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.bold;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;

}