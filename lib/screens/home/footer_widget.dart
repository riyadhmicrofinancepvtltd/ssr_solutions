import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ssr_solutions/extensions/color.dart';
import 'package:ssr_solutions/extensions/context.dart';
import 'package:ssr_solutions/helpers/color_helper.dart';
import 'package:ssr_solutions/helpers/dimens_helper.dart';
import 'package:ssr_solutions/helpers/font_helper.dart';
import 'package:ssr_solutions/screens/home/content_dialog.dart';
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
                  _buildInfoLinksSection(context),
                ],
              )
                  : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 2, child: _buildContactInfoSection()),
                  const SizedBox(width: 40),
                  Expanded(flex: 1, child: _buildInfoLinksSection(context)),
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

Widget _buildInfoLinksSection(BuildContext context) {
  final links = ["About Us", "Refund Policy", "Terms & Conditions"];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: links.map(
          (text) => GestureDetector(
            onTap: (){
              if(text == "About Us"){
                _aboutUs(context);
              } else if (text == "Refund Policy"){
                _refundPolicy(context);
              } else {
                _termsAndConditions(context);
              }
            },
            child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_4),
                    child: Text(
            text,
            style: AppTextStyle.subtitle3.copyWith(color: ColorHelper.white),
                    ),
                  ),
          ),
    )
        .toList(),
  );
}

Future<void> _aboutUs(BuildContext context) async {

  List<Map<String, String>> _content = [
    {
      "title": "Integrity",
      "description": "We uphold the highest standards of integrity in all our dealings."
    },
    {
      "title": "Customer Focus",
      "description": "Our customers are at the heart of everything we do."
    },
    {
      "title": "Innovation",
      "description": "We continuously innovate to provide the best solutions."
    },
    {
      "title": "Support",
      "description": "We are committed to providing exceptional support to our clients."
    }
  ];

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
          child: Text(
            "About Us",
            style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.extraBold),
          ),
        ),
        content: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.7, // 👈 limits height to 70% of screen
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min, // 👈 take min vertical space
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SSR Solutions is a leading provider of payment services, dedicated to simplifying financial transactions for businesses and individuals. With a focus on security, efficiency, and customer satisfaction, we strive to be the preferred choice for all payment needs. Our team of experts is committed to delivering exceptional service and support.",
                  style: AppTextStyle.subtitle3,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: DimensHelper.dimens_20, bottom: DimensHelper.dimens_4),
                  child: Text(
                    "Our Mission",
                    style: AppTextStyle.header3.copyWith(fontWeight: FontHelper.bold),
                  ),
                ),

                Text(
                  "To empower businesses with innovative payment solutions, ensuring seamless financial transactions and customer satisfaction.",
                  style: AppTextStyle.subtitle3,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: DimensHelper.dimens_20, bottom: DimensHelper.dimens_4),
                  child: Text(
                    "Our Values",
                    style: AppTextStyle.header3.copyWith(fontWeight: FontHelper.bold),
                  ),
                ),

                ...List.generate(_content.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, color: ColorHelper.textPrimary, size: DimensHelper.dimens_10),
                        SizedBox(width: DimensHelper.dimens_8),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: "${_content[index]['title'] ?? ""}  ",
                              style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.bold),
                              children: [
                                TextSpan(
                                  text: _content[index]['description'] ?? "",
                                  style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.regular),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            child: const Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );

}

Future<void> _refundPolicy(BuildContext context) async {

  List<Map<String, String>> _content = [
    {
      "title": "Eligibility",
      "description": "Refunds will be considered for services not rendered or in case of technical issues resulting in failed transactions."
    },
    {
      "title": "Process",
      "description": "Requests for refunds must be made within 7 days of the transaction date. Please contact our support team with your transaction details."
    },
    {
      "title": "Timeline",
      "description": "Refunds will be processed within 5-7 business days after approval."
    },
    {
      "title": "Contact",
      "description": "For any refund-related queries, please reach out to riyadhmicrofinancepvtltd@gmail.com."
    }
  ];

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
          child: Text(
            "Refund Policy",
            style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.extraBold),
          ),
        ),
        content: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.7, // 👈 limits height to 70% of screen
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min, // 👈 take min vertical space
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "At SSR Solutions, we strive to provide the best services to our clients. If you are not satisfied with our services, we offer a refund policy as follows:",
                  style: AppTextStyle.subtitle3,
                ),

                ...List.generate(_content.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${index+1}. ", style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.bold),),
                        SizedBox(width: DimensHelper.dimens_8),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: "${_content[index]['title'] ?? ""}  ",
                              style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.bold),
                              children: [
                                TextSpan(
                                  text: _content[index]['description'] ?? "",
                                  style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.regular),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            child: const Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );

}

Future<void> _termsAndConditions(BuildContext context) async {

  List<Map<String, String>> _content = [
    {
      "title": "Service Usage",
      "description": "Our services are for legitimate purposes only. Any misuse will result in termination of services."
    },
    {
      "title": "Payment Processing",
      "description": "Payments will be processed as per the agreed terms. Any delays due to technical issues will be addressed promptly."
    },
    {
      "title": "Fees",
      "description": "Our fees are clearly outlined in our service agreements. Any changes will be communicated in advance."
    },
    {
      "title": "Liability",
      "description": "We are not liable for any indirect or consequential losses arising from our services."
    },
    {
      "title": "Amendments",
      "description": "We reserve the right to amend these terms and conditions at any time."
    }
  ];

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
          child: Text(
            "Terms & Conditions",
            style: AppTextStyle.header5.copyWith(fontWeight: FontHelper.extraBold),
          ),
        ),
        content: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.7, // 👈 limits height to 70% of screen
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min, // 👈 take min vertical space
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "By using our services, you agree to the following terms and conditions:",
                  style: AppTextStyle.subtitle3,
                ),

                ...List.generate(_content.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: DimensHelper.dimens_8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${index+1}. ", style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.bold),),
                        SizedBox(width: DimensHelper.dimens_8),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: "${_content[index]['title'] ?? ""}  ",
                              style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.bold),
                              children: [
                                TextSpan(
                                  text: _content[index]['description'] ?? "",
                                  style: AppTextStyle.subtitle3.copyWith(fontWeight: FontHelper.regular),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            child: const Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );

}
