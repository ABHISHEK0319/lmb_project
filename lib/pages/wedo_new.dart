import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/responsive.dart';
import 'package:lmb_project/CustomUi/weDobuildsingleitem.dart';

class WhatWeDoNew extends StatelessWidget {
  const WhatWeDoNew({Key? key}) : super(key: key);

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
    return Container(
      color: WebColors.ComServColor,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Expanded(
            child: Column(
          children: [
            const SizedBox(height: 30),

            const Text(
              '''What we do''',
              style: TextStyle(
                  fontSize: 30,
                  color: WebColors.bgcolor1,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  'In this organization, We will also do App Development, Mobility Services, Consulting and SEO',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child:
                    SizedBox(child: Image.asset("assets/images/teamwork.png")),
              ),
            ),
            const SizedBox(height: 40),

            // Card Start
            Wrap(alignment: WrapAlignment.spaceEvenly, children: const [
              WeDoBuildSingleItem(
                color: Colors.white,
                title: "App Development",
                subtitle:
                    "Android is largely used by more than 70% of the audience using smart phones. LMB Technology develops apps at an affordable cost for businesses, including the latest features. Get the business app for B2B, e-commerce, service apps, enterprises, etc.",
              ),
              WeDoBuildSingleItem(
                color: Colors.white,
                title: "Mobility Services",
                subtitle:
                    "Mobility as a service (MaaS) is a multimodal and demand-responsive mobility service offering personalised travel plans through a digital platform that provides real-time transport information, payment and transaction processing.",
              ),
              WeDoBuildSingleItem(
                color: Colors.white,
                title: "Consulting",
                subtitle:
                    "During the Consulting, our main focus is on the client to discover the mission and vision of the company and examine the established problems that you are going to solve. Implement the idea in reality.",
              ),
              WeDoBuildSingleItem(
                color: Colors.white,
                title: "SEO Services",
                subtitle:
                    "We research and target relevant keywords that drive potential traffic to your website. Our team of SEO experts, with our low-cost, low-risk Managed SEO solution.",
              ),
            ]),
            const SizedBox(height: 50),
          ],
        )),
      ]),
    );
  }
}
