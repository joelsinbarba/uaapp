// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponse> _$loginResponseSerializer =
    new _$LoginResponseSerializer();

class _$LoginResponseSerializer implements StructuredSerializer<LoginResponse> {
  @override
  final Iterable<Type> types = const [LoginResponse, _$LoginResponse];
  @override
  final String wireName = 'LoginResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.firstname != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(object.firstname,
            specifiedType: const FullType(String)));
    }
    if (object.lastname != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(object.lastname,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.accessId != null) {
      result
        ..add('access_ID_')
        ..add(serializers.serialize(object.accessId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'access_ID_':
          result.accessId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponse extends LoginResponse {
  @override
  final String username;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final String accessId;

  factory _$LoginResponse([void Function(LoginResponseBuilder) updates]) =>
      (new LoginResponseBuilder()..update(updates)).build();

  _$LoginResponse._(
      {this.username, this.firstname, this.lastname, this.email, this.accessId})
      : super._();

  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => new LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse &&
        username == other.username &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        accessId == other.accessId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, username.hashCode), firstname.hashCode),
                lastname.hashCode),
            email.hashCode),
        accessId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponse')
          ..add('username', username)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('email', email)
          ..add('accessId', accessId))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _firstname;
  String get firstname => _$this._firstname;
  set firstname(String firstname) => _$this._firstname = firstname;

  String _lastname;
  String get lastname => _$this._lastname;
  set lastname(String lastname) => _$this._lastname = lastname;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _accessId;
  String get accessId => _$this._accessId;
  set accessId(String accessId) => _$this._accessId = accessId;

  LoginResponseBuilder();

  LoginResponseBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _firstname = _$v.firstname;
      _lastname = _$v.lastname;
      _email = _$v.email;
      _accessId = _$v.accessId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponse build() {
    final _$result = _$v ??
        new _$LoginResponse._(
            username: username,
            firstname: firstname,
            lastname: lastname,
            email: email,
            accessId: accessId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
