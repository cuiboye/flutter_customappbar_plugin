import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_customappbar_plugin_platform_interface.dart';

/// An implementation of [FlutterCustomappbarPluginPlatform] that uses method channels.
class MethodChannelFlutterCustomappbarPlugin extends FlutterCustomappbarPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_customappbar_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
