import 'package:flutter/material.dart';
import 'package:ssr_solutions/helpers/app_text_style_helper.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Something went wrong", style: AppTextStyle.header4,),
            Text("Try after sometime", style: AppTextStyle.header1,)
          ],
        ),
      ),
    );
  }
}
