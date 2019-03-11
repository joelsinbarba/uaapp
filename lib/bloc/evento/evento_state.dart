library evento_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/models.dart';

part 'evento_state.g.dart';

abstract class EventoState implements Built<EventoState, EventoStateBuilder> {
  // fields go here

  bool get isInitial => !isLoading && response == List<Evento>() && error == '';
  bool get isSuccesfull =>
      !isLoading && response != List<Evento>() && error == '';

  bool get isLoading;
  String get error;

  @nullable
  List<Evento> get response;

  EventoState._();

  factory EventoState([updates(EventoStateBuilder b)]) = _$EventoState;

  factory EventoState.initial() {
    return EventoState((b) => b
      ..isLoading = false
      //..response.replace(Response())
      ..error = '');
  }

  factory EventoState.loading() {
    return EventoState((b) => b
      ..isLoading = true
      //..response.replace(Response())
      ..error = '');
  }

  factory EventoState.success(List<Evento> resultsList) {
    return EventoState((b) => b
      ..isLoading = false
      ..response = resultsList //.replace(resultsList)
      ..error = '');
  }
}
