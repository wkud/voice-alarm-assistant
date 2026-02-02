import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {

  requestPermissions();
  FlutterForegroundTask.initCommunicationPort();

  runApp(const MainApp());
}

Future<void> requestPermissions() async {
  await Permission.microphone.request();
  await Permission.notification.request();

  // Android 12+ Optimization
  if (await Permission.ignoreBatteryOptimizations.isDenied) {
    await Permission.ignoreBatteryOptimizations.request();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

