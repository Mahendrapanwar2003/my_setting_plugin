/*
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_setting_plugin_method_channel.dart';

abstract class MySettingPluginPlatform extends PlatformInterface {
  /// Constructs a MySettingPluginPlatform.
  MySettingPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MySettingPluginPlatform _instance = MethodChannelMySettingPlugin();

  /// The default instance of [MySettingPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelMySettingPlugin].
  static MySettingPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MySettingPluginPlatform] when
  /// they register themselves.
  static set instance(MySettingPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
*/
