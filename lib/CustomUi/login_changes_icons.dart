import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import '../CustomUi/footer.dart';
import '../pages/Logedin.dart';
import '../pages/login_page.dart';
import 'custom_color.dart';

class MyConditionWidget2 extends StatelessWidget {
  const MyConditionWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    int y = 5;
    showwidget() {
      if (y >= 10) {
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: const Color.fromARGB(208, 219, 255, 59),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 3,
                  color: WebColors.bgcolor2,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavItem(
              title: 'Login',
              tapEvent: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  ModalRoute.withName("/"),
                );
              },
            ),
          ),
        );
      } else {
        return InkWell(
          onTap: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const LogedinPage(),
            ),
            ModalRoute.withName("/"),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AvatarGlow(
              glowColor: Colors.white,
              endRadius: 60.0,
              duration: const Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: const Duration(milliseconds: 100),
              child: Material(
                // Replace this child with your own
                elevation: 8.0,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 18.0,
                  child: const Icon(Icons.person,
                      size: 25, color: WebColors.bgcolor1),
                ),
              ),
            ),
          ),
        );
      }
    }

    return showwidget();
  }
}