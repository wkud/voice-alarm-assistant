import 'package:porcupine_flutter/porcupine_manager.dart';
import 'package:rhino_flutter/rhino_manager.dart';

class VoiceAssistant {
  late PorcupineManager _porcupine;
  late RhinoManager _rhino;

  // Future<void> init() async {
  //   // 1. Initialize Wake Word
  //   _porcupine = await PorcupineManager.fromKeywordPaths(
  //       API_KEY, ["assets/hey_assistant.ppn"], _wakeWordDetected
  //   );
  //
  //   // 2. Initialize Speech-to-Intent
  //   _rhino = await RhinoManager.create(
  //       API_KEY, "assets/app_context.rhn", _intentDetected
  //   );
  //
  //   _porcupine.start();
  // }
  //
  // void _wakeWordDetected(int index) async {
  //   await _porcupine.stop();  // Pause listening for "Hey Assistant"
  //   playFeedbackSound();      // Audible 'ding'
  //   await _rhino.process();   // Start listening for the specific command
  // }
  //
  // void _intentDetected(RhinoInference inference) async {
  //   if (inference.isUnderstood!) {
  //     // Send structured JSON to your backend
  //     // Example: { "intent": "order_coffee", "slots": {"size": "large"} }
  //     await sendToBackend(inference.intent!, inference.slots!);
  //   } else {
  //     speak("I didn't catch that command.");
  //     _porcupine.start(); // Go back to waiting for the wake word
  //   }
  // }
}