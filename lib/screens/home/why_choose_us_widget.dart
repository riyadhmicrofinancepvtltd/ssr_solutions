import 'package:flutter/material.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';

import '../../helpers/app_text_style_helper.dart';
import '../../helpers/dimens_helper.dart';
import '../../helpers/font_helper.dart';

List<Map<String, String>> _whyChooseUsContent = [
  {
    "title": "Security",
    "description": "Advanced security measures to protect your transactions."
  },
  {
    "title": "Efficiency",
    "description": "Timely and accurate payment processing."
  },
  {
    "title": "Convenience",
    "description": "User-friendly interface for easy management of payments."
  },
  {
    "title": "Support",
    "description": "Dedicated customer support to assist you every step of the way."
  }
];

class WhyChooseUsWidget extends StatelessWidget {
  const WhyChooseUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorHelper.lightPrimary,
      margin: EdgeInsets.symmetric(vertical: DimensHelper.dimens_50),
      child: Column(
        children: [
          SizedBox(height: DimensHelper.dimens_30,),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30),
                child: Text("Why Choose Us?", style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.extraBold),),
              )),

          SizedBox(height: DimensHelper.dimens_12,),
          ...List.generate(_whyChooseUsContent.length, (index) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30, vertical: DimensHelper.dimens_8),
                child: Row(
                  children: [
                    Icon(Icons.circle, color: ColorHelper.textPrimary, size: DimensHelper.dimens_10,),
                    SizedBox(width: DimensHelper.dimens_8,),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          text: "${_whyChooseUsContent[index]['title']??""}  ", // Default style part
                          style: AppTextStyle.header2.copyWith(fontWeight: FontHelper.bold),
                          children: [
                            TextSpan(
                              text: _whyChooseUsContent[index]['description']??"",
                              style: AppTextStyle.header2.copyWith(fontWeight: FontHelper.regular)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),

          SizedBox(height: DimensHelper.dimens_20,),

          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30),
                child: Text("Get Started Today!", style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.extraBold),),
              )),

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30),
              child: Text("Experience the ease of managing your payments with SSR Solutions. Contact us to learn more about our services and how we can help your business thrive.", style: AppTextStyle.header2.copyWith(fontWeight: FontHelper.regular),),
            ),
          ),

          SizedBox(height: DimensHelper.dimens_30,),
        ],
      ),
    );
  }
}
