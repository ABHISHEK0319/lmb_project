import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/fancyButton.dart';

class MyFloatingBtnWidget extends StatefulWidget {
  const MyFloatingBtnWidget({super.key});

  @override
  State<MyFloatingBtnWidget> createState() => _MyFloatingBtnWidgetState();
}

class _MyFloatingBtnWidgetState extends State<MyFloatingBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FancyButton(onPressed: () {}),
    );
  }
}
