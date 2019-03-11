library evento;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/serializer/serializers.dart';

part 'evento.g.dart';

abstract class Evento implements Built<Evento, EventoBuilder> {
  // fields go here

  String get nombreEvento;

  @nullable
  int get nroAula;

  String get horaInicio;

  Evento._();

  factory Evento([updates(EventoBuilder b)]) = _$Evento;

  String toJson() {
    return json.encode(serializers.serializeWith(Evento.serializer, this));
  }

  static Evento fromJson(String jsonString) {
    return serializers.deserializeWith(
        Evento.serializer, json.decode(jsonString));
  }

  static Serializer<Evento> get serializer => _$eventoSerializer;
}
