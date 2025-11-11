import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sizer/sizer.dart';
import 'package:ssr_solutions/extensions/context.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';

import '../../helpers/app_text_style_helper.dart';
import '../../helpers/assets.gen.dart';
import '../../helpers/dimens_helper.dart';
import '../../helpers/font_helper.dart';


List<Map<String, String>> _ourServicesContent = [
  {
    "title": "Salary Disbursement Payouts",
    "description": "Efficient and timely salary payments to employees, ensuring their satisfaction and productivity.",
    "imagePath": Assets.images.salaryDisbursement.path
  },
  {
    "title": "Vendor Payments",
    "description": "Simplify your accounts payable process with our secure and reliable vendor payment solutions.",
    "imagePath": Assets.images.vendorPayments.path
  },
  {
    "title": "Utility Payments",
    "description": "Hassle-free payment of utility bills, ensuring uninterrupted services for your business.",
    "imagePath": Assets.images.utilityBillPayments.path
  },
  {
    "title": "Recharge Services",
    "description": "Convenient recharge options for mobile, DTH, and other services, keeping you connected always.",
    "imagePath": Assets.images.rechargeServices.path
  },
];


class HomeOurServicesWidget extends StatelessWidget {
  const HomeOurServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_20),
              child: Text("Our Services", style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.extraBold),),
            )),


        MasonryGridView.count(
          crossAxisCount: context.isMobile? 1: context.isTablet? 2: 4,
          mainAxisSpacing: DimensHelper.dimens_30,
          crossAxisSpacing: DimensHelper.dimens_30,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: DimensHelper.dimens_30),
          itemCount: _ourServicesContent.length,
          itemBuilder: (context, index) {
            final data = _ourServicesContent[index];
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorHelper.outline),
                borderRadius: BorderRadius.circular(DimensHelper.dimens_30)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(DimensHelper.dimens_30),
                      topRight: Radius.circular(DimensHelper.dimens_30),
                      bottomLeft: Radius.circular(DimensHelper.dimens_30),
                    ),
                    child: Image.asset(
                      data['imagePath']??"",
                      height: context.isMobile? 80.w - 60:  context.isTablet? 40.w - 45: (100.w - 150) / 6,
                      width: context.isMobile? 100.w - 60:  context.isTablet? 50.w - 45: (100.w - 150) / 4,
                      fit: BoxFit.fill,),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(
                      top: DimensHelper.dimens_12,
                      left: DimensHelper.dimens_12,
                      bottom: DimensHelper.dimens_8,
                      right: DimensHelper.dimens_12
                    ),
                    child: Text(data['title']??"", style: AppTextStyle.header2.copyWith(fontWeight: FontHelper.bold),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: DimensHelper.dimens_12,
                    right: DimensHelper.dimens_12,
                    bottom: DimensHelper.dimens_20),
                    child: Text(data['description']??"", style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.regular),),
                  ),
                ],
              ),
            );
          },
        )

      ],
    );
  }
}
