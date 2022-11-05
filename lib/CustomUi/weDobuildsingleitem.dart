import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';

class WeDoBuildSingleItem extends StatelessWidget {
  final Color color;
  final String title, subtitle;
  const WeDoBuildSingleItem({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        top: 25,
      ),
      child: Column(
        children: [
          Container(
            height: 220,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 26),
                Container(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      color: WebColors.bgcolor1,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          maxLines: 8,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
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
