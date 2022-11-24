import 'package:flutter/services.dart';
class MySettingPlugin {
/*  Future<String?> getPlatformVersion() {
    return MySettingPluginPlatform.instance.getPlatformVersion();
  }*/
  static Future<String?> openPage({String? pageName}) async {
    final String n = await const MethodChannel('my_setting_plugin').invokeMethod('openPage',pageName);
    return n;
  }
}
