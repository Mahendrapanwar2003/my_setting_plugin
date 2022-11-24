import 'package:flutter_test/flutter_test.dart';
import 'package:my_setting_plugin/my_setting_plugin.dart';
import 'package:my_setting_plugin/my_setting_plugin_platform_interface.dart';
import 'package:my_setting_plugin/my_setting_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMySettingPluginPlatform
    with MockPlatformInterfaceMixin
    implements MySettingPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MySettingPluginPlatform initialPlatform = MySettingPluginPlatform.instance;

  test('$MethodChannelMySettingPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMySettingPlugin>());
  });

  test('getPlatformVersion', () async {
    MySettingPlugin mySettingPlugin = MySettingPlugin();
    MockMySettingPluginPlatform fakePlatform = MockMySettingPluginPlatform();
    MySettingPluginPlatform.instance = fakePlatform;

    expect(await mySettingPlugin.getPlatformVersion(), '42');
  });
}
