// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUserDto extends CreateUserDto {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? emailAddress;

  factory _$CreateUserDto([void Function(CreateUserDtoBuilder)? updates]) =>
      (CreateUserDtoBuilder()..update(updates))._build();

  _$CreateUserDto._({this.firstName, this.lastName, this.emailAddress})
      : super._();
  @override
  CreateUserDto rebuild(void Function(CreateUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserDtoBuilder toBuilder() => CreateUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserDto &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        emailAddress == other.emailAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateUserDto')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('emailAddress', emailAddress))
        .toString();
  }
}

class CreateUserDtoBuilder
    implements Builder<CreateUserDto, CreateUserDtoBuilder> {
  _$CreateUserDto? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  CreateUserDtoBuilder() {
    CreateUserDto._defaults(this);
  }

  CreateUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _emailAddress = $v.emailAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserDto other) {
    _$v = other as _$CreateUserDto;
  }

  @override
  void update(void Function(CreateUserDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserDto build() => _build();

  _$CreateUserDto _build() {
    final _$result = _$v ??
        _$CreateUserDto._(
          firstName: firstName,
          lastName: lastName,
          emailAddress: emailAddress,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
