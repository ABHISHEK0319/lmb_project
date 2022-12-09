import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/custom_color.dart';
import 'package:lmb_project/CustomUi/onHoverEffect.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cartModel.dart';

class ResponsiveCartView extends StatefulWidget {
  const ResponsiveCartView({super.key});

  @override
  State<ResponsiveCartView> createState() => _ResponsiveCartViewState();
}

class _ResponsiveCartViewState extends State<ResponsiveCartView> {
  @override
  Widget build(BuildContext context) {
    return const VxDevice(
      mobile: MyCartMobile(),
      web: MyCartWebsite(),
    );
  }
}

List<CartModel> cartModel = [];

class MyCartMobile extends StatelessWidget {
  const MyCartMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 15,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 430.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 25.0,
          childAspectRatio: 1,
          mainAxisExtent: 300,
        ),
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Card(
            color: WebColors.bgcolor2,
            //color: Colors.white70,
            shadowColor: WebColors.bgcolor2,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        //cartModel[i].shopName,
                        "Shop Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 20, bottom: 30),
                        child: Text(
                          // cartModel[i].productName,
                          "Product Name",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 45,
                        child: Card(
                          child: DropdownButtonMonths(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MaterialButton(
                          minWidth: 120,
                          height: 35,
                          textColor: Colors.white,
                          color: WebColors.bgcolor1,
                          splashColor: Colors.amberAccent,
                          hoverColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Amount",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const List<String> list = <String>[
  'Select Months',
  '1 Month',
  '3 Months',
  '6 Months',
  '12 Months',
];

class DropdownButtonMonths extends StatefulWidget {
  const DropdownButtonMonths({super.key});

  @override
  State<DropdownButtonMonths> createState() => _DropdownButtonMonthsState();
}

class _DropdownButtonMonthsState extends State<DropdownButtonMonths> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.white,
      value: dropdownValue,
      icon: const Padding(
        padding: EdgeInsets.only(left: 5),
        child: Icon(
          Icons.arrow_downward,
          color: Colors.black,
        ),
      ),

      //elevation: 16,
      style: const TextStyle(color: WebColors.bgcolor1, fontSize: 15),
      underline: Container(
        height: null,
        //color: WebColors.bgcolor1,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

const List<String> items = <String>[
  'Select Months',
  '1 Month',
  '3 Months',
  '6 Months',
  '12 Months',
];

//sample of web site
class MyCartWebsite extends StatelessWidget {
  const MyCartWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _title_subtitle = Column(
      children: const [
        Text(
          "Shop Name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Product Name",
          style: TextStyle(
            fontSize: 15,
            //fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );

    //Next....
    // Widget _subTitle = const Center(
    //   child: Text(
    //     "Product Name",
    //     style: TextStyle(
    //       fontSize: 15,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // );

    //Next btn..
    Widget _payBtn = Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: OnHoverButton(
        child: MaterialButton(
          minWidth: 120,
          height: 35,
          textColor: Colors.white,
          color: WebColors.bgcolor1,
          splashColor: Colors.amberAccent,
          hoverColor: Colors.green,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Webpayment(),
            //   ),
            // );
          },
          child: const Text(
            "Amount",
          ),
        ),
      ),
    );

    return Material(
      //color: Colors.amber.shade100,
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(left: 150, right: 150, top: 15),
            child: ListTile(
              //title: _subTitle,
              contentPadding:
                  const EdgeInsets.only(top: 5, left: 25, bottom: 0),
              subtitle: const Center(child: DropdownButtonMonths()),
              trailing: _payBtn,
              leading: _title_subtitle,
            ),
          );
        },
      ),
    );
  }
}
