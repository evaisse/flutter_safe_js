library flutter_safe_js_web;

import 'dart:async';
import 'dart:js' as js;

class FlutterSafeJsWeb {
  /// front implementation will do nothing
  static Future<void> callMethod(String javascriptFunctionName, List<dynamic> arguments) {
    return Future.value(js.context.callMethod(javascriptFunctionName, arguments));
  }

  static Future<bool> hasProperty(String propertyName) {
    return Future.value(js.context.hasProperty(propertyName));
  }

  static Future<void> deleteProperty(String propertyName) async {
    js.context.deleteProperty(propertyName);
  }
}
