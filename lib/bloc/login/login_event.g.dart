// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginInitiated extends LoginInitiated {
  @override
  final String user;
  @override
  final String password;

  factory _$LoginInitiated([void Function(LoginInitiatedBuilder) updates]) =>
      (new LoginInitiatedBuilder()..update(updates)).build();

  _$LoginInitiated._({this.user, this.password}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('LoginInitiated', 'user');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('LoginInitiated', 'password');
    }
  }

  @override
  LoginInitiated rebuild(void Function(LoginInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginInitiatedBuilder toBuilder() =>
      new LoginInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginInitiated &&
        user == other.user &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginInitiated')
          ..add('user', user)
          ..add('password', password))
        .toString();
  }
}

class LoginInitiatedBuilder
    implements Builder<LoginInitiated, LoginInitiatedBuilder> {
  _$LoginInitiated _$v;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginInitiatedBuilder();

  LoginInitiatedBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginInitiated;
  }

  @override
  void update(void Function(LoginInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginInitiated build() {
    final _$result =
        _$v ?? new _$LoginInitiated._(user: user, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$LoginShowUp extends LoginShowUp {
  factory _$LoginShowUp([void Function(LoginShowUpBuilder) updates]) =>
      (new LoginShowUpBuilder()..update(updates)).build();

  _$LoginShowUp._() : super._();

  @override
  LoginShowUp rebuild(void Function(LoginShowUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginShowUpBuilder toBuilder() => new LoginShowUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginShowUp;
  }

  @override
  int get hashCode {
    return 345937801;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LoginShowUp').toString();
  }
}

class LoginShowUpBuilder implements Builder<LoginShowUp, LoginShowUpBuilder> {
  _$LoginShowUp _$v;

  LoginShowUpBuilder();

  @override
  void replace(LoginShowUp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginShowUp;
  }

  @override
  void update(void Function(LoginShowUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginShowUp build() {
    final _$result = _$v ?? new _$LoginShowUp._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
