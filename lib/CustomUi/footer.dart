import 'package:flutter/material.dart';

import 'package:lmb_project/CustomUi/responsive.dart';
import 'custom_color.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? const DesktopFooter() : const MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WebColors.footercolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    '@ All Rights Reserved',
                    style: TextStyle(color: Colors.amber, fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
                      style: TextStyle(color: WebColors.txtcolor, fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NavItem(
                        title: 'Twitter',
                        tapEvent: () {},
                      ),
                      NavItem(
                        title: 'Facebook',
                        tapEvent: () {},
                      ),
                      NavItem(
                        title: 'Linkedin',
                        tapEvent: () {},
                      ),
                      NavItem(
                        title: 'Instagram',
                        tapEvent: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20)
                ],
              )),

          // Expanded(
          //   child: Container(
          //     child: Padding(
          //       padding: const EdgeInsets.only(right: 10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           const SizedBox(height: 10),
          //           const TextField(
          //               maxLines: 1,
          //               decoration: InputDecoration(
          //                   icon: Icon(Icons.email, color: WebColors.txtcolor),
          //                   // border: OutlineInputBorder(),
          //                   hintText: 'you@example.com',
          //                   hintStyle: TextStyle(
          //                       color: Color.fromARGB(44, 255, 255, 255),
          //                       fontSize: 15),
          //                   labelText: 'E-mail Address',
          //                   labelStyle: TextStyle(
          //                       color: WebColors.txtcolor, fontSize: 15))),
          //           const SizedBox(height: 10),
          //           const TextField(
          //               maxLines: 1,
          //               decoration: InputDecoration(
          //                   icon: Icon(Icons.person, color: WebColors.txtcolor),
          //                   // border: OutlineInputBorder(),
          //                   hintText: 'Name',
          //                   hintStyle: TextStyle(
          //                       color: Color.fromARGB(44, 255, 255, 255),
          //                       fontSize: 15),
          //                   labelText: 'Name',
          //                   labelStyle: TextStyle(
          //                       color: WebColors.txtcolor, fontSize: 15))),
          //           const SizedBox(height: 10),
          //           const TextField(
          //               maxLines: 1,
          //               decoration: InputDecoration(
          //                   icon:
          //                       Icon(Icons.message, color: WebColors.txtcolor),
          //                   // border: OutlineInputBorder(),
          //                   hintText: 'Message',
          //                   hintStyle: TextStyle(
          //                       color: Color.fromARGB(44, 255, 255, 255),
          //                       fontSize: 15),
          //                   labelText: 'Message',
          //                   labelStyle: TextStyle(
          //                       color: WebColors.txtcolor, fontSize: 15))),
          //           const SizedBox(height: 10),
          //           MainButton(
          //             title: 'Submit',
          //             color: WebColors.bgcolor1,
          //             tapEvent: () {},
          //           ),
          //           const SizedBox(
          //             height: 10,
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: WebColors.footercolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 10),
          const Text(
            '@ All Rights Reserved',
            style: TextStyle(color: Colors.amber, fontSize: 15),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'When it comes to creating a professional looking website, it’s important to not only consider the colors and images you use, but also the fonts.',
              style: TextStyle(color: WebColors.txtcolor, fontSize: 12),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Twitter',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Facebook',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Linkedin',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Instagram',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Wrap(
          //     alignment: WrapAlignment.center,
          //     children: [
          //       const Padding(
          //         padding: EdgeInsets.only(bottom: 10),
          //         child: TextField(
          //             maxLines: 1,
          //             decoration: InputDecoration(
          //                 icon: Icon(Icons.email, color: WebColors.txtcolor),
          //                 // border: OutlineInputBorder(),
          //                 hintText: 'you@example.com',
          //                 hintStyle: TextStyle(
          //                     color: Color.fromARGB(44, 255, 255, 255),
          //                     fontSize: 15),
          //                 labelText: 'E-mail Address',
          //                 labelStyle: TextStyle(
          //                     color: WebColors.txtcolor, fontSize: 12))),
          //       ),
          //       const Padding(
          //         padding: EdgeInsets.only(bottom: 10),
          //         child: TextField(
          //             maxLines: 1,
          //             decoration: InputDecoration(
          //                 icon: Icon(Icons.person, color: WebColors.txtcolor),
          //                 // border: OutlineInputBorder(),
          //                 hintText: 'Name',
          //                 hintStyle: TextStyle(
          //                     color: Color.fromARGB(44, 255, 255, 255),
          //                     fontSize: 15),
          //                 labelText: 'Name',
          //                 labelStyle: TextStyle(
          //                     color: WebColors.txtcolor, fontSize: 12))),
          //       ),
          //       const Padding(
          //         padding: EdgeInsets.only(bottom: 10),
          //         child: TextField(
          //             maxLines: 1,
          //             decoration: InputDecoration(
          //                 icon: Icon(Icons.message, color: WebColors.txtcolor),
          //                 // border: OutlineInputBorder(),
          //                 hintText: 'Message',
          //                 hintStyle: TextStyle(
          //                     color: Color.fromARGB(44, 255, 255, 255),
          //                     fontSize: 15),
          //                 labelText: 'Message',
          //                 labelStyle: TextStyle(
          //                     color: WebColors.txtcolor, fontSize: 12))),
          //       ),
          //       const SizedBox(height: 10),
          //       MainButton(
          //         title: 'Submit',
          //         color: WebColors.bgcolor1,
          //         tapEvent: () {},
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
