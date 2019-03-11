library evento_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/eventos/evento.dart';
import 'package:uaapp/model/serializer/serializers.dart';

part 'evento_response.g.dart';

abstract class EventoResponse
    implements Built<EventoResponse, EventoResponseBuilder> {
  // fields go here

  BuiltList<Evento> get eventos;

  EventoResponse._();

  factory EventoResponse([updates(EventoResponseBuilder b)]) = _$EventoResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(EventoResponse.serializer, this));
  }

  static EventoResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        EventoResponse.serializer, json.decode(jsonString));
  }

  static Serializer<EventoResponse> get serializer =>
      _$eventoResponseSerializer;
}
