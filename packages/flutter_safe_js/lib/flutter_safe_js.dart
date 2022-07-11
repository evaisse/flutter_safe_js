import 'package:flutter_safe_js_platform_interface/flutter_safe_js_platform_interface.dart';

class FlutterSafeJs {
  Future<void> callMethod(String javascriptFunctionName, List arguments) {
    return FlutterSafeJsPlatformInterface.instance.callMethod(javascriptFunctionName, arguments);
  }

  Future<void> deleteProperty(String propertyName) {
    return FlutterSafeJsPlatformInterface.instance.deleteProperty(propertyName);
  }

  Future<bool> hasProperty(String propertyName) {
    return FlutterSafeJsPlatformInterface.instance.hasProperty(propertyName);
  }
}
