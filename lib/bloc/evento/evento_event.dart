library evento_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evento_event.g.dart';

abstract class EventoEvent {}

abstract class EventoInitiated extends EventoEvent
    implements Built<EventoInitiated, EventoInitiatedBuilder> {
  // fields go here

  EventoInitiated._();

  factory EventoInitiated([updates(EventoInitiatedBuilder b)]) =
      _$EventoInitiated;
}
