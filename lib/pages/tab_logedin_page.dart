import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import 'package:lmb_project/pages/faq.dart';
import 'package:lmb_project/pages/logout_dialog.dart';
import 'package:lmb_project/pages/mycartbody.dart';
import 'package:lmb_project/pages/order.dart';
import 'package:lmb_project/pages/userDashboard.dart';

class TabsLogedinPage extends StatefulWidget {
  const TabsLogedinPage({Key? key}) : super(key: key);

  @override
  State<TabsLogedinPage> createState() => _TabsLogedinPageState();
}

class _TabsLogedinPageState extends State<TabsLogedinPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [WebColors.bgcolor1, Colors.white],
            ),
          ),
          child: Column(children: [
            const TabBar(
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w200),
                indicator: BoxDecoration(color: WebColors.bgcolor1),
                tabs: [
                  OnHoverButton(
                    child: Tab(
                      icon: Icon(Icons.dashboard),
                      //text: "DASHBOARD",
                    ),
                  ),
                  OnHoverButton(
                    child: Tab(
                      icon: Icon(Icons.shopping_bag),
                      //text: "ORDER",
                    ),
                  ),
                  OnHoverButton(
                    child: Tab(
                      icon: Icon(Icons.question_answer),
                      // text: "FAQ",
                    ),
                  ),
                  OnHoverButton(
                    child: Tab(
                      icon: Icon(Icons.shopping_cart_checkout_outlined),
                      // text: "FAQ",
                    ),
                  ),
                  OnHoverButton(
                    child: Tab(
                      icon: Icon(Icons.logout),
                      //text: "LOGOUT",
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: const UserDashboard(),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: const Center(
                          child: MyOrderResponsive(),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                        child: const Center(
                          child: Faq(),
                        ),
                      ),
                    ],
                  ),
                ),
                const MyCartBody(),
                const LogoutDialog(),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
