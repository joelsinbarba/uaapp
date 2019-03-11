// GENERATED CODE - DO NOT MODIFY BY HAND

part of examen;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Examen> _$examenSerializer = new _$ExamenSerializer();

class _$ExamenSerializer implements StructuredSerializer<Examen> {
  @override
  final Iterable<Type> types = const [Examen, _$Examen];
  @override
  final String wireName = 'Examen';

  @override
  Iterable serialize(Serializers serializers, Examen object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'parcial',
      serializers.serialize(object.parcial,
          specifiedType: const FullType(String)),
      'fechaExamen',
      serializers.serialize(object.fechaExamen,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Examen deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExamenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'parcial':
          result.parcial = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fechaExamen':
          result.fechaExamen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Examen extends Examen {
  @override
  final String parcial;
  @override
  final String fechaExamen;

  factory _$Examen([void updates(ExamenBuilder b)]) =>
      (new ExamenBuilder()..update(updates)).build();

  _$Examen._({this.parcial, this.fechaExamen}) : super._() {
    if (parcial == null) {
      throw new BuiltValueNullFieldError('Examen', 'parcial');
    }
    if (fechaExamen == null) {
      throw new BuiltValueNullFieldError('Examen', 'fechaExamen');
    }
  }

  @override
  Examen rebuild(void updates(ExamenBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ExamenBuilder toBuilder() => new ExamenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Examen &&
        parcial == other.parcial &&
        fechaExamen == other.fechaExamen;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, parcial.hashCode), fechaExamen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Examen')
          ..add('parcial', parcial)
          ..add('fechaExamen', fechaExamen))
        .toString();
  }
}

class ExamenBuilder implements Builder<Examen, ExamenBuilder> {
  _$Examen _$v;

  String _parcial;
  String get parcial => _$this._parcial;
  set parcial(String parcial) => _$this._parcial = parcial;

  String _fechaExamen;
  String get fechaExamen => _$this._fechaExamen;
  set fechaExamen(String fechaExamen) => _$this._fechaExamen = fechaExamen;

  ExamenBuilder();

  ExamenBuilder get _$this {
    if (_$v != null) {
      _parcial = _$v.parcial;
      _fechaExamen = _$v.fechaExamen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Examen other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Examen;
  }

  @override
  void update(void updates(ExamenBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Examen build() {
    final _$result =
        _$v ?? new _$Examen._(parcial: parcial, fechaExamen: fechaExamen);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
