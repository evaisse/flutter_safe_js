import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_safe_js_method_channel.dart';

typedef FlutterSafeJsMethodHandler = dynamic Function(dynamic argument);

abstract class FlutterSafeJsPlatformInterface extends PlatformInterface {
  static FlutterSafeJsPlatformInterface _instance = FlutterSafeJsMethodChannel();
  static final Object _token = Object();

  /// Constructs a [FlutterSafeJsPlatformInterface].
  FlutterSafeJsPlatformInterface() : super(token: _token);

  /// The default instance of [FlutterSafeJsPlatformInterface] to use.
  ///
  /// Defaults to [MethodChannelUrlLauncher].
  static FlutterSafeJsPlatformInterface get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [FlutterSafeJsPlatformInterface] when they register themselves.
  static set instance(FlutterSafeJsPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> expose(String javascriptFunctionName, FlutterSafeJsMethodHandler fn) {
    throw UnimplementedError('expose() has not been implemented.');
  }

  Future<void> callMethod(String javascriptFunctionName, List<dynamic> arguments) {
    throw UnimplementedError('callMethod() has not been implemented.');
  }

  Future<bool> hasProperty(String propertyName) {
    throw UnimplementedError('hasProperty() has not been implemented.');
  }

  Future<void> deleteProperty(String propertyName) async {
    throw UnimplementedError('deleteProperty() has not been implemented.');
  }
}
