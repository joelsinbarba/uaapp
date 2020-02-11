// GENERATED CODE - DO NOT MODIFY BY HAND

part of evento_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventoResponse> _$eventoResponseSerializer =
    new _$EventoResponseSerializer();

class _$EventoResponseSerializer
    implements StructuredSerializer<EventoResponse> {
  @override
  final Iterable<Type> types = const [EventoResponse, _$EventoResponse];
  @override
  final String wireName = 'EventoResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, EventoResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'eventos',
      serializers.serialize(object.eventos,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Evento)])),
    ];

    return result;
  }

  @override
  EventoResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventoResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'eventos':
          result.eventos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Evento)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$EventoResponse extends EventoResponse {
  @override
  final BuiltList<Evento> eventos;

  factory _$EventoResponse([void Function(EventoResponseBuilder) updates]) =>
      (new EventoResponseBuilder()..update(updates)).build();

  _$EventoResponse._({this.eventos}) : super._() {
    if (eventos == null) {
      throw new BuiltValueNullFieldError('EventoResponse', 'eventos');
    }
  }

  @override
  EventoResponse rebuild(void Function(EventoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventoResponseBuilder toBuilder() =>
      new EventoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventoResponse && eventos == other.eventos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, eventos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventoResponse')
          ..add('eventos', eventos))
        .toString();
  }
}

class EventoResponseBuilder
    implements Builder<EventoResponse, EventoResponseBuilder> {
  _$EventoResponse _$v;

  ListBuilder<Evento> _eventos;
  ListBuilder<Evento> get eventos =>
      _$this._eventos ??= new ListBuilder<Evento>();
  set eventos(ListBuilder<Evento> eventos) => _$this._eventos = eventos;

  EventoResponseBuilder();

  EventoResponseBuilder get _$this {
    if (_$v != null) {
      _eventos = _$v.eventos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventoResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EventoResponse;
  }

  @override
  void update(void Function(EventoResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventoResponse build() {
    _$EventoResponse _$result;
    try {
      _$result = _$v ?? new _$EventoResponse._(eventos: eventos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'eventos';
        eventos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
