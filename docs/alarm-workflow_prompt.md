# Voice Assistant App
Main functionality: **Setting an alarm**.

## Flow
1. App's foreground service is in Wake Word Detection mode using Picovoice.
2. User says the wake word (e.g. "Hey Henry").
    - Wake word detection is handled by `open_wake_word` flutter package.
    - Write a guide in `docs/wake-word-integration-guide.md` of what needs to be done outside of codebase to integrate with the package.
    - Use the code below to integrate the package into the codebase.
```dart
import 'package:open_wake_word/open_wake_word.dart';

// Initialization of ONNX models in Flutter
bool success = await OpenWakeWord.init(
  melModelAssetPath: 'assets/models/melspectrogram.onnx',
  embModelAssetPath: 'assets/models/embedding_model.onnx',
  wwModelAssetPaths: ['assets/models/twoje_slowo.onnx'],
);

// Passing a audio PCM 16kHz stream
OpenWakeWord.processAudio(audioData);
if (OpenWakeWord.isActivated()) {
  print("Wykryto wake word!");
}
```
3. When foreground service detects wake word, then it starts a microphone recording for 6 seconds (configurable number of seconds as `INTENT_RECORDING_IN_SECONDS` in `app_config.dart`).
    - The foreground service can be paused in daze mode and it's not a problem (no need for partial_wake_lock).
    - On both the locked and unlocked screen, the foreground service should work as normal.
    - Make sure app has `RECORD_AUDIO` and `FOREGROUND_SERVICE` permissions.
4. Next, the recording is transcribed by `whisper_kit`.
    - The `base` whisper multilingual model is located in assets as `ggml-base.bin`. 
    - Whisper uses `Polish` language.
5. Regex is used to verify if translation text returned by `whisper` is matching to the command and extract the `alarmTime` variable.
    - The regex is `Ustaw alarm na\s+([0-2]?\d[:.][0-5]\d|[0-2]?\d)`.
    - If there is no match, log an error.
    - `Group 1` of the match is the `alarmTime` variable.
    - Extract `hours` and `minutes` int values from the `{hours}:{minutes}` format of the time.
    - Examples of `alarmTime` values: `9:30`, `16:00`, `00:15`.
    - Make the code scalable for more commands (one regex each) in the future.
6. The native android alarm app is used to set the alarm runs `AlarmClock.ACTION_SET_ALARM` with arguments matching the native app's format.
    - Use `hours` and `minutes` to set the alarm.
    - Leave `label` empty.
    - Use default values for other properties.
7. Text-to-speech audio is played to give user feedback, that the action is complete.
    - Use `flutter_tts` package in following way:
```dart
import 'package:flutter_tts/flutter_tts.dart';

final flutterTts = FlutterTts();
await flutterTts.setLanguage("pl-PL");
await flutterTts.speak("Ustawiono alarm na godzinę 16:00");
```
    - Text to be used in text-to-speech is `Ustawiono alarm na {hours}:{minites}.` -  e.g. `Ustawiono alarm na 9:30`

## Tech and Package Stack
- Framework: Flutter (Dart).
- Wake Word Detection: open_wake_word.
- Intent analysis: whisper_kit.
- Foreground service: flutter_foreground_task.
- Audio Output: flutter_tts.
- Permissions: permission_handler.
Integrate every package to make sure the intended use of the package can run without any errors nor user requirements issues.

## Assumption
- The solution is fully offline.
- Android platform only (no iOS).
- Target platform is Android 10, API Level 29+.
- If there are any model files needed, stop and ask user to provide them.
- Whisper model file is already provided.

Before you do anything, generate a plan.
