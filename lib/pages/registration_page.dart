import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import 'package:lmb_project/pages/login_page.dart';
import 'package:lmb_project/utils/connection_class.dart';
import 'package:velocity_x/velocity_x.dart';
import '../CustomUi/main_button.dart';
import '../CustomUi/responsive.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context))
        ? ResponsiveRegistrationPage()
        : ResponsiveRegistrationPage();
  }
}

class ResponsiveRegistrationPage extends StatelessWidget {
  ResponsiveRegistrationPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerContact = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPsswd = TextEditingController();
  final TextEditingController _controllerConfirm = TextEditingController();
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
                  //Header(),
                  const ResponsiveHeaderView(),
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
                            TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter User Name',
                                labelText: "User Name",
                              ),
                              controller: _controller,
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Email',
                                labelText: 'Email',
                              ),
                              controller: _controllerEmail,
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Phone Number',
                                labelText: 'Contact Number',
                              ),
                              controller: _controllerContact,
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Type Password',
                                labelText: 'Password',
                              ),
                              controller: _controllerPsswd,
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Re-type Password',
                                labelText: 'Confirm Password',
                              ),
                              controller: _controllerConfirm,
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
                                    tapEvent: () {
                                      String name = _controller.text.toString();
                                      String email =
                                          _controllerEmail.text.toString();
                                      String contact =
                                          _controllerContact.text.toString();
                                      String passwd =
                                          _controllerPsswd.text.toString();
                                      String confirm =
                                          _controllerConfirm.text.toString();
                                      String fname = '', mname = '', lname = '';
                                      if (name.isNotEmpty) {
                                        var x = name.split(' ');
                                        if (x.length == 2) {
                                          fname = x[0];
                                          lname = x[1];
                                        } else {
                                          fname = x[0];
                                          lname = x[2];
                                          mname = x[1];
                                        }

                                        if (passwd == confirm) {
                                          if (!ConnectionClass.isConnected) {
                                            ConnectionClass.conn();
                                          }
                                          var result = ConnectionClass.writeData(
                                              "EXEC sp_GetLogin '', $name, $fname, $mname, $lname, $contact, $email, $passwd, '2' ");
                                          if (result == 1) {
                                            AlertDialog(
                                              title: 'Sucess'.text.make(),
                                            );
                                          } else {
                                            AlertDialog(
                                              title: 'Fail'.text.make(),
                                            );
                                          }
                                        } else {
                                          AlertDialog(
                                            title:
                                                'Mismatch Password'.text.make(),
                                          );
                                        }
                                      } else {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: 'Input Error'.text.make(),
                                          ),
                                        );
                                      }

                                      //   if (!ConnectionClass.isConnected) {
                                      //     ConnectionClass.conn();
                                      //   }
                                      //   var result = await ConnectionClass.writeData(
                                      //       "EXEC sp_GetLogin '', $name, $fname, $mname, $lname, $contact, $email, $passwd, '2' ");
                                    },
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
