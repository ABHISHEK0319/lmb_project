import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:lmb_project/CustomUi/responsive.dart';
import 'package:url_launcher/link.dart';
import 'custom_color.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? const DesktopFooter() : const MobileFooter();
  }
}

class DesktopFooter extends StatefulWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopFooter> createState() => _DesktopFooterState();
}

class _DesktopFooterState extends State<DesktopFooter> {
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
                      // RichText(
                      //   text: TextSpan(children: [
                      //   TextSpan(
                      //       style: TextStyle(color: Colors.greenAccent),
                      //       text: "Click here",
                      //       recognizer: TapGestureRecognizer()
                      //         ..onTap = () async {
                      //           var url =
                      //               "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
                      //           if (await canLaunch(url)) {
                      //             await launch(url);
                      //           } else {
                      //             throw 'Could not launch $url';
                      //           }
                      //         }),
                      // ])),

                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://twitter.com/'),
                          builder: (context, followLink) => TextButton(
                                onPressed: followLink,
                                child: const Text(
                                  'Twitter',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              )),
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              'https://www.facebook.com/amzonshoping.NK/'),
                          builder: (context, followLink) => TextButton(
                                onPressed: followLink,
                                child: const Text(
                                  'Facebook',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              )),
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://in.linkedin.com/'),
                          builder: (context, followLink) => TextButton(
                                onPressed: followLink,
                                child: const Text(
                                  'Linkedin',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              )),
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse('https://www.instagram.com/'),
                          builder: (context, followLink) => TextButton(
                                onPressed: followLink,
                                child: const Text(
                                  'Instagram',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              )),
                    ],
                  ),
                  const SizedBox(height: 20)
                ],
              )),
        ],
      ),
    );
  }
}

class MobileFooter extends StatefulWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileFooter> createState() => _MobileFooterState();
}

class _MobileFooterState extends State<MobileFooter> {
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
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://twitter.com/'),
                  builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: const Text(
                          'Twitter',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )),
              const SizedBox(height: 10),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://www.facebook.com/'),
                  builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: const Text(
                          'Facebook',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )),
              const SizedBox(height: 10),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://in.linkedin.com/'),
                  builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: const Text(
                          'Linkdin',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )),
              const SizedBox(height: 10),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://www.instagram.com/'),
                  builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: const Text(
                          'Instagram',
                          style: TextStyle(color: Colors.amber),
                        ),
                      )),
              const SizedBox(height: 10),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
