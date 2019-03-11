library examen;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/serializer/serializers.dart';

part 'examen.g.dart';

abstract class Examen implements Built<Examen, ExamenBuilder> {
  // fields go here

  String get parcial;
  String get fechaExamen;

  Examen._();

  factory Examen([updates(ExamenBuilder b)]) = _$Examen;

  String toJson() {
    return json.encode(serializers.serializeWith(Examen.serializer, this));
  }

  static Examen fromJson(String jsonString) {
    return serializers.deserializeWith(
        Examen.serializer, json.decode(jsonString));
  }

  static Serializer<Examen> get serializer => _$examenSerializer;
}
