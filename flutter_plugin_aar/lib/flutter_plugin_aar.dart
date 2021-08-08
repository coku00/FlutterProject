
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginAar {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_aar');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void>  aarPrint() async {
    await _channel.invokeMethod('aarPrint');
  }

}
