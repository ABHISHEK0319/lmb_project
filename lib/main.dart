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
        ),
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
    // return const Name();
  }
}

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: const Text('AH')),
                label: const Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: const Text('ML')),
                label: const Text('Lafayette'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: const Text('HM')),
                label: const Text('Mulligan'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: const Text('JL')),
                label: const Text('Laurens'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
