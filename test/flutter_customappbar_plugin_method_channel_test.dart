import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_customappbar_plugin/flutter_customappbar_plugin_method_channel.dart';

void main() {
  MethodChannelFlutterCustomappbarPlugin platform = MethodChannelFlutterCustomappbarPlugin();
  const MethodChannel channel = MethodChannel('flutter_customappbar_plugin');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
