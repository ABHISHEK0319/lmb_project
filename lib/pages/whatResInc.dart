import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/buildsingleitem.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/responsive.dart';

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
            const Text(
              '''What's Included''',
              style: TextStyle(
                  fontSize: 30,
                  color: WebColors.bgcolor1,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts. When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.justify,
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
                subtitle1: "subtitle1",
                subtitle2: "subtitle2",
                subtitle3: "subtitle3",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.wallet,
                title: "Global Payments",
                subtitle1: "subtitle1",
                subtitle2: "subtitle2",
                subtitle3: "subtitle3",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.security_outlined,
                title: "Comprehensive Security",
                subtitle1: "subtitle1",
                subtitle2: "subtitle2",
                subtitle3: "subtitle3",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.paypal_outlined,
                title: "Predictable Payout",
                subtitle1: "subtitle1",
                subtitle2: "subtitle2",
                subtitle3: "subtitle3",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.note_add_rounded,
                title: "Collabration Notes",
                subtitle1: "subtitle1",
                subtitle2: "subtitle2",
                subtitle3: "subtitle3",
              ),
              BuildSingleItem(
                color: Colors.white,
                icon: Icons.dashboard,
                title: "Developer Dashboard",
                subtitle1: "subtitle1",
                subtitle2: "subtitle2",
                subtitle3: "subtitle3",
              ),
            ]),
            const SizedBox(height: 50),
          ],
        )),
      ]),
    );
  }
}
