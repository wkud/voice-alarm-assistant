// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserAccountStatus _$none = const UserAccountStatus._('none');
const UserAccountStatus _$created = const UserAccountStatus._('created');
const UserAccountStatus _$emailConfirmed =
    const UserAccountStatus._('emailConfirmed');
const UserAccountStatus _$approvedForCredit =
    const UserAccountStatus._('approvedForCredit');
const UserAccountStatus _$removedAndAnonymized =
    const UserAccountStatus._('removedAndAnonymized');

UserAccountStatus _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'created':
      return _$created;
    case 'emailConfirmed':
      return _$emailConfirmed;
    case 'approvedForCredit':
      return _$approvedForCredit;
    case 'removedAndAnonymized':
      return _$removedAndAnonymized;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserAccountStatus> _$values =
    BuiltSet<UserAccountStatus>(const <UserAccountStatus>[
  _$none,
  _$created,
  _$emailConfirmed,
  _$approvedForCredit,
  _$removedAndAnonymized,
]);

class _$UserAccountStatusMeta {
  const _$UserAccountStatusMeta();
  UserAccountStatus get none => _$none;
  UserAccountStatus get created => _$created;
  UserAccountStatus get emailConfirmed => _$emailConfirmed;
  UserAccountStatus get approvedForCredit => _$approvedForCredit;
  UserAccountStatus get removedAndAnonymized => _$removedAndAnonymized;
  UserAccountStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<UserAccountStatus> get values => _$values;
}

abstract class _$UserAccountStatusMixin {
  // ignore: non_constant_identifier_names
  _$UserAccountStatusMeta get UserAccountStatus =>
      const _$UserAccountStatusMeta();
}

Serializer<UserAccountStatus> _$userAccountStatusSerializer =
    _$UserAccountStatusSerializer();

class _$UserAccountStatusSerializer
    implements PrimitiveSerializer<UserAccountStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'None',
    'created': 'Created',
    'emailConfirmed': 'EmailConfirmed',
    'approvedForCredit': 'ApprovedForCredit',
    'removedAndAnonymized': 'RemovedAndAnonymized',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'None': 'none',
    'Created': 'created',
    'EmailConfirmed': 'emailConfirmed',
    'ApprovedForCredit': 'approvedForCredit',
    'RemovedAndAnonymized': 'removedAndAnonymized',
  };

  @override
  final Iterable<Type> types = const <Type>[UserAccountStatus];
  @override
  final String wireName = 'UserAccountStatus';

  @override
  Object serialize(Serializers serializers, UserAccountStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserAccountStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserAccountStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
