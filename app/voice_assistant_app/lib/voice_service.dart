import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:porcupine_flutter/porcupine_manager.dart';
import 'package:rhino_flutter/rhino.dart';
import 'package:rhino_flutter/rhino_manager.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:dio/dio.dart';

@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(VoiceAssistantHandler());
}

class VoiceAssistantHandler extends TaskHandler {
  PorcupineManager? _porcupineManager;
  RhinoManager? _rhinoManager;
  final FlutterTts _tts = FlutterTts();
  final String _accessKey = "YOUR_PICOVOICE_ACCESS_KEY";

  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    await _initPorcupine();
  }

  Future<void> _initPorcupine() async {
    try {
      _porcupineManager = await PorcupineManager.fromBuiltInKeywords(
        _accessKey,
        [BuiltInKeyword.PORCUPINE],
        _onWakeWordDetected,
      );
      await _porcupineManager!.start();
    } catch (e) {
      _handleError();
    }
  }

  void _onWakeWordDetected(int keywordIndex) async {
    // 1. Stop Porcupine
    await _porcupineManager?.stop();

    // 2. Start Rhino (Relay)
    _initRhino();
  }

  Future<void> _initRhino() async {
    _rhinoManager = await RhinoManager.create(
      _accessKey,
      "assets/context.rhn", // Ensure you add this to pubspec.yaml
      _onInferenceDetected,
    );
    await _rhinoManager!.process();
  }

  void _onInferenceDetected(RhinoInference inference) async {
    await _rhinoManager?.delete();

    if (inference.isUnderstood!) {
      // 3. Send JSON to Backend
      _sendToBackend(inference.intent!, inference.slots!);
    } else {
      await _speak("I didn't catch that.");
      _initPorcupine(); // Reset relay
    }
  }

  Future<void> _sendToBackend(String intent, Map<String, String> slots) async {
    try {
      // Use your generated Dio client here
      final response = await Dio().post("https://your-api.com/intent", data: {
        "intent": intent,
        "slots": slots,
      });
      await _speak(response.data['reply']);
    } catch (e) {
      await _speak("I'm having trouble connecting right now.");
    } finally {
      _initPorcupine(); // Reset to listening
    }
  }

  Future<void> _speak(String text) async {
    await _tts.speak(text);
    // Wait for TTS to finish before resuming mic logic
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Future<void> onDestroy(DateTime timestamp, bool isTimeout) async {
    await _porcupineManager?.delete();
    await _rhinoManager?.delete();
  }
}