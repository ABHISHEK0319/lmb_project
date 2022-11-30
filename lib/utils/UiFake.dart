import 'dart:ui' as ui;
import 'package:lmb_project/utils/UiFake.dart' if (dart.library.html) 'dart:ui'
    as ui;

// ignore: camel_case_types
class platformViewRegistry {
  static registerViewFactory(String viewId, dynamic cb) {
    ui.platformViewRegistry.registerViewFactory(viewId, cb);
  }
}
