import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import 'package:lmb_project/CustomUi/responsive.dart';
import 'package:shimmer/shimmer.dart';

import '../CustomUi/custom_color.dart';

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
                Shimmer.fromColors(
                  baseColor: Colors.black,
                  highlightColor: Colors.amber,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Buy ',
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 50 : 25,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                    TextSpan(
                        text: 'Feel Free',
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 50 : 25,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                  ])),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.black,
                  highlightColor: Colors.amber,
                  child: Text(
                    'Technology Products',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 50 : 25,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.black,
                  highlightColor: Colors.amber,
                  child: Text(
                    'Online Today!',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 50 : 25,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 10),
                DefaultTextStyle(
                  style: GoogleFonts.fredokaOne(
                    textStyle: const TextStyle(
                      fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Help us in making this world a better place for Technology.',
                        textStyle: TextStyle(
                            fontSize: isDesktop(context) ? 36 : 18,
                            fontWeight: FontWeight.w300),
                        textAlign: isMobile(context)
                            ? TextAlign.center
                            : TextAlign.start,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 50,
                    // onTap: () {
                    //   print("Tap Event");
                    // },
                  ),
                ),
                // Text(
                //   'Help us in making this world a better place for Technology.',
                //   textAlign:
                //       isMobile(context) ? TextAlign.center : TextAlign.start,
                //   style: TextStyle(
                //       fontSize: isDesktop(context) ? 36 : 18,
                //       fontWeight: FontWeight.w300),
                // ),
                const SizedBox(height: 10),
              ],
            ),
          )),
          if (isDesktop(context) || isTab(context))
            Expanded(
              child: OnHoverButton(
                child: Image.asset(
                  'assets/images/technology1.png',
                  height: size.height * 0.7,
                ),
              ),
            )
        ],
      ),
    );
  }
}
