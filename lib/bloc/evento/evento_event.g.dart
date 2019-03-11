// GENERATED CODE - DO NOT MODIFY BY HAND

part of evento_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventoInitiated extends EventoInitiated {
  factory _$EventoInitiated([void updates(EventoInitiatedBuilder b)]) =>
      (new EventoInitiatedBuilder()..update(updates)).build();

  _$EventoInitiated._() : super._();

  @override
  EventoInitiated rebuild(void updates(EventoInitiatedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventoInitiatedBuilder toBuilder() =>
      new EventoInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventoInitiated;
  }

  @override
  int get hashCode {
    return 338203509;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('EventoInitiated').toString();
  }
}

class EventoInitiatedBuilder
    implements Builder<EventoInitiated, EventoInitiatedBuilder> {
  _$EventoInitiated _$v;

  EventoInitiatedBuilder();

  @override
  void replace(EventoInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EventoInitiated;
  }

  @override
  void update(void updates(EventoInitiatedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EventoInitiated build() {
    final _$result = _$v ?? new _$EventoInitiated._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
