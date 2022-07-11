import 'dart:async';
import 'dart:js' as js;

import 'package:flutter_safe_js_platform_interface/flutter_safe_js_platform_interface.dart';

class FlutterSafeJsWeb extends FlutterSafeJsPlatformInterface {
  @override
  Future<void> callMethod(String javascriptFunctionName, List<dynamic> arguments) {
    return Future.value(js.context.callMethod(javascriptFunctionName, arguments));
  }

  @override
  Future<bool> hasProperty(String propertyName) {
    return Future.value(js.context.hasProperty(propertyName));
  }

  @override
  Future<void> deleteProperty(String propertyName) async {
    js.context.deleteProperty(propertyName);
  }
}
