import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/buildsingleitem.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/responsive.dart';
import 'package:shimmer/shimmer.dart';

class WhatIncludedNew extends StatelessWidget {
  const WhatIncludedNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context))
        ? const Responsive_Com_Serv()
        : const Responsive_Com_Serv();
  }
}

class Responsive_Com_Serv extends StatelessWidget {
  const Responsive_Com_Serv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Expanded(
            child: Column(
          children: [
            const SizedBox(height: 30),
            Shimmer.fromColors(
              baseColor: WebColors.bgcolor1,
              highlightColor: Colors.lime,
              child: const Text(
                '''What's Included''',
                style: TextStyle(
                    fontSize: 34,
                    color: WebColors.bgcolor1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  'In our organization, We are also includes in mobile, desktop, website application like Manage Business,  Global Payment, Comprehensive Security, Predictable Payout, Collaboration Notes and Developer Dashboard.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Card Start
            Wrap(alignment: WrapAlignment.spaceEvenly, children: const [
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.precision_manufacturing_outlined,
                title: "Manage Business",
                subtitle:
                    "    90% of new startups fail? Unfortunately, due to the lack of professional business management. We are providing Business management system for your organisation to grow up fastly.",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.wallet,
                title: "Global Payments",
                subtitle:
                    "    Payment Companies, Merchant Acounts, and Consumers are all shifting to digital, which is giving gateways more influence. Due to which our organization also provides payment gateway service on Mobile, Website and System Application.",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.security_outlined,
                title: "Comprehensive Security",
                subtitle:
                    "    In today's world our website should have comprehensive security, provide the security is very costly. But our company provides a massive and comprehensive security for your web, app and system software at a very affordable cost.",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.paypal_outlined,
                title: "Predictable Payout",
                subtitle:
                    "    Many companies use payout system to pay their employees with the help payout management system, which is made available by our company to the customer, in the form of website, mobile and system software.",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.note_add_rounded,
                title: "Collaboration Notes",
                subtitle:
                    "    To getting the height of success in your field needs collaboration. So we will also providing service of collaboration note for your company growth. I hope this will win-win situation both of us.",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.dashboard,
                title: "Developer Dashboard",
                subtitle:
                    "    Dashboard is the section where you get all the details about your activities. You can easily track and manage product and services that you avail. So We will provide different type of dashboard for your Organization/Company.",
              ),
            ]),
            const SizedBox(height: 50),
          ],
        )),
      ]),
    );
  }
}
