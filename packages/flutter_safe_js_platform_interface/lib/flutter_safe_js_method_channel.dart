import 'package:flutter/services.dart';
import 'package:flutter_safe_js_platform_interface/flutter_safe_js_platform_interface.dart';

const MethodChannel _channel = MethodChannel('plugins.flutter.io/url_launcher');

class FlutterSafeJsMethodChannel extends FlutterSafeJsPlatformInterface {
  /// @see https://stackoverflow.com/questions/50187680/how-to-call-methods-in-dart-portion-of-the-app-from-the-native-platform-using-m
  @override
  Future<void> expose(String javascriptFunctionName, FlutterSafeJsMethodHandler fn) async {
    _channel.setMethodCallHandler((call) => Future.value(null));
  }

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
