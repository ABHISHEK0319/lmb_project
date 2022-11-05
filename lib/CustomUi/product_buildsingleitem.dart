import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';

class ProductBuildSingleItem extends StatelessWidget {
  final Color color;
  final String image;
  final String title;

  const ProductBuildSingleItem({
    super.key,
    required this.color,
    required this.image,
    required this.title,
  });

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
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Container(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
