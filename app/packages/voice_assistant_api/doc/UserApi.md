# voice_assistant_api.api.UserApi

## Load the API package
```dart
import 'package:voice_assistant_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUserGet**](UserApi.md#apiuserget) | **GET** /api/User | 
[**apiUserIdDelete**](UserApi.md#apiuseriddelete) | **DELETE** /api/User/{id} | 
[**apiUserIdGet**](UserApi.md#apiuseridget) | **GET** /api/User/{id} | 
[**apiUserIdPut**](UserApi.md#apiuseridput) | **PUT** /api/User/{id} | 
[**apiUserPost**](UserApi.md#apiuserpost) | **POST** /api/User | 


# **apiUserGet**
> BuiltList<UserDto> apiUserGet()



### Example
```dart
import 'package:voice_assistant_api/api.dart';

final api = VoiceAssistantApi().getUserApi();

try {
    final response = api.apiUserGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiUserGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UserDto&gt;**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserIdDelete**
> apiUserIdDelete(id)



### Example
```dart
import 'package:voice_assistant_api/api.dart';

final api = VoiceAssistantApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiUserIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiUserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserIdGet**
> UserDto apiUserIdGet(id)



### Example
```dart
import 'package:voice_assistant_api/api.dart';

final api = VoiceAssistantApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiUserIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserIdPut**
> UserDto apiUserIdPut(id, updateUserDto)



### Example
```dart
import 'package:voice_assistant_api/api.dart';

final api = VoiceAssistantApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateUserDto updateUserDto = ; // UpdateUserDto | 

try {
    final response = api.apiUserIdPut(id, updateUserDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiUserIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateUserDto** | [**UpdateUserDto**](UpdateUserDto.md)|  | [optional] 

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserPost**
> UserDto apiUserPost(createUserDto)



### Example
```dart
import 'package:voice_assistant_api/api.dart';

final api = VoiceAssistantApi().getUserApi();
final CreateUserDto createUserDto = ; // CreateUserDto | 

try {
    final response = api.apiUserPost(createUserDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserDto** | [**CreateUserDto**](CreateUserDto.md)|  | [optional] 

### Return type

[**UserDto**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

