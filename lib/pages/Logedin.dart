import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/pages/tab_logedin_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../CustomUi/drawer.dart';

class LogedinPage extends StatefulWidget {
  const LogedinPage({super.key});

  @override
  State<LogedinPage> createState() => _LogedinPageState();
}

class _LogedinPageState extends State<LogedinPage> {
  @override
  Widget build(BuildContext context) {
    return const VxDevice(
      mobile: MobileLogedinPage(),
      web: WebLogedinPage(),
    );
  }
}

class WebLogedinPage extends StatefulWidget {
  const WebLogedinPage({Key? key}) : super(key: key);

  @override
  State<WebLogedinPage> createState() => _WebLogedinPageState();
}

class _WebLogedinPageState extends State<WebLogedinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.bgcolor1,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: WebColors.bgcolor1,
            expandedHeight: 120,
            flexibleSpace:
                //Header(),
                ResponsiveHeaderView(),
            pinned: true,
          ),

          // sliver items
          SliverToBoxAdapter(
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.zero,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: const TabsLogedinPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileLogedinPage extends StatefulWidget {
  const MobileLogedinPage({Key? key}) : super(key: key);

  @override
  State<MobileLogedinPage> createState() => _MobileLogedinPageState();
}

class _MobileLogedinPageState extends State<MobileLogedinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.bgcolor1,
      body: Column(
        children: const [DrawerPage(), Expanded(child: TabsLogedinPage())],
      ),
    );
  }
}
