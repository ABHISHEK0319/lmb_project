import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import 'package:lmb_project/pages/login_page.dart';
import '../CustomUi/main_button.dart';
import '../CustomUi/responsive.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context))
        ? const ResponsiveRegistrationPage()
        : const ResponsiveRegistrationPage();
  }
}

class ResponsiveRegistrationPage extends StatelessWidget {
  const ResponsiveRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [WebColors.bgcolor1, Colors.white],
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Header(),
                  const SizedBox(height: 10),
                  const Text(
                    'User Registration',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Create an account its free',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 620,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/teamwork.png",
                              width: 150,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 20),
                            const TextField(
                                decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter User Name',
                              labelText: 'User Name',
                            )),
                            const SizedBox(height: 20),
                            const TextField(
                                decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Email',
                              labelText: 'Email',
                            )),
                            const SizedBox(height: 20),
                            const TextField(
                                decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Phone Number',
                              labelText: 'Contact Number',
                            )),
                            const SizedBox(height: 20),
                            const TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Type Password',
                                labelText: 'Password',
                              ),
                            ),
                            const SizedBox(height: 20),
                            const TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Re-type Password',
                                labelText: 'Confirm Password',
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // const SizedBox(width: 10),
                                OnHoverButton(
                                  child: MainButton(
                                    title: 'Sign Up',
                                    color: WebColors.bgcolor1,
                                    tapEvent: () {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an Account ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage(),
                                        ),
                                        (route) => false);
                                  },
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: WebColors.bgcolor1,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Footer(),
                ])),
      ),
    );
  }
}
