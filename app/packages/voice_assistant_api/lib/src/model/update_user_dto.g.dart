// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserDto extends UpdateUserDto {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? emailAddress;
  @override
  final UserAccountStatus status;

  factory _$UpdateUserDto([void Function(UpdateUserDtoBuilder)? updates]) =>
      (UpdateUserDtoBuilder()..update(updates))._build();

  _$UpdateUserDto._(
      {this.firstName, this.lastName, this.emailAddress, required this.status})
      : super._();
  @override
  UpdateUserDto rebuild(void Function(UpdateUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserDtoBuilder toBuilder() => UpdateUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserDto &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        emailAddress == other.emailAddress &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserDto')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('emailAddress', emailAddress)
          ..add('status', status))
        .toString();
  }
}

class UpdateUserDtoBuilder
    implements Builder<UpdateUserDto, UpdateUserDtoBuilder> {
  _$UpdateUserDto? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  UserAccountStatus? _status;
  UserAccountStatus? get status => _$this._status;
  set status(UserAccountStatus? status) => _$this._status = status;

  UpdateUserDtoBuilder() {
    UpdateUserDto._defaults(this);
  }

  UpdateUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _emailAddress = $v.emailAddress;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserDto other) {
    _$v = other as _$UpdateUserDto;
  }

  @override
  void update(void Function(UpdateUserDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserDto build() => _build();

  _$UpdateUserDto _build() {
    final _$result = _$v ??
        _$UpdateUserDto._(
          firstName: firstName,
          lastName: lastName,
          emailAddress: emailAddress,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'UpdateUserDto', 'status'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
