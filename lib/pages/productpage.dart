import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/product_buildsingleitem.dart';
import 'package:lmb_project/CustomUi/responsive.dart';

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
                    const Text(
                      'Avaliable Products',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
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
                                child: const ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    "Download",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
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
                                child: const ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    "Download",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
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
                                child: const ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    "Download",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
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
                                child: const ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    "Download",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
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
