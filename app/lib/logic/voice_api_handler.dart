import 'package:dio/dio.dart';
import 'package:voice_assistant_api/voice_assistant_api.dart';
import 'package:voice_assistant_app/config/app_config.dart';

class VoiceApiHandler {
  late VoiceAssistantApi _api;

  VoiceApiHandler() {
    final dio = Dio(BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: const Duration(seconds: 5),
    ));

    // Initialize the generated client
    _api = VoiceAssistantApi(dio: dio);
  }

  Future<void> sendIntent(String intent, Map<String, String> slots) async {
    // try {
    //   // Example of a generated method call
    //   final response = await _api.getAssistantApi().processCommand(
    //     commandRequest: CommandRequest((b) => b
    //       ..intent = intent
    //       ..slots.addAll(slots)
    //     ),
    //   );
    //
    //   // Speak the response string returned from your backend
    //   if (response.data?.reply != null) {
    //     flutterTts.speak(response.data!.reply!);
    //   }
    // } catch (e) {
    //   flutterTts.speak("My connection is weak. Please try again.");
    // }
  }
}