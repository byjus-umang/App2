import 'package:android_intent/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class Uninstall extends StatefulWidget {
  const Uninstall({super.key});

  @override
  State<Uninstall> createState() => _UninstallState();
}

class _UninstallState extends State<Uninstall> {
  void uninstallApp(String packageName) async {
    final AndroidIntent intent = AndroidIntent(
      action: 'android.intent.action.UNINSTALL_PACKAGE',
      data: 'package:$packageName',
    );
    await intent.launch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Uninstall App'),
          backgroundColor: const Color(0xFF6539C0),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Uninstall'),
            onPressed: () {
              uninstallApp('com.example.app1');
            },
          ),
        ));
  }
}
