import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_setting_plugin/my_setting_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  Future<void> openSetting() async {
    try {
          await MySettingPlugin.openPage(pageName: 'SETTING') ?? 'Unknown platform version';
    } on PlatformException {
      'Failed to get platform version.';
    }
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                openSetting();
              }, child: const Text("Open Setting"))
            ],
          ),
        ),
      ),
    );
  }
}
