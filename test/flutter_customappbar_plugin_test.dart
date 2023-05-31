import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_customappbar_plugin/flutter_customappbar_plugin.dart';
import 'package:flutter_customappbar_plugin/flutter_customappbar_plugin_platform_interface.dart';
import 'package:flutter_customappbar_plugin/flutter_customappbar_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCustomappbarPluginPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterCustomappbarPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCustomappbarPluginPlatform initialPlatform = FlutterCustomappbarPluginPlatform.instance;

  test('$MethodChannelFlutterCustomappbarPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCustomappbarPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterCustomappbarPlugin flutterCustomappbarPlugin = FlutterCustomappbarPlugin();
    MockFlutterCustomappbarPluginPlatform fakePlatform = MockFlutterCustomappbarPluginPlatform();
    FlutterCustomappbarPluginPlatform.instance = fakePlatform;
  
    expect(await flutterCustomappbarPlugin.getPlatformVersion(), '42');
  });
}
