import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:rhino_flutter/rhino.dart';
import 'package:rhino_flutter/rhino_error.dart';
import 'package:rhino_flutter/rhino_manager.dart';
import 'package:voice_assistant_app/config/app_config.dart';

import '../dtos/intent_dto.dart';

class IntentParser {
  final String _accessKey = AppConfig.picovoiceAccessKey;
  final String _contextPath = "assets/voice_assistant_context.rhn";
  final Function onIntentParsed;

  RhinoManager? _rhinoManager;

  IntentParser({required this.onIntentParsed});

  Future<void> createManager() async {
    try {
      _rhinoManager = await RhinoManager.create(
        _accessKey,
        _contextPath,
        _localInferenceCallback,
      );
    } on RhinoException catch (err) {
      if (kDebugMode) {
        log('Creating porcupine manager failed. Reason: ${err.message}');
      }
    }
  }

  Future<void> start() async {
    if (_rhinoManager == null) {
      if (kDebugMode) {
        log('RhinoManager must not be null.');
      }
      return;
    }

    try {
      await _rhinoManager!.process();
    } on RhinoException catch (err) {
      if (kDebugMode) {
        log(
          'Processing audio with rhino manager failed. Reason: ${err.message}',
        );
      }
    }
  }

  void _localInferenceCallback(RhinoInference inference) {
    if (inference.isUnderstood!) {
      String intent = inference.intent!;
      Map<String, String> slots = inference.slots!;

      // take action based on inferred intent and slot values
      final intentDto = IntentDto(intent: intent, slots: slots);
      onIntentParsed.call(intentDto);

      if (kDebugMode) {
        log('Interference not understood.');
      }
    } else {
      // handle unsupported commands
      if (kDebugMode) {
        log('Interference not understood.');
      }
    }
  }

  Future<void> delete() async {
    await _rhinoManager!.delete();
  }
}
