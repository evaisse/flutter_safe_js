library flutter_safe_js;

class Js {
  /// front implementation will do nothing
  static Future<void> call(String javascriptFunctionName, List<dynamic> arguments) {
    return Future.value(null);
  }
}
