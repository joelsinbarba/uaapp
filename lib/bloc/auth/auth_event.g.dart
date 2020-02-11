// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthInitiated extends AuthInitiated {
  factory _$AuthInitiated([void Function(AuthInitiatedBuilder) updates]) =>
      (new AuthInitiatedBuilder()..update(updates)).build();

  _$AuthInitiated._() : super._();

  @override
  AuthInitiated rebuild(void Function(AuthInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthInitiatedBuilder toBuilder() => new AuthInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthInitiated;
  }

  @override
  int get hashCode {
    return 725397401;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('AuthInitiated').toString();
  }
}

class AuthInitiatedBuilder
    implements Builder<AuthInitiated, AuthInitiatedBuilder> {
  _$AuthInitiated _$v;

  AuthInitiatedBuilder();

  @override
  void replace(AuthInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthInitiated;
  }

  @override
  void update(void Function(AuthInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthInitiated build() {
    final _$result = _$v ?? new _$AuthInitiated._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
