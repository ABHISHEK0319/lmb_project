import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/responsive.dart';

// ignore: camel_case_types
class home_page1 extends StatelessWidget {
  const home_page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
            child: Column(
              mainAxisAlignment: !isMobile(context)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              crossAxisAlignment: !isMobile(context)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: <Widget>[
                if (isMobile(context))
                  Image.asset(
                    'assets/images/technology1.png',
                    height: size.height * 0.3,
                  ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Buy ',
                      style: TextStyle(
                          fontSize: isDesktop(context) ? 50 : 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.black)),
                  TextSpan(
                      text: 'Cruelty Free',
                      style: TextStyle(
                          fontSize: isDesktop(context) ? 50 : 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.black)),
                ])),
                Text(
                  'Technology Products',
                  style: TextStyle(
                      fontSize: isDesktop(context) ? 50 : 25,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'Online Today!',
                  style: TextStyle(
                      fontSize: isDesktop(context) ? 50 : 25,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                Text(
                  'Help us in making this world a better place for Technology.',
                  textAlign:
                      isMobile(context) ? TextAlign.center : TextAlign.start,
                  style: TextStyle(
                      fontSize: isDesktop(context) ? 36 : 18,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 10),
              ],
            ),
          )),
          if (isDesktop(context) || isTab(context))
            Expanded(
              child: Image.asset(
                'assets/images/technology1.png',
                height: size.height * 0.7,
              ),
            )
        ],
      ),
    );
  }
}
