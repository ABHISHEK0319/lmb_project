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
      body: CustomScrollView(
        slivers: <Widget>[
          //sliver app bar
          const SliverAppBar(
            backgroundColor: WebColors.bgcolor1,
            expandedHeight: 120,
            //elevation: 20,
            //collapsedHeight: 100,
            flexibleSpace: Header(),
            pinned: true,
            snap: true,
            floating: true,
          ),

          // sliver items
          SliverToBoxAdapter(
            child: ClipRRect(
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
