import 'package:flutter/services.dart';

class LauncherAssist {
  static const MethodChannel _channel = const MethodChannel('launcher_assist');

  static getAllApps() async {
    var data = await _channel.invokeMethod('getAllApps');
    return data;
  }

  static launchApp(String packageName) {
    _channel.invokeMethod("launchApp", {"packageName": packageName});
  }

  static getWallpaper() async {
    var data = await _channel.invokeMethod('getWallpaper');
    return data;
  }
}
