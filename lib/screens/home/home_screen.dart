import 'package:flutter/material.dart';
import 'package:ssr_solutions/helpers/app_text_style_helper.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';
import 'package:ssr_solutions/helpers/dimens_helper.dart';
import 'package:ssr_solutions/helpers/font_helper.dart';
import 'package:ssr_solutions/screens/home/home_header_widget.dart';
import 'package:ssr_solutions/screens/home/home_our_services_widget.dart';
import 'package:ssr_solutions/screens/home/why_choose_us_widget.dart';

import 'contact_us_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.white,
      body: ListView(
        children: [
          HomeHeaderWidget(),
          
          HomeOurServicesWidget(),
          WhyChooseUsWidget(),
          ContactUsWidget(),

        ],
      ),
    );
  }
}
