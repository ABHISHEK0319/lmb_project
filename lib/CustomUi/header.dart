import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/drawer.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import 'package:lmb_project/pages/contact_us.dart';
import 'package:lmb_project/pages/home.dart';
import 'package:lmb_project/pages/productpage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'login_changes_icons.dart';
import 'menu_item.dart';

class ResponsiveHeaderView extends StatefulWidget {
  const ResponsiveHeaderView({super.key});

  @override
  State<ResponsiveHeaderView> createState() => _ResponsiveHeaderViewState();
}

class _ResponsiveHeaderViewState extends State<ResponsiveHeaderView> {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: const DrawerPage(),
      web: Header(),
    );
  }
}

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo1.png',
            width: 50,
          ),
          const SizedBox(width: 10),
          const Text(
            "LMB Technology",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          //if (!isMobile(context))
          Row(
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
          // if (isMobile(context))
          //   Padding(
          //     padding: const EdgeInsets.only(right: 1),
          //     child: Builder(builder: (context) {
          //       return IconButton(
          //           icon: const Icon(Icons.menu),
          //           onPressed: () {
          //             Scaffold.of(context).openEndDrawer();
          //           });
          //     }),
          //   ),
        ],
      ),
    );
  }
}
