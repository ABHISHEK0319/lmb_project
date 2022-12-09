import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import '../CustomUi/custom_color.dart';
import '../CustomUi/footer.dart';
import '../CustomUi/main_button.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              WebColors.bgcolor1,
              Colors.white,
              WebColors.bgcolor2,
            ],
          )),
          child: Column(
            children: [
              //Header(),
              const ResponsiveHeaderView(),
              const SizedBox(height: 50),
              Card(
                color: WebColors.bgcolor2,
                elevation: 10,
                child: Container(
                  margin: const EdgeInsets.only(
                      right: 20, left: 20, bottom: 20, top: 20),
                  width: 600,
                  height: 500,
                  child: Card(
                    color: WebColors.bgcolor1,
                    elevation: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 50),
                            child: Text(
                              'Contact Us',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                              maxLines: 1,
                              cursorColor: Colors.white,
                              cursorWidth: 3,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusColor: Colors.white,
                                  icon: Icon(Icons.email,
                                      color: WebColors.txtcolor),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'you@example.com',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(44, 255, 255, 255),
                                      fontSize: 15),
                                  labelText: 'E-mail Address',
                                  labelStyle: TextStyle(
                                      color: WebColors.txtcolor,
                                      fontSize: 15))),
                          const SizedBox(height: 20),
                          const TextField(
                              maxLines: 1,
                              cursorColor: Colors.white,
                              cursorWidth: 3,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.person,
                                      color: WebColors.txtcolor),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(44, 255, 255, 255),
                                      fontSize: 15),
                                  labelText: 'Name',
                                  labelStyle: TextStyle(
                                      color: WebColors.txtcolor,
                                      fontSize: 15))),
                          const SizedBox(height: 20),
                          const TextField(
                              maxLines: 3,
                              cursorColor: Colors.white,
                              cursorWidth: 3,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.message,
                                      color: WebColors.txtcolor),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Message',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(44, 255, 255, 255),
                                      fontSize: 15),
                                  labelText: 'Message',
                                  labelStyle: TextStyle(
                                      color: WebColors.txtcolor,
                                      fontSize: 15))),
                          const SizedBox(height: 30),
                          OnHoverButton(
                            child: MainButton(
                              title: 'Submit',
                              color: Colors.black,
                              tapEvent: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
