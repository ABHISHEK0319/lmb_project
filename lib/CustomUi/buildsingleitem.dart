import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';

class BuildSingleItem extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title, subtitle1, subtitle2, subtitle3;
  const BuildSingleItem({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 60.0,
        right: 60.0,
        top: 10,
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  child: Icon(
                    icon,
                    size: 50,
                    color: WebColors.bgcolor1,
                  ),
                ),
                Container(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      color: WebColors.bgcolor1,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          subtitle1,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          subtitle2,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          subtitle3,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
