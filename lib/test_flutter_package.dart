
import 'dart:async';

import 'package:flutter/services.dart';

class TestFlutterPackage {
  static const MethodChannel _channel = MethodChannel('test_flutter_package');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
