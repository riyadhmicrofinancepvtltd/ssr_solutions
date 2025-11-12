import 'package:flutter/material.dart';
import 'package:ssr_solutions/extensions/color.dart';
import 'package:ssr_solutions/extensions/context.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';
import 'package:ssr_solutions/helpers/dimens_helper.dart';
import 'package:ssr_solutions/helpers/font_helper.dart';
import '../../helpers/app_text_style_helper.dart';

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

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorHelper.secondary,
      padding: EdgeInsets.symmetric(
        vertical: DimensHelper.dimens_30,
        horizontal: DimensHelper.dimens_30,
      ),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {

              return context.isMobile ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildContactInfoSection(),
                  const SizedBox(height: 20),
                  _buildInfoLinksSection(),
                ],
              )
                  : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 2, child: _buildContactInfoSection()),
                  const SizedBox(width: 40),
                  Expanded(flex: 1, child: _buildInfoLinksSection()),
                ],
              );
            },
          ),

          SizedBox(height: DimensHelper.dimens_20,),

          Divider(color: ColorHelper.white.withAlphaPercent(50),),
          SizedBox(height: DimensHelper.dimens_20,),

          Text("Copyright © 2025 SSR Solutions", style: AppTextStyle.subtitle3.copyWith(color: ColorHelper.white.withAlphaPercent(50), fontWeight: FontHelper.light),)

        ],
      ),
    );
  }
}

Widget _buildContactInfoSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(_contactUsContent.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${_contactUsContent[index]['title'] ?? ""}  ",
              style: AppTextStyle.subtitle3.copyWith(color: ColorHelper.white),
            ),
            Expanded(
              child: Text(
                _contactUsContent[index]['description'] ?? "",
                style: AppTextStyle.subtitle3.copyWith(color: ColorHelper.white),
              ),
            ),
          ],
        ),
      );
    }),
  );
}

Widget _buildInfoLinksSection() {
  final links = ["About Us", "Refund Policy", "Terms & Conditions"];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: links
        .map(
          (text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_4),
        child: Text(
          text,
          style: AppTextStyle.subtitle3.copyWith(color: ColorHelper.white),
        ),
      ),
    )
        .toList(),
  );
}
