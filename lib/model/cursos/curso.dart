library curso;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/models.dart';
import 'package:uaapp/model/serializer/serializers.dart';

part 'curso.g.dart';

abstract class Curso implements Built<Curso, CursoBuilder> {
  int get cursoID;
  int get nroCurso;
  int get materiaID;
  String get nombreAbreviadoMateria;
  String get nombreProfesor;
  @nullable
  int get nroAula;
  @nullable
  String get fechaInicio;
  @nullable
  String get fechaFin;
  BuiltList<Examen> get examenes;

  Curso._();

  factory Curso([updates(CursoBuilder b)]) = _$Curso;

  String toJson() {
    return json.encode(serializers.serializeWith(Curso.serializer, this));
  }

  static Curso fromJson(String jsonString) {
    return serializers.deserializeWith(
        Curso.serializer, json.decode(jsonString));
  }

  static Serializer<Curso> get serializer => _$cursoSerializer;
}
