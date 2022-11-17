import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/pages/logout_dialog.dart';
import 'package:lmb_project/pages/samplyDashboard.dart';

class TabsLogedinPage extends StatefulWidget {
  const TabsLogedinPage({Key? key}) : super(key: key);

  @override
  State<TabsLogedinPage> createState() => _TabsLogedinPageState();
}

class _TabsLogedinPageState extends State<TabsLogedinPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.topRight,
            //   colors: [WebColors.bgcolor1, Colors.white],
            // ),
            color: WebColors.bgcolor1,
          ),
          child: Column(children: [
            // const Header(),
            const TabBar(
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w200),
                indicator: BoxDecoration(color: WebColors.bgcolor1),
                tabs: [
                  Tab(
                    icon: Icon(Icons.dashboard),
                    //text: "DASHBOARD",
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_bag),
                    //text: "ORDER",
                  ),
                  Tab(
                    icon: Icon(Icons.question_answer),
                    // text: "FAQ",
                  ),
                  Tab(
                    icon: Icon(Icons.logout),
                    //text: "LOGOUT",
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: const Color.fromARGB(119, 255, 172, 64),
                  child: const SampleUserDashboard(),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        color: const Color.fromARGB(128, 255, 82, 82),
                        child: const Center(
                          child: Text("Order"),
                        ),
                      ),
                      const Footer(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        color: const Color.fromARGB(90, 223, 64, 251),
                        child: const Center(
                          child: Text("Frequently asked question"),
                        ),
                      ),
                      const Footer(),
                    ],
                  ),
                ),
                const LogoutDialog(),
                //const SizedBox(height: 200),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
