// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
// ignore: unused_import
import 'dart:ui' as ui;

import 'package:lmb_project/utils/UiFake.dart' if (dart.library.html) 'dart:ui'
    as ui;
import 'package:flutter/material.dart';

import '../CustomUi/pay_done_dialog.dart';

class PaymentGateway extends StatelessWidget {
  const PaymentGateway({super.key});

  @override
  Widget build(BuildContext context) {
    //register view factory
    ui.platformViewRegistry.registerViewFactory("rzp-html", (int viewId) {
      IFrameElement element = IFrameElement();
//Event Listener
      window.onMessage.forEach((element) {
        print('Event Received in callback: ${element.data}');
        if (element.data == 'MODAL_CLOSED') {
          Navigator.pop(context);
        } else if (element.data == 'SUCCESS') {
          showDialog(
            context: context,
            builder: ((context) => const PayDoneDialog()),
          );
        }
      });

      element.src = 'assets/payment.html';
      element.style.border = 'none';
      return element;
    });
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return Container(
        child: const HtmlElementView(viewType: 'rzp-html'),
      );
    }));
  }
}
