import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/customsolnbuildsingleitem.dart';
import 'package:lmb_project/CustomUi/responsive.dart';

class CustomSolnNew extends StatelessWidget {
  const CustomSolnNew({Key? key}) : super(key: key);

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
      color: Colors.white,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Expanded(
            child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child:
                    SizedBox(child: Image.asset("assets/images/teamwork.png")),
              ),
            ),
            const Text(
              '''Custom Software Solution''',
              style: TextStyle(
                  fontSize: 34,
                  color: WebColors.bgcolor1,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  'We will provide faclities Custom Software Solution which means provides any changement of your website, app and system software,  According to your organization, if some additional features and servicess provides, that added features and servicess by our team.',
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
              children: const [
                CustomSolnBuildSingleItem(
                  color: WebColors.bgcolor2,
                  icon: Icons.location_on,
                  title: "Our Main Office",
                  subtitle: "Sec X xyzpuram Lucknow, UP 226021",
                ),
                CustomSolnBuildSingleItem(
                  color: WebColors.bgcolor2,
                  icon: Icons.location_on,
                  title: "Phone Number",
                  subtitle: "222-364-5368",
                ),
                CustomSolnBuildSingleItem(
                  color: WebColors.bgcolor2,
                  icon: Icons.location_on,
                  title: "Email",
                  subtitle: "xyz.123@gmail.com",
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        )),
      ]),
    );
  }
}
