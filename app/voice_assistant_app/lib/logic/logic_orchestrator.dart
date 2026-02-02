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
    _intentParser = IntentParser(onIntentParsed: _onIntentParsed);
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

    _state = OrchestrationState.awaitingWakeWord;
  }

  void _onWakeWordDetected() {
    log("wake word detected!");

    _state = OrchestrationState.parsingIntent;
    _intentParser.start();

    log('State: $_state');
  }

  void _onIntentParsed(IntentDto intentDto) {}
}
