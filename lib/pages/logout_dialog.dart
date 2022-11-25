import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/pages/home.dart';

import '../CustomUi/main_button.dart';
import 'tab_logedin_page.dart';
import 'Logedin.dart';

class LogoutDialog extends StatefulWidget {
  const LogoutDialog({super.key});

  @override
  State<LogoutDialog> createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<LogoutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [WebColors.bgcolor1, Colors.white],
        )),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.logout, size: 80, color: Colors.red),
                const SizedBox(height: 30),
                const Text('Would you like to Log Out ?'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainButton(
                      title: "Yes",
                      tapEvent: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => true);
                      },
                      color: Colors.red,
                    ),
                    const SizedBox(width: 20),
                    MainButton(
                        title: "No",
                        tapEvent: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SampleLogedinPage(),
                              ),
                              (route) => true);
                        },
                        color: WebColors.bgcolor1),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
