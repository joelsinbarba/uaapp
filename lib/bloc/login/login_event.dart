library login_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_event.g.dart';

abstract class LoginEvent {}

abstract class LoginInitiated extends LoginEvent
    implements Built<LoginInitiated, LoginInitiatedBuilder> {
  // fields go here

  String get user;
  String get password;

  LoginInitiated._();

  factory LoginInitiated([updates(LoginInitiatedBuilder b)]) =
      _$LoginInitiated;
}

abstract class LoginShowUp extends LoginEvent
    implements Built<LoginShowUp, LoginShowUpBuilder> {

  LoginShowUp._();

  factory LoginShowUp([updates(LoginShowUpBuilder b)]) =
      _$LoginShowUp;
}