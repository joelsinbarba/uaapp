library auth_state;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:uaapp/model/models.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  // fields go here

  bool get loggedIn;
  bool get isLoading;

  AuthState._();

  factory AuthState([updates(AuthStateBuilder b)]) = _$AuthState;

  factory AuthState.loading() {
    return AuthState((b) => b
      ..loggedIn = false
      ..isLoading = true);
  }

  factory AuthState.authenticated() {
    return AuthState((b) => b
      ..loggedIn = true
      ..isLoading = false
      );
  }

  factory AuthState.unauthenticated() {
    return AuthState((b) => b
      ..loggedIn = false
      ..isLoading = false);
  }
}
