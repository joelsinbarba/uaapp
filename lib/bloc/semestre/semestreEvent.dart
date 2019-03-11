library semestreEvent;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'semestreEvent.g.dart';

abstract class SemestreEvent {}

abstract class SemestreInitiated extends SemestreEvent
    implements Built<SemestreInitiated, SemestreInitiatedBuilder> {
  // fields go here

  SemestreInitiated._();

  factory SemestreInitiated([updates(SemestreInitiatedBuilder b)]) =
      _$SemestreInitiated;
}

abstract class SemestreLoadMore extends SemestreEvent
    implements Built<SemestreLoadMore , SemestreLoadMoreBuilder> {
  // fields go here

  SemestreLoadMore._();

  factory SemestreLoadMore([updates(SemestreLoadMoreBuilder b)]) =
      _$SemestreLoadMore;
}