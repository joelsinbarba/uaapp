// GENERATED CODE - DO NOT MODIFY BY HAND

part of curso;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Curso> _$cursoSerializer = new _$CursoSerializer();

class _$CursoSerializer implements StructuredSerializer<Curso> {
  @override
  final Iterable<Type> types = const [Curso, _$Curso];
  @override
  final String wireName = 'Curso';

  @override
  Iterable<Object> serialize(Serializers serializers, Curso object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cursoID',
      serializers.serialize(object.cursoID, specifiedType: const FullType(int)),
      'nroCurso',
      serializers.serialize(object.nroCurso,
          specifiedType: const FullType(int)),
      'materiaID',
      serializers.serialize(object.materiaID,
          specifiedType: const FullType(int)),
      'nombreAbreviadoMateria',
      serializers.serialize(object.nombreAbreviadoMateria,
          specifiedType: const FullType(String)),
      'nombreProfesor',
      serializers.serialize(object.nombreProfesor,
          specifiedType: const FullType(String)),
      'examenes',
      serializers.serialize(object.examenes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Examen)])),
    ];
    if (object.nroAula != null) {
      result
        ..add('nroAula')
        ..add(serializers.serialize(object.nroAula,
            specifiedType: const FullType(int)));
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
    return result;
  }

  @override
  Curso deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CursoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cursoID':
          result.cursoID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nroCurso':
          result.nroCurso = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'materiaID':
          result.materiaID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nombreAbreviadoMateria':
          result.nombreAbreviadoMateria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nombreProfesor':
          result.nombreProfesor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nroAula':
          result.nroAula = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fechaInicio':
          result.fechaInicio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fechaFin':
          result.fechaFin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'examenes':
          result.examenes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Examen)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Curso extends Curso {
  @override
  final int cursoID;
  @override
  final int nroCurso;
  @override
  final int materiaID;
  @override
  final String nombreAbreviadoMateria;
  @override
  final String nombreProfesor;
  @override
  final int nroAula;
  @override
  final String fechaInicio;
  @override
  final String fechaFin;
  @override
  final BuiltList<Examen> examenes;

  factory _$Curso([void Function(CursoBuilder) updates]) =>
      (new CursoBuilder()..update(updates)).build();

  _$Curso._(
      {this.cursoID,
      this.nroCurso,
      this.materiaID,
      this.nombreAbreviadoMateria,
      this.nombreProfesor,
      this.nroAula,
      this.fechaInicio,
      this.fechaFin,
      this.examenes})
      : super._() {
    if (cursoID == null) {
      throw new BuiltValueNullFieldError('Curso', 'cursoID');
    }
    if (nroCurso == null) {
      throw new BuiltValueNullFieldError('Curso', 'nroCurso');
    }
    if (materiaID == null) {
      throw new BuiltValueNullFieldError('Curso', 'materiaID');
    }
    if (nombreAbreviadoMateria == null) {
      throw new BuiltValueNullFieldError('Curso', 'nombreAbreviadoMateria');
    }
    if (nombreProfesor == null) {
      throw new BuiltValueNullFieldError('Curso', 'nombreProfesor');
    }
    if (examenes == null) {
      throw new BuiltValueNullFieldError('Curso', 'examenes');
    }
  }

  @override
  Curso rebuild(void Function(CursoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CursoBuilder toBuilder() => new CursoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Curso &&
        cursoID == other.cursoID &&
        nroCurso == other.nroCurso &&
        materiaID == other.materiaID &&
        nombreAbreviadoMateria == other.nombreAbreviadoMateria &&
        nombreProfesor == other.nombreProfesor &&
        nroAula == other.nroAula &&
        fechaInicio == other.fechaInicio &&
        fechaFin == other.fechaFin &&
        examenes == other.examenes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, cursoID.hashCode),
                                    nroCurso.hashCode),
                                materiaID.hashCode),
                            nombreAbreviadoMateria.hashCode),
                        nombreProfesor.hashCode),
                    nroAula.hashCode),
                fechaInicio.hashCode),
            fechaFin.hashCode),
        examenes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Curso')
          ..add('cursoID', cursoID)
          ..add('nroCurso', nroCurso)
          ..add('materiaID', materiaID)
          ..add('nombreAbreviadoMateria', nombreAbreviadoMateria)
          ..add('nombreProfesor', nombreProfesor)
          ..add('nroAula', nroAula)
          ..add('fechaInicio', fechaInicio)
          ..add('fechaFin', fechaFin)
          ..add('examenes', examenes))
        .toString();
  }
}

class CursoBuilder implements Builder<Curso, CursoBuilder> {
  _$Curso _$v;

  int _cursoID;
  int get cursoID => _$this._cursoID;
  set cursoID(int cursoID) => _$this._cursoID = cursoID;

  int _nroCurso;
  int get nroCurso => _$this._nroCurso;
  set nroCurso(int nroCurso) => _$this._nroCurso = nroCurso;

  int _materiaID;
  int get materiaID => _$this._materiaID;
  set materiaID(int materiaID) => _$this._materiaID = materiaID;

  String _nombreAbreviadoMateria;
  String get nombreAbreviadoMateria => _$this._nombreAbreviadoMateria;
  set nombreAbreviadoMateria(String nombreAbreviadoMateria) =>
      _$this._nombreAbreviadoMateria = nombreAbreviadoMateria;

  String _nombreProfesor;
  String get nombreProfesor => _$this._nombreProfesor;
  set nombreProfesor(String nombreProfesor) =>
      _$this._nombreProfesor = nombreProfesor;

  int _nroAula;
  int get nroAula => _$this._nroAula;
  set nroAula(int nroAula) => _$this._nroAula = nroAula;

  String _fechaInicio;
  String get fechaInicio => _$this._fechaInicio;
  set fechaInicio(String fechaInicio) => _$this._fechaInicio = fechaInicio;

  String _fechaFin;
  String get fechaFin => _$this._fechaFin;
  set fechaFin(String fechaFin) => _$this._fechaFin = fechaFin;

  ListBuilder<Examen> _examenes;
  ListBuilder<Examen> get examenes =>
      _$this._examenes ??= new ListBuilder<Examen>();
  set examenes(ListBuilder<Examen> examenes) => _$this._examenes = examenes;

  CursoBuilder();

  CursoBuilder get _$this {
    if (_$v != null) {
      _cursoID = _$v.cursoID;
      _nroCurso = _$v.nroCurso;
      _materiaID = _$v.materiaID;
      _nombreAbreviadoMateria = _$v.nombreAbreviadoMateria;
      _nombreProfesor = _$v.nombreProfesor;
      _nroAula = _$v.nroAula;
      _fechaInicio = _$v.fechaInicio;
      _fechaFin = _$v.fechaFin;
      _examenes = _$v.examenes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Curso other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Curso;
  }

  @override
  void update(void Function(CursoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Curso build() {
    _$Curso _$result;
    try {
      _$result = _$v ??
          new _$Curso._(
              cursoID: cursoID,
              nroCurso: nroCurso,
              materiaID: materiaID,
              nombreAbreviadoMateria: nombreAbreviadoMateria,
              nombreProfesor: nombreProfesor,
              nroAula: nroAula,
              fechaInicio: fechaInicio,
              fechaFin: fechaFin,
              examenes: examenes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'examenes';
        examenes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Curso', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
