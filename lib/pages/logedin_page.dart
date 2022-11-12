import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/main_button.dart';
import 'package:lmb_project/pages/userdashboad.dart';

class LogedinPage extends StatefulWidget {
  const LogedinPage({Key? key}) : super(key: key);

  @override
  State<LogedinPage> createState() => _LogedinPageState();
}

class _LogedinPageState extends State<LogedinPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [WebColors.bgcolor1, Colors.white],
          )),
          child: Column(children: [
            const Header(),
            const TabBar(
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w200),
                indicator: BoxDecoration(color: WebColors.bgcolor1),
                tabs: [
                  Tab(
                    icon: Icon(Icons.dashboard),
                    text: "DASHBOARD",
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_bag),
                    text: "ORDER",
                  ),
                  Tab(
                    icon: Icon(Icons.question_answer),
                    text: "FAQ",
                  ),
                  Tab(
                    icon: Icon(Icons.logout),
                    text: "LOGOUT",
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: const Color.fromARGB(119, 255, 172, 64),
                  child: const Center(
                    child: UserDashboard(),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(128, 255, 82, 82),
                  child: const Center(
                    child: Text("Order"),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(90, 223, 64, 251),
                  child: const Center(
                    child: Text("Frequently asked question"),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(128, 255, 82, 82),
                  child: Center(
                    child: MainButton(
                      title: "LogOut",
                      tapEvent: () {
                        print("Logout the user");
                      },
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 200),
              ]),
            ),
            const Footer()
          ]),
        ),
      ),
    );
  }
}
