//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:voice_assistant_api/src/model/user_account_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_dto.g.dart';

/// UserDto
///
/// Properties:
/// * [id]
/// * [firstName]
/// * [lastName]
/// * [emailAddress]
/// * [status]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class UserDto implements Built<UserDto, UserDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'emailAddress')
  String? get emailAddress;

  @BuiltValueField(wireName: r'status')
  UserAccountStatus get status;
  // enum statusEnum {  None,  Created,  EmailConfirmed,  ApprovedForCredit,  RemovedAndAnonymized,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  UserDto._();

  factory UserDto([void updates(UserDtoBuilder b)]) = _$UserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDto> get serializer => _$UserDtoSerializer();
}

class _$UserDtoSerializer implements PrimitiveSerializer<UserDto> {
  @override
  final Iterable<Type> types = const [UserDto, _$UserDto];

  @override
  final String wireName = r'UserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'firstName';
    yield object.firstName == null
        ? null
        : serializers.serialize(
            object.firstName,
            specifiedType: const FullType.nullable(String),
          );
    yield r'lastName';
    yield object.lastName == null
        ? null
        : serializers.serialize(
            object.lastName,
            specifiedType: const FullType.nullable(String),
          );
    yield r'emailAddress';
    yield object.emailAddress == null
        ? null
        : serializers.serialize(
            object.emailAddress,
            specifiedType: const FullType.nullable(String),
          );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(UserAccountStatus),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'emailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emailAddress = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserAccountStatus),
          ) as UserAccountStatus;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
