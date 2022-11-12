import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text('Dashboard'),
            ),
          ],
        ),
      ),

      //  Container(
      //   color: Colors.white,
      //   child: Center(
      //     child: Column(
      //       children: <Widget>[
      //         const SizedBox(height: 10),
      //         Container(
      //           color: Colors.blueGrey,
      //           child: productOptionRow,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  // Widget productOptionRow =
}

class GridProduct extends StatefulWidget {
  const GridProduct({super.key});

  @override
  State<GridProduct> createState() => _GridProductState();
}

class _GridProductState extends State<GridProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 100,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 4,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 60,
          width: 100,
          color: WebColors.bgcolor1,
        );
      },
    );
  }
}
