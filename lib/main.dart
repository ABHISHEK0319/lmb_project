import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LMB Technology',
        theme: ThemeData(
            primaryColor: WebColors.bgcolor1,
            backgroundColor: WebColors.bgcolor2),
        home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
