import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/side_menu.dart';
import 'package:lmb_project/pages/company_services.dart';
import 'package:lmb_project/pages/customsoln_new.dart';
import 'package:lmb_project/pages/home_page1.dart';
import 'package:lmb_project/pages/wedo_new.dart';
import 'package:lmb_project/pages/whatResInc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [WebColors.bgcolor2, WebColors.bgcolor1],
            )),
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Header(),
                home_page1(),
                CompanyServices(),
                WhatIncludedNew(),
                WhatWeDoNew(),
                CustomSolnNew(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
