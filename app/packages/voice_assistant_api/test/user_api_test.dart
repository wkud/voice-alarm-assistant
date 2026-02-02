import 'package:test/test.dart';
import 'package:voice_assistant_api/voice_assistant_api.dart';

/// tests for UserApi
void main() {
  final instance = VoiceAssistantApi().getUserApi();

  group(UserApi, () {
    //Future<BuiltList<UserDto>> apiUserGet() async
    test('test apiUserGet', () async {
      // TODO
    });

    //Future apiUserIdDelete(String id) async
    test('test apiUserIdDelete', () async {
      // TODO
    });

    //Future<UserDto> apiUserIdGet(String id) async
    test('test apiUserIdGet', () async {
      // TODO
    });

    //Future<UserDto> apiUserIdPut(String id, { UpdateUserDto updateUserDto }) async
    test('test apiUserIdPut', () async {
      // TODO
    });

    //Future<UserDto> apiUserPost({ CreateUserDto createUserDto }) async
    test('test apiUserPost', () async {
      // TODO
    });
  });
}
