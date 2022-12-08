import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/header.dart';
import 'package:lmb_project/pages/tab_logedin_page.dart';

class LogedinPage extends StatefulWidget {
  const LogedinPage({Key? key}) : super(key: key);

  @override
  State<LogedinPage> createState() => _LogedinPageState();
}

class _LogedinPageState extends State<LogedinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.bgcolor1,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: WebColors.bgcolor1,
            expandedHeight: 120,
            flexibleSpace: Header(),
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
