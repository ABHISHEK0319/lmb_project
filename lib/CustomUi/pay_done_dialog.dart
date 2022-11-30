import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

import '../pages/Logedin.dart';
import 'custom_color.dart';

class PayDoneDialog extends StatelessWidget {
  const PayDoneDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        AntDesign.checkcircle,
        size: 55,
      ),
      iconColor: WebColors.bgcolor1,
      iconPadding: const EdgeInsets.all(10),
      title: const Text("Payment Sucessfully Completed"),
      titleTextStyle: const TextStyle(color: WebColors.bgcolor1),
      actions: [
        Center(
          child: ElevatedButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogedinPage(),
                    ),
                  ),
              child: const Text('OK')),
        )
      ],
    );
  }
}
