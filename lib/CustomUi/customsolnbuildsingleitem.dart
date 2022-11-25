import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:shimmer/shimmer.dart';

class CustomSolnBuildSingleItem extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title, subtitle;
  const CustomSolnBuildSingleItem(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 60.0,
        right: 60.0,
        top: 20,
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 250,
            decoration: BoxDecoration(
              color: WebColors.bgcolor2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Shimmer.fromColors(
                  baseColor: WebColors.bgcolor1,
                  highlightColor: Colors.black,
                  child: Container(
                    child: Icon(
                      icon,
                      size: 50,
                      color: WebColors.bgcolor1,
                    ),
                  ),
                ),
                Container(
                  child: Shimmer.fromColors(
                    baseColor: WebColors.bgcolor1,
                    highlightColor: Colors.black,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: WebColors.bgcolor1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          subtitle,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                          textAlign: TextAlign.center,
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
