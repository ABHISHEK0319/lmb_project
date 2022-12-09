import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';

import '../pages/contact_us.dart';
import '../pages/home.dart';
import '../pages/productpage.dart';
import 'login_changes_icons.dart';
import 'menu_item.dart';
import 'onHoverEffect.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.only(left: 12, top: 5),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [WebColors.bgcolor2, WebColors.bgcolor1],
          ),
          // border: Border(
          //   top: BorderSide(color: Color(0xFFFFFFFF)),
          //   left: BorderSide(color: Color(0xFFFFFFFF)),
          //   right: BorderSide(),
          //   // bottom: BorderSide(),
          // ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo1.png',
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "LMB Technology",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 5),
            Wrap(
              runSpacing: 30.0,
              //crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                OnHoverButton(
                  child: NavItem(
                    title: 'Home',
                    tapEvent: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        ModalRoute.withName("/"),
                      );
                    },
                  ),
                ),
                OnHoverButton(
                  child: NavItem(
                    title: 'Products',
                    tapEvent: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductPage()),
                        ModalRoute.withName("/"),
                      );
                    },
                  ),
                ),
                OnHoverButton(
                  child: NavItem(
                    title: 'Contact Us',
                    tapEvent: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactUs()),
                        ModalRoute.withName("/"),
                      );
                    },
                  ),
                ),
                const MyConditionWidget2()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
