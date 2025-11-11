import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ssr_solutions/extensions/context.dart';

import '../../helpers/app_text_style_helper.dart';
import '../../helpers/color_helper.dart';
import '../../helpers/dimens_helper.dart';
import '../../helpers/font_helper.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensHelper.dimens_20),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ColorHelper.primary, ColorHelper.primary])
      ),
      child: Column(
        children: [
          SizedBox(
              width: 100.w,
              child: Text("Welcome to SSR Solutions", style: AppTextStyle.header6.copyWith(fontWeight: FontHelper.extraBold, color: ColorHelper.white),)),

          SizedBox(height: DimensHelper.dimens_10.h,),

          Text("Empowering Businesses\nwith Seamless Payment Solutions", style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.bold, color: ColorHelper.white), textAlign: TextAlign.center,),

          SizedBox(height: DimensHelper.dimens_5.h,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.isMobile? DimensHelper.dimens_0: context.isTablet?DimensHelper.dimens_20: DimensHelper.dimens_14.w),
            child: Text("At SSR Solutions, we offer comprehensive payment services designed to streamline your financial operations. Our solutions include:", style: AppTextStyle.header3.copyWith(fontWeight: FontHelper.regular, color: ColorHelper.white), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 10.h,)
        ],
      ),
    );
  }
}
