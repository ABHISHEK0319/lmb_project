import 'package:flutter/material.dart';
class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.title,
    required this.tapEvent,
    this.color,
  }) : super(key: key);

  final String title;
  final Color? color;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Text(
        title,
        style: TextStyle(color: color, fontSize: 15),
      ),
    );
  }
}
