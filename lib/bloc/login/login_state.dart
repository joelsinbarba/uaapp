library Login_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/models.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  // fields go here

  bool get isInitial => !isLoading && response == LoginResponse() && error == false;
  bool get isSuccesfull =>
      !isLoading && response != LoginResponse() && error == false;

  bool get isLoading;
  bool get error;

  @nullable
  LoginResponse get response;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initial() {
    return LoginState((b) => b
      ..isLoading = false
      //..response.replace(Response())
      ..error = false);
  }

   factory LoginState.fail() {
    return LoginState((b) => b
      ..isLoading = false
      //..response.replace(Response())
      ..error = true);
  }

  factory LoginState.loading() {
    return LoginState((b) => b
      ..isLoading = true
      //..response.replace(Response())
      ..error = false);
  }

  factory LoginState.success(LoginResponse resultsList) {
    return LoginState((b) => b
      ..isLoading = false
      ..response.replace(resultsList) //.replace(resultsList)
      ..error = false);
  }
}
