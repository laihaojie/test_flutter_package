import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter_package/test_flutter_package.dart';

void main() {
  const MethodChannel channel = MethodChannel('test_flutter_package');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await TestFlutterPackage.platformVersion, '42');
  });
}
