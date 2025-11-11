import 'package:flutter/material.dart';
import 'package:ssr_solutions/helpers/app_text_style_helper.dart';

import '../../helpers/color_helper.dart';
import '../../helpers/dimens_helper.dart';
import '../../helpers/font_helper.dart';


List<Map<String, String>> _contactUsContent = [
  {
    'title': "Email: ",
    'description': "riyadhmicrofinancepvtltd@gmail.com"
  },
  {
    'title': "Phone: ",
    'description': "+91 9667504062"
  },
  {
    'title': "Address: ",
    'description': "Shop No 38, Shayam palace, Sector 4 , Gurgaon, Harayana 122001"
  }
];

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30),
              child: Text("Contact Us", style: AppTextStyle.header4.copyWith(fontWeight: FontHelper.extraBold),),
            )),

        SizedBox(height: DimensHelper.dimens_12,),

        ...List.generate(_contactUsContent.length, (index) =>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30, vertical: DimensHelper.dimens_8),
              child: Row(
                children: [
                  Icon(Icons.circle, color: ColorHelper.textPrimary, size: DimensHelper.dimens_10,),
                  SizedBox(width: DimensHelper.dimens_8,),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        text: "${_contactUsContent[index]['title']??""}  ", // Default style part
                        style: AppTextStyle.header2.copyWith(fontWeight: FontHelper.bold),
                        children: [
                          TextSpan(
                              text: _contactUsContent[index]['description']??"",
                              style: AppTextStyle.header2.copyWith(fontWeight: FontHelper.regular)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),

        SizedBox(height: DimensHelper.dimens_30,),

      ],
    );
  }
}
