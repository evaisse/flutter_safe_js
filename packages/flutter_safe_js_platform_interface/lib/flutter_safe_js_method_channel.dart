import 'package:flutter/services.dart';
import 'package:flutter_safe_js_platform_interface/flutter_safe_js_platform_interface.dart';

const MethodChannel _channel = MethodChannel('plugins.flutter.io/url_launcher');

class FlutterSafeJsMethodChannel extends FlutterSafeJsPlatformInterface {
  @override
  Future<void> callMethod(String javascriptFunctionName, List<dynamic> arguments) async {
    await _channel.invokeMethod<dynamic>('callMethod', {
      "method": javascriptFunctionName,
      "arguments": arguments,
    });
  }

  @override
  Future<bool> hasProperty(String propertyName) async {
    var res = await _channel.invokeMethod<bool>('hasProperty', {
      "propertyName": propertyName,
    });
    return res!;
  }

  @override
  Future<void> deleteProperty(String propertyName) async {
    return await _channel.invokeMethod<void>('deleteProperty', {
      "propertyName": propertyName,
    });
  }
}
