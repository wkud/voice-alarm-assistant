import 'dart:developer';

import 'package:voice_assistant_app/enums/orchestration_state.dart';
import 'package:voice_assistant_app/logic/intent_parser.dart';
import 'package:voice_assistant_app/logic/wake_word_detector.dart';

import '../dtos/intent_dto.dart';

class LogicOrchestrator {
  late final WakeWordDetector _wakeWordDetector;
  late final IntentParser _intentParser;

  OrchestrationState _state = OrchestrationState.none;

  LogicOrchestrator() {
    _wakeWordDetector = WakeWordDetector(
      onWakeWordDetected: _onWakeWordDetected,
    );
    _intentParser = IntentParser(
      onIntentParsed: _onIntentParsed,
      onIntentNotParsed: _onIntentNotParsed,
    );
  }

  Future<void> initialize() async {
    var futures = [
      _wakeWordDetector.createManager(),
      _intentParser.createManager(),
    ];
    await Future.wait(futures);
  }

  Future<void> startWakeWordDetection() async {
    await _wakeWordDetector.start();

    _updateState(OrchestrationState.awaitingWakeWord);
  }

  void _onWakeWordDetected() {
    log("wake word detected!");

    _updateState(OrchestrationState.parsingIntent);

    _intentParser.start();
  }

  void _onIntentParsed(IntentDto intentDto) {
    log("intent parsed!");

    _updateState(OrchestrationState.callingApi);

    // final response = await Dio().post("https://your-api.com/intent", data: intentDto);
    // await _speak(response.data['reply']);
  }

  void _onIntentNotParsed() {
    log("Sorry, I didn't catch that.");
    // await _speak("I didn't catch that.");
    _updateState(OrchestrationState.awaitingWakeWord);
    _wakeWordDetector.start();
  }

  void _updateState(OrchestrationState state) {
    _state = state;
    log('State: $_state');
  }
}
