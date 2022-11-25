import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'custom_color.dart';

// ignore: must_be_immutable
class FaqCard extends StatelessWidget {
  String quesno, ques, ansno, ans;

  FaqCard(
      {super.key,
      required this.quesno,
      required this.ques,
      required this.ansno,
      required this.ans});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Card(
        elevation: 10,
        child: ExpansionTile(
          textColor: WebColors.bgcolor1,
          leading: quesno.text.bold.make(),
          title: ques.text.bold.make(),
          children: [
            ListTile(
              leading: ansno.text.color(WebColors.bgcolor1).make(),
              subtitle: ans.text.make(),
            )
          ],
        ),
      ),
    );
  }
}
