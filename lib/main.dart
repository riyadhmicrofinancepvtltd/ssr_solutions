import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';
import 'package:ssr_solutions/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, screenType) {
        return MaterialApp(
          title: "SSR Solutions",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: ColorHelper.primary),
          ),
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 600, name: MOBILE),
              const Breakpoint(start: 601, end: 900, name: TABLET),
              const Breakpoint(start: 901, end: double.infinity, name: DESKTOP),
            ],
          ),
          home: const HomeScreen(),
        );
      }
    );
  }
}