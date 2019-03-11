library semestre;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/models.dart';
import 'package:uaapp/model/serializer/serializers.dart';

part 'semestre.g.dart';

abstract class Semestre implements Built<Semestre, SemestreBuilder> {
  // fields go here
  @nullable
  String get semestreID;
  @nullable
  String get nombre;
  @nullable
  String get nombreAbreviado;
  @nullable
  String get annoLectivo;
  @nullable
  String get fechaInicio;
  @nullable
  String get fechaFin;
  @nullable
  BuiltList<Curso> get cursos;

  @nullable
  int get emptyYear;

  Semestre._();

  factory Semestre([updates(SemestreBuilder b)]) = _$Semestre;

  String toJson() {
    return json.encode(serializers.serializeWith(Semestre.serializer, this));
  }

  static Semestre fromJson(String jsonString) {
    return serializers.deserializeWith(
        Semestre.serializer, json.decode(jsonString));
  }

  static Serializer<Semestre> get serializer => _$semestreSerializer;
}
