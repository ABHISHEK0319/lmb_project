import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/pages/home.dart';
import 'package:velocity_x/velocity_x.dart';

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
  }
}

class MyInteractiveViewerSample extends StatefulWidget {
  const MyInteractiveViewerSample({super.key});
  @override
  State<MyInteractiveViewerSample> createState() =>
      _MyInteractiveViewerSampleState();
}

class _MyInteractiveViewerSampleState extends State<MyInteractiveViewerSample>
    with TickerProviderStateMixin {
  final controller = TransformationController();
  late AnimationController controllerReset;

  @override
  void initState() {
    super.initState();
    controllerReset = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));

    controller.addListener(() {
      if (controller.value.getMaxScaleOnAxis() >= 1.3) {
        print('Scale >=1.3');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          title: 'Interactive Viewer'.text.bold.white.center.make(),
          actions: [
            IconButton(
                onPressed: reset,
                icon: const Icon(
                  Icons.restore,
                  color: Colors.white,
                ))
          ]),
      body: Container(
        child: Center(
          child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(double.infinity),
            minScale: 0.2,
            maxScale: 4,
            // onInteractionStart: (details) => print('Start interaction'),
            // onInteractionUpdate: (details) => print('Update interaction'),
            onInteractionEnd: (details) {
              print('End interaction');
              reset();
            },
            transformationController: controller,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2018/07/14/11/33/earth-3537401_960_720.jpg',
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }

  void reset() {
    final animationReset = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(controllerReset);

    animationReset.addListener(() {
      controller.value = animationReset.value;
    });

    controllerReset.reset();
    controllerReset.forward();
    // setState(() {
    //   controller.value = Matrix4.identity();
    // });
  }
}
