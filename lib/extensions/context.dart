import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_framework.dart';


extension BuildContextExtensions on BuildContext {

  bool get is24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  Brightness get brightness => MediaQuery.of(this).platformBrightness;

  double get statusBarHeight => MediaQuery.paddingOf(this).top;

  double get bottomHeight => MediaQuery.paddingOf(this).bottom;

  bool get isMobile => ResponsiveBreakpoints.of(this).isMobile;

  bool get isTablet => ResponsiveBreakpoints.of(this).isTablet;

  bool get isDesktop => ResponsiveBreakpoints.of(this).isDesktop;



}