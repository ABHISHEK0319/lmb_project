import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:velocity_x/velocity_x.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 250),
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
    return DataTable(columns: const [
      DataColumn(label: Text("Date")),
      DataColumn(label: Text("21-Nov-2022"))
    ], rows: const [
      DataRow(cells: [DataCell(Text("Reference No")), DataCell(Text("123"))]),
      DataRow(
          cells: [DataCell(Text("Product Name")), DataCell(Text("concrete"))]),
      DataRow(cells: [
        DataCell(Text("Site/Shop Name")),
        DataCell(Text("Indra Nagar"))
      ]),
      DataRow(cells: [
        DataCell(Text("Bill Cycle")),
        DataCell(Text("22-Nov-2022 to 21-dec-2022"))
      ]),
      DataRow(cells: [DataCell(Text("Amount")), DataCell(Text("5000.00"))]),
      DataRow(cells: [DataCell(Text("Status")), DataCell(Text("Active"))]),
    ]);
    //  AlertDialog(
    //     title: const Text("asdfjasdkf"),
    //     content: InkWell(
    //       onTap: null,
    //       child: Container(
    //         color: Colors.red,
    //       ),
    //     ),
    //     actions: const [ElevatedButton(onPressed: null, child: Text("Ok"))]);
  }
}

class MyVxDashboard extends StatefulWidget {
  const MyVxDashboard({super.key});

  @override
  State<MyVxDashboard> createState() => _MyVxDashboardState();
}

class _MyVxDashboardState extends State<MyVxDashboard> {
  bool _isVisible = true;
  @override
  void initState() {
    super.initState();
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  showTable() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.48,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 200,
              child: InkWell(
                onTap: showTable,
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
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Visibility(
              visible: _isVisible,
              child: const MyTabledataContainer(),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
