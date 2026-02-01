import 'package:dio/dio.dart';
import 'package:voice_assistant_api/voice_assistant_api.dart';

class ApiService {
  late VoiceAssistantApi _api;

  ApiService() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://your-backend.com',
      connectTimeout: const Duration(seconds: 5),
    ));

    // Initialize the generated client with your Dio instance
    // _api = VoiceAssistantApi(dio: dio);
    _api = VoiceAssistantApi(dio: Dio(BaseOptions(baseUrl: '...')));
  }

  // Future<void> sendIntent(String intent, Map<String, String> slots) async {
  //   try {
  //     // Example of a generated method call
  //     final response = await _api.getAssistantApi().processCommand(
  //       commandRequest: CommandRequest((b) => b
  //         ..intent = intent
  //         ..slots.addAll(slots)
  //       ),
  //     );
  //
  //     // Speak the response string returned from your backend
  //     if (response.data?.reply != null) {
  //       flutterTts.speak(response.data!.reply!);
  //     }
  //   } catch (e) {
  //     flutterTts.speak("My connection is weak. Please try again.");
  //   }
  // }
}