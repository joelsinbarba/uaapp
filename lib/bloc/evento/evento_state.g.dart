// GENERATED CODE - DO NOT MODIFY BY HAND

part of evento_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventoState extends EventoState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final List<Evento> response;

  factory _$EventoState([void Function(EventoStateBuilder) updates]) =>
      (new EventoStateBuilder()..update(updates)).build();

  _$EventoState._({this.isLoading, this.error, this.response}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('EventoState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('EventoState', 'error');
    }
  }

  @override
  EventoState rebuild(void Function(EventoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventoStateBuilder toBuilder() => new EventoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventoState &&
        isLoading == other.isLoading &&
        error == other.error &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isLoading.hashCode), error.hashCode), response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventoState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('response', response))
        .toString();
  }
}

class EventoStateBuilder implements Builder<EventoState, EventoStateBuilder> {
  _$EventoState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  List<Evento> _response;
  List<Evento> get response => _$this._response;
  set response(List<Evento> response) => _$this._response = response;

  EventoStateBuilder();

  EventoStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _response = _$v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventoState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EventoState;
  }

  @override
  void update(void Function(EventoStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventoState build() {
    final _$result = _$v ??
        new _$EventoState._(
            isLoading: isLoading, error: error, response: response);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
