import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:velocity_x/velocity_x.dart';

class SampleUserDashboard extends StatelessWidget {
  const SampleUserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget container2 =

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 40, right: 40),
                    child: MyVxDashboard(),
                    //child: GridProduct(),
                  ),
                ),
              ),
              //MyTabledataContainer(),
              SizedBox(height: 150),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTabledataContainer extends StatefulWidget {
  const MyTabledataContainer({super.key});

  @override
  State<MyTabledataContainer> createState() => _MyTabledataContainerState();
}

class _MyTabledataContainerState extends State<MyTabledataContainer> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text("asdfjasdkf"),
        content: InkWell(
          onTap: null,
          child: Container(
            color: Colors.red,
          ),
        ),
        actions: const [ElevatedButton(onPressed: null, child: Text("Ok"))]);
  }
}

class MyVxDashboard extends StatefulWidget {
  const MyVxDashboard({super.key});

  @override
  State<MyVxDashboard> createState() => _MyVxDashboardState();
}

class _MyVxDashboardState extends State<MyVxDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.48,
      decoration: const BoxDecoration(),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: ((context) => const MyTabledataContainer()));
        },
        child: List.generate(
            10,
            (index) => "Item $index"
                .text
                .size(44)
                .white
                .make()
                .box
                .rounded
                .alignCenter
                .color(Vx.randomOpaqueColor)
                //.bgImage(Ima)
                .make()
                .p32()).swiper(
            height: context.isMobile ? 300 : 600,
            enlargeCenterPage: true,
            onPageChanged: (index) {
              print(index);
            },
            isFastScrollingEnabled: true,
            scrollDirection:
                context.isMobile ? Axis.horizontal : Axis.horizontal),
      ),
    );
  }
}
