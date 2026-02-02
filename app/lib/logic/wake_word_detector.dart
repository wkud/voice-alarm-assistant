import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:porcupine_flutter/porcupine.dart';
import 'package:porcupine_flutter/porcupine_manager.dart';
import 'package:porcupine_flutter/porcupine_error.dart';
import 'package:voice_assistant_app/config/app_config.dart';

class WakeWordDetector {
  final _accessKey = AppConfig.picovoiceAccessKey;
  final Function onWakeWordDetected;

  PorcupineManager? _porcupineManager;

  WakeWordDetector({
    required this.onWakeWordDetected,
  });

  Future<void> createManager() async {
    try {
      _porcupineManager = await PorcupineManager.fromBuiltInKeywords(
        _accessKey,
        [BuiltInKeyword.PORCUPINE, BuiltInKeyword.BUMBLEBEE],
        _localWakeWordCallback,
      );
    } on PorcupineException catch (err) {
      if (kDebugMode) {
        log('Creating porcupine manager failed. Reason: ${err.message}');
      }
    }
  }

  Future<void> start() async {
    if (_porcupineManager == null) {
      if (kDebugMode) {
        log('PorcupineManager must not be null.');
      }
      return;
    }

    try {
      await _porcupineManager!.start();
    } on PorcupineException catch (err) {
      if (kDebugMode) {
        log('Starting porcupine manager failed. Reason: ${err.message}');
      }
    }
  }

  void _localWakeWordCallback(int keywordIndex) async {
    await _porcupineManager?.stop();
    onWakeWordDetected.call();
  }

  Future<void> delete() async {
    await _porcupineManager!.delete();
  }
}
