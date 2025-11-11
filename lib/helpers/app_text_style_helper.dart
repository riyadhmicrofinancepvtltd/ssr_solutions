import 'package:flutter/material.dart';
import 'font_helper.dart';

class AppTextStyle {
  AppTextStyle._();
  static final AppTextStyle _instance = AppTextStyle._();
  factory AppTextStyle() => _instance;


  static const TextStyle header1 = TextStyle(
    fontWeight: FontHelper.medium,
    fontSize: FontHelper.size_16,
  );

  static const TextStyle header2 = TextStyle(
    fontWeight: FontHelper.medium,
    fontSize: FontHelper.size_18,
  );

  static const TextStyle header3 = TextStyle(
    fontWeight: FontHelper.medium,
    fontSize: FontHelper.size_20,
  );

  static const TextStyle header4 = TextStyle(
    fontWeight: FontHelper.medium,
    fontSize: FontHelper.size_24,
  );

  static const TextStyle header5 = TextStyle(
    fontWeight: FontHelper.medium,
    fontSize: FontHelper.size_30,
  );

  static const TextStyle header6 = TextStyle(
    fontWeight: FontHelper.medium,
    fontSize: FontHelper.size_36,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontWeight: FontHelper.regular,
    fontSize: FontHelper.size_12,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontWeight: FontHelper.regular,
    fontSize: FontHelper.size_14,
  );

  static const TextStyle subtitle3 = TextStyle(
    fontWeight: FontHelper.regular,
    fontSize: FontHelper.size_16,
  );

}