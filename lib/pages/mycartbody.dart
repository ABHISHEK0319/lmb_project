import 'package:flutter/material.dart';
import 'package:lmb_project/CustomUi/mycart.dart';
import 'package:lmb_project/CustomUi/fancyButton.dart';
import 'package:lmb_project/utils/payment_gateway.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    var value = 200;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Column(
        children: [
          const Expanded(child: ResponsiveCartView()),
          Container(
            height: 40,
            //margin: const EdgeInsets.only(left: 25, right: 25),
            color: Colors.blueGrey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: RichText(
                    text: TextSpan(
                      text: 'Grand Total:',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: " $value Rs.",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            )),
                        // TextSpan(text: ' world!'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: FancyButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentGateway(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
