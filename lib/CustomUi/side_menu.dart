import 'package:flutter/material.dart';
import 'package:lmb_project/pages/contact_us.dart';
import 'package:lmb_project/pages/login_page.dart';
import 'package:lmb_project/pages/productpage.dart';

import '../pages/home.dart';
import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width * 0.5,
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 10),
              NavItem(
                title: 'Home',
                tapEvent: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Products',
                tapEvent: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Contact Us',
                tapEvent: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactUs(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Login',
                tapEvent: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
