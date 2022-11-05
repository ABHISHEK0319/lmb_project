import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/responsive.dart';

class CompanyServices extends StatelessWidget {
  const CompanyServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context))
        ? const Responsive_Com_Serv()
        : const Responsive_Com_Serv();
  }
}

class Responsive_Com_Serv extends StatelessWidget {
  const Responsive_Com_Serv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.ComServColor,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Expanded(
            child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              'Company Services',
              style: TextStyle(
                  fontSize: 34,
                  color: WebColors.bgcolor1,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: Text(
                  'Our company provides facility like Prototyping, Development and Innovative Designs for App Development, Website Development and System Software Development for the individual person and also development for Startups, already Established Companies and for also Clients.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Card Start
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                //  >>> CARD ONE Prototyping <<<
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 335,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/protyping.jpg",
                                fit: BoxFit.cover,
                                height: 168,
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Prototyping',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: WebColors.bgcolor1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: const Text(
                                  'Prototypes are a crucial part of the design process and a practice used in all design disciplines.Before starting development our software engineers and designers makes multiple prototype, analysis them and than started development.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //  >>> CARD ONE Prototyping  {..END..} <<<

                //  >>> CARD TWO Development <<<
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 335,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/development.jpg",
                                height: 168,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Development',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: WebColors.bgcolor1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: const Text(
                                  'Software development is a process by which standalone or individual software is created using a specific programming language. After the creating and analyzing the prototype and then starts the coding section of the software by developers.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //  >>> CARD TWO Development  {..END..} <<<

                //  >>> CARD THREE Innovation <<<
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 335,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/innovations.jpg",
                                height: 168,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Innovations',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: WebColors.bgcolor1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: const Text(
                                  'We are comfortable Innovative with risk and are willing to take the chances necessary to grow. If the client is not satisfy with our innovative design and does give the employees to development chances again, we will create according to him.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //  >>> CARD THREE Innovation  {..END..} <<<
              ],
            ),
            const SizedBox(height: 50),
          ],
        )),
      ]),
    );
  }
}
