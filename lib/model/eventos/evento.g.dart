// GENERATED CODE - DO NOT MODIFY BY HAND

part of evento;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Evento> _$eventoSerializer = new _$EventoSerializer();

class _$EventoSerializer implements StructuredSerializer<Evento> {
  @override
  final Iterable<Type> types = const [Evento, _$Evento];
  @override
  final String wireName = 'Evento';

  @override
  Iterable<Object> serialize(Serializers serializers, Evento object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'nombreEvento',
      serializers.serialize(object.nombreEvento,
          specifiedType: const FullType(String)),
      'horaInicio',
      serializers.serialize(object.horaInicio,
          specifiedType: const FullType(String)),
    ];
    if (object.nroAula != null) {
      result
        ..add('nroAula')
        ..add(serializers.serialize(object.nroAula,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Evento deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nombreEvento':
          result.nombreEvento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nroAula':
          result.nroAula = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'horaInicio':
          result.horaInicio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Evento extends Evento {
  @override
  final String nombreEvento;
  @override
  final int nroAula;
  @override
  final String horaInicio;

  factory _$Evento([void Function(EventoBuilder) updates]) =>
      (new EventoBuilder()..update(updates)).build();

  _$Evento._({this.nombreEvento, this.nroAula, this.horaInicio}) : super._() {
    if (nombreEvento == null) {
      throw new BuiltValueNullFieldError('Evento', 'nombreEvento');
    }
    if (horaInicio == null) {
      throw new BuiltValueNullFieldError('Evento', 'horaInicio');
    }
  }

  @override
  Evento rebuild(void Function(EventoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventoBuilder toBuilder() => new EventoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Evento &&
        nombreEvento == other.nombreEvento &&
        nroAula == other.nroAula &&
        horaInicio == other.horaInicio;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, nombreEvento.hashCode), nroAula.hashCode),
        horaInicio.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Evento')
          ..add('nombreEvento', nombreEvento)
          ..add('nroAula', nroAula)
          ..add('horaInicio', horaInicio))
        .toString();
  }
}

class EventoBuilder implements Builder<Evento, EventoBuilder> {
  _$Evento _$v;

  String _nombreEvento;
  String get nombreEvento => _$this._nombreEvento;
  set nombreEvento(String nombreEvento) => _$this._nombreEvento = nombreEvento;

  int _nroAula;
  int get nroAula => _$this._nroAula;
  set nroAula(int nroAula) => _$this._nroAula = nroAula;

  String _horaInicio;
  String get horaInicio => _$this._horaInicio;
  set horaInicio(String horaInicio) => _$this._horaInicio = horaInicio;

  EventoBuilder();

  EventoBuilder get _$this {
    if (_$v != null) {
      _nombreEvento = _$v.nombreEvento;
      _nroAula = _$v.nroAula;
      _horaInicio = _$v.horaInicio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Evento other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Evento;
  }

  @override
  void update(void Function(EventoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Evento build() {
    final _$result = _$v ??
        new _$Evento._(
            nombreEvento: nombreEvento,
            nroAula: nroAula,
            horaInicio: horaInicio);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
