// GENERATED CODE - DO NOT MODIFY BY HAND

part of semestre;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Semestre> _$semestreSerializer = new _$SemestreSerializer();

class _$SemestreSerializer implements StructuredSerializer<Semestre> {
  @override
  final Iterable<Type> types = const [Semestre, _$Semestre];
  @override
  final String wireName = 'Semestre';

  @override
  Iterable serialize(Serializers serializers, Semestre object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.semestreID != null) {
      result
        ..add('semestreID')
        ..add(serializers.serialize(object.semestreID,
            specifiedType: const FullType(String)));
    }
    if (object.nombre != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(object.nombre,
            specifiedType: const FullType(String)));
    }
    if (object.nombreAbreviado != null) {
      result
        ..add('nombreAbreviado')
        ..add(serializers.serialize(object.nombreAbreviado,
            specifiedType: const FullType(String)));
    }
    if (object.annoLectivo != null) {
      result
        ..add('annoLectivo')
        ..add(serializers.serialize(object.annoLectivo,
            specifiedType: const FullType(String)));
    }
    if (object.fechaInicio != null) {
      result
        ..add('fechaInicio')
        ..add(serializers.serialize(object.fechaInicio,
            specifiedType: const FullType(String)));
    }
    if (object.fechaFin != null) {
      result
        ..add('fechaFin')
        ..add(serializers.serialize(object.fechaFin,
            specifiedType: const FullType(String)));
    }
    if (object.cursos != null) {
      result
        ..add('cursos')
        ..add(serializers.serialize(object.cursos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Curso)])));
    }
    if (object.emptyYear != null) {
      result
        ..add('emptyYear')
        ..add(serializers.serialize(object.emptyYear,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Semestre deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SemestreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'semestreID':
          result.semestreID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nombreAbreviado':
          result.nombreAbreviado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annoLectivo':
          result.annoLectivo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fechaInicio':
          result.fechaInicio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fechaFin':
          result.fechaFin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cursos':
          result.cursos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Curso)]))
              as BuiltList);
          break;
        case 'emptyYear':
          result.emptyYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Semestre extends Semestre {
  @override
  final String semestreID;
  @override
  final String nombre;
  @override
  final String nombreAbreviado;
  @override
  final String annoLectivo;
  @override
  final String fechaInicio;
  @override
  final String fechaFin;
  @override
  final BuiltList<Curso> cursos;
  @override
  final int emptyYear;

  factory _$Semestre([void updates(SemestreBuilder b)]) =>
      (new SemestreBuilder()..update(updates)).build();

  _$Semestre._(
      {this.semestreID,
      this.nombre,
      this.nombreAbreviado,
      this.annoLectivo,
      this.fechaInicio,
      this.fechaFin,
      this.cursos,
      this.emptyYear})
      : super._();

  @override
  Semestre rebuild(void updates(SemestreBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SemestreBuilder toBuilder() => new SemestreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Semestre &&
        semestreID == other.semestreID &&
        nombre == other.nombre &&
        nombreAbreviado == other.nombreAbreviado &&
        annoLectivo == other.annoLectivo &&
        fechaInicio == other.fechaInicio &&
        fechaFin == other.fechaFin &&
        cursos == other.cursos &&
        emptyYear == other.emptyYear;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, semestreID.hashCode), nombre.hashCode),
                            nombreAbreviado.hashCode),
                        annoLectivo.hashCode),
                    fechaInicio.hashCode),
                fechaFin.hashCode),
            cursos.hashCode),
        emptyYear.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Semestre')
          ..add('semestreID', semestreID)
          ..add('nombre', nombre)
          ..add('nombreAbreviado', nombreAbreviado)
          ..add('annoLectivo', annoLectivo)
          ..add('fechaInicio', fechaInicio)
          ..add('fechaFin', fechaFin)
          ..add('cursos', cursos)
          ..add('emptyYear', emptyYear))
        .toString();
  }
}

class SemestreBuilder implements Builder<Semestre, SemestreBuilder> {
  _$Semestre _$v;

  String _semestreID;
  String get semestreID => _$this._semestreID;
  set semestreID(String semestreID) => _$this._semestreID = semestreID;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _nombreAbreviado;
  String get nombreAbreviado => _$this._nombreAbreviado;
  set nombreAbreviado(String nombreAbreviado) =>
      _$this._nombreAbreviado = nombreAbreviado;

  String _annoLectivo;
  String get annoLectivo => _$this._annoLectivo;
  set annoLectivo(String annoLectivo) => _$this._annoLectivo = annoLectivo;

  String _fechaInicio;
  String get fechaInicio => _$this._fechaInicio;
  set fechaInicio(String fechaInicio) => _$this._fechaInicio = fechaInicio;

  String _fechaFin;
  String get fechaFin => _$this._fechaFin;
  set fechaFin(String fechaFin) => _$this._fechaFin = fechaFin;

  ListBuilder<Curso> _cursos;
  ListBuilder<Curso> get cursos => _$this._cursos ??= new ListBuilder<Curso>();
  set cursos(ListBuilder<Curso> cursos) => _$this._cursos = cursos;

  int _emptyYear;
  int get emptyYear => _$this._emptyYear;
  set emptyYear(int emptyYear) => _$this._emptyYear = emptyYear;

  SemestreBuilder();

  SemestreBuilder get _$this {
    if (_$v != null) {
      _semestreID = _$v.semestreID;
      _nombre = _$v.nombre;
      _nombreAbreviado = _$v.nombreAbreviado;
      _annoLectivo = _$v.annoLectivo;
      _fechaInicio = _$v.fechaInicio;
      _fechaFin = _$v.fechaFin;
      _cursos = _$v.cursos?.toBuilder();
      _emptyYear = _$v.emptyYear;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Semestre other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Semestre;
  }

  @override
  void update(void updates(SemestreBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Semestre build() {
    _$Semestre _$result;
    try {
      _$result = _$v ??
          new _$Semestre._(
              semestreID: semestreID,
              nombre: nombre,
              nombreAbreviado: nombreAbreviado,
              annoLectivo: annoLectivo,
              fechaInicio: fechaInicio,
              fechaFin: fechaFin,
              cursos: _cursos?.build(),
              emptyYear: emptyYear);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cursos';
        _cursos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Semestre', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
