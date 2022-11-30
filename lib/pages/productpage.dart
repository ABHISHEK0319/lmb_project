import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/product_buildsingleitem.dart';
import 'package:lmb_project/CustomUi/responsive.dart';
import 'package:shimmer/shimmer.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context))
        ? const Responsive_Com_Serv()
        : const Responsive_Com_Serv();
  }
}

// ignore: camel_case_types
class Responsive_Com_Serv extends StatelessWidget {
  const Responsive_Com_Serv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            //color: WebColors.ComServColor,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                WebColors.bgcolor1,
                Colors.white,
              ],
            )),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: <Widget>[
                    const Header(),
                    const SizedBox(height: 30),
                    Shimmer.fromColors(
                      baseColor: Colors.black,
                      highlightColor: Colors.white,
                      child: DefaultTextStyle(
                        style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText('Avaliable Products'),
                          ],
                          isRepeatingAnimation: true,
                          totalRepeatCount: 50,
                          // onTap: () {
                          //   print("Tap Event");
                          // },
                        ),
                      ),
                    ),
                    // const Text(
                    //   'Avaliable Products',
                    //   style: TextStyle(
                    //     fontSize: 35,
                    //     color: Colors.black87,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 50, right: 50),
                    //   child: AnimatedTextKit(
                    //     animatedTexts: [
                    //       TypewriterAnimatedText(
                    //         'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts. When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
                    //         textStyle: const TextStyle(
                    //           fontSize: 18.0,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //         textAlign: TextAlign.center,
                    //         speed: const Duration(milliseconds: 80),
                    //       ),
                    //     ],
                    //     totalRepeatCount: 4,
                    //     pause: const Duration(milliseconds: 1000),
                    //     displayFullTextOnTap: true,
                    //     stopPauseOnTap: true,
                    //   ),
                    // ),

                    // const SizedBox(height: 30),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts. When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Card Start
                    Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              const ProductBuildSingleItem(
                                color: Colors.white,
                                image: "assets/images/innovations.jpg",
                                title: "Mobile Application",
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: WebColors.bgcolor1,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: AnimatedButton(
                                  height: 30,
                                  width: 120,
                                  text: 'Download',
                                  isReverse: true,
                                  selectedTextColor: WebColors.bgcolor1,
                                  transitionType: TransitionType.LEFT_TO_RIGHT,
                                  textStyle: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  backgroundColor: WebColors.bgcolor1,
                                  borderColor: Colors.white,
                                  borderRadius: 5,
                                  borderWidth: 2,
                                  onPress: () {},
                                ),
                                // const ElevatedButton(
                                //   onPressed: null,
                                //   child: Text(
                                //     "Download",
                                //     style: TextStyle(
                                //         color: Colors.white, fontSize: 15),
                                //     textAlign: TextAlign.center,
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const ProductBuildSingleItem(
                                color: Colors.white,
                                image: "assets/images/innovations.jpg",
                                title: "System Application",
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: WebColors.bgcolor1,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: AnimatedButton(
                                  height: 30,
                                  width: 120,
                                  text: 'Download',
                                  isReverse: true,
                                  selectedTextColor: WebColors.bgcolor1,
                                  transitionType: TransitionType.LEFT_TO_RIGHT,
                                  textStyle: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  backgroundColor: WebColors.bgcolor1,
                                  borderColor: Colors.white,
                                  borderRadius: 5,
                                  borderWidth: 2,
                                  onPress: () {},
                                ),

                                // const ElevatedButton(
                                //   onPressed: null,
                                //   child: Text(
                                //     "Download",
                                //     style: TextStyle(
                                //         color: Colors.white, fontSize: 15),
                                //     textAlign: TextAlign.center,
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts. When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Card Start
                    Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              const ProductBuildSingleItem(
                                color: Colors.white,
                                image: "assets/images/innovations.jpg",
                                title: "Mobile Application",
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: WebColors.bgcolor1,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: AnimatedButton(
                                  height: 30,
                                  width: 120,
                                  text: 'Download',
                                  isReverse: true,
                                  selectedTextColor: WebColors.bgcolor1,
                                  transitionType: TransitionType.LEFT_TO_RIGHT,
                                  textStyle: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  backgroundColor: WebColors.bgcolor1,
                                  borderColor: Colors.white,
                                  borderRadius: 5,
                                  borderWidth: 2,
                                  onPress: () {},
                                ),
                                // const ElevatedButton(
                                //   onPressed: null,
                                //   child: Text(
                                //     "Download",
                                //     style: TextStyle(
                                //         color: Colors.white, fontSize: 15),
                                //     textAlign: TextAlign.center,
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const ProductBuildSingleItem(
                                color: Colors.white,
                                image: "assets/images/innovations.jpg",
                                title: "System Application",
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: WebColors.bgcolor1,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: AnimatedButton(
                                  height: 30,
                                  width: 120,
                                  text: 'Download',
                                  isReverse: true,
                                  selectedTextColor: WebColors.bgcolor1,
                                  transitionType: TransitionType.LEFT_TO_RIGHT,
                                  textStyle: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  backgroundColor: WebColors.bgcolor1,
                                  borderColor: Colors.white,
                                  borderRadius: 5,
                                  borderWidth: 2,
                                  onPress: () {},
                                ),

                                // const ElevatedButton(
                                //   onPressed: null,
                                //   child: Text(
                                //     "Download",
                                //     style: TextStyle(
                                //         color: Colors.white, fontSize: 15),
                                //     textAlign: TextAlign.center,
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 50),
                    const Footer(),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
