//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_account_status.g.dart';

class UserAccountStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'None')
  static const UserAccountStatus none = _$none;
  @BuiltValueEnumConst(wireName: r'Created')
  static const UserAccountStatus created = _$created;
  @BuiltValueEnumConst(wireName: r'EmailConfirmed')
  static const UserAccountStatus emailConfirmed = _$emailConfirmed;
  @BuiltValueEnumConst(wireName: r'ApprovedForCredit')
  static const UserAccountStatus approvedForCredit = _$approvedForCredit;
  @BuiltValueEnumConst(wireName: r'RemovedAndAnonymized')
  static const UserAccountStatus removedAndAnonymized = _$removedAndAnonymized;

  static Serializer<UserAccountStatus> get serializer =>
      _$userAccountStatusSerializer;

  const UserAccountStatus._(String name) : super(name);

  static BuiltSet<UserAccountStatus> get values => _$values;
  static UserAccountStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class UserAccountStatusMixin = Object with _$UserAccountStatusMixin;
