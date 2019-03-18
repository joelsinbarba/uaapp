library auth_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_event.g.dart';

abstract class AuthEvent {}

abstract class AuthInitiated extends AuthEvent
    implements Built<AuthInitiated, AuthInitiatedBuilder> {
  // fields go here

  AuthInitiated._();

  factory AuthInitiated([updates(AuthInitiatedBuilder b)]) =
      _$AuthInitiated;
}


