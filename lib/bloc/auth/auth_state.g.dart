// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthState extends AuthState {
  @override
  final bool loggedIn;
  @override
  final bool isLoading;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.loggedIn, this.isLoading}) : super._() {
    if (loggedIn == null) {
      throw new BuiltValueNullFieldError('AuthState', 'loggedIn');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AuthState', 'isLoading');
    }
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        loggedIn == other.loggedIn &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, loggedIn.hashCode), isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('loggedIn', loggedIn)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  bool _loggedIn;
  bool get loggedIn => _$this._loggedIn;
  set loggedIn(bool loggedIn) => _$this._loggedIn = loggedIn;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _loggedIn = _$v.loggedIn;
      _isLoading = _$v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    final _$result =
        _$v ?? new _$AuthState._(loggedIn: loggedIn, isLoading: isLoading);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
