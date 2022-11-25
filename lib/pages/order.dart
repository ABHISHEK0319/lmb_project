import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/footer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyOrderResponsive extends StatefulWidget {
  const MyOrderResponsive({Key? key}) : super(key: key);

  @override
  State<MyOrderResponsive> createState() => _MyOrderResponsiveState();
}

class _MyOrderResponsiveState extends State<MyOrderResponsive> {
  @override
  Widget build(BuildContext context) {
    return const VxDevice(
      mobile: OrderMobilePage(),
      web: OrderWebPage(),
    );
  }
}

class OrderMobilePage extends StatefulWidget {
  const OrderMobilePage({Key? key}) : super(key: key);

  @override
  State<OrderMobilePage> createState() => _OrderMobilePageState();
}

class _OrderMobilePageState extends State<OrderMobilePage> {
  final List<String> entries = <String>[
    'A',
    'B',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // mainAxisExtent: 350,
                  crossAxisCount: 1,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Scaffold(
                    body: Container(
                      color: Colors.black12,
                      width: 450,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      child: DataTable(columns: const [
                        DataColumn(label: Text("Date")),
                        DataColumn(label: Text("21-Nov-2022"))
                      ], rows: const [
                        DataRow(cells: [
                          DataCell(Text("Reference No")),
                          DataCell(Text("123"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Product Name")),
                          DataCell(Text("concrete"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Site/Shop Name")),
                          DataCell(Text("Indra Nagar"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Bill Cycle")),
                          DataCell(Text("22-Nov-2022 to 21-dec-2022"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Amount")),
                          DataCell(Text("5000.00"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Status")),
                          DataCell(Text("Active"))
                        ]),
                      ]),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Footer(),
        ],
      ),
    ));
  }
}

class OrderWebPage extends StatefulWidget {
  const OrderWebPage({Key? key}) : super(key: key);

  @override
  State<OrderWebPage> createState() => _OrderWebPageState();
}

class _OrderWebPageState extends State<OrderWebPage> {
  final List<String> entries = <String>[
    'A',
    'B',
    "C",
    "D",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        heading.pOnly(top: 25),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return dynamicData;
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Footer(),
      ],
    ));
  }

// HEADING
  Widget heading = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        "Date".text.bold.black.size(15).make(),
        "Reference No.".text.bold.black.size(15).make(),
        "Porduct Name".text.bold.black.size(15).make(),
        "Site/Shop Name".text.bold.black.size(15).make(),
        "Bill Cycle".text.bold.black.size(15).make(),
        "Amount".text.bold.black.size(15).make(),
        "Status".text.bold.black.size(15).make(),
      ],
    ),
  );

// DYNAMIC FILLING DATA
  var date = "18/Nov/2022";
  Widget dynamicData = Column(
    children: [
      Container(
          height: 35,
          color: Colors.grey[400],
          // child: Center(child: Text('Entry ${entries[index]}'),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              "Date".text.black.size(15).make(),
              "Reference No.".text.black.size(15).make(),
              "Porduct Name".text.black.size(15).make(),
              "Site/Shop Name".text.black.size(15).make(),
              "Bill Cycle".text.black.size(15).make(),
              "Amount".text.black.size(15).make(),
              "Status".text.black.size(15).make(),
            ],
          )),
    ],
  );
}
