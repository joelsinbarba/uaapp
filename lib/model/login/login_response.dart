library login_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/serializer/serializers.dart';

part 'login_response.g.dart';

abstract class LoginResponse
    implements Built<LoginResponse, LoginResponseBuilder> {
  @nullable
  String get username;
  @nullable
  String get firstname;
  @nullable
  String get lastname;
  @nullable
  String get email;
  @nullable
  int get persona_id;

  LoginResponse._();

  factory LoginResponse([updates(LoginResponseBuilder b)]) = _$LoginResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LoginResponse.serializer, this));
  }

  static LoginResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginResponse.serializer, json.decode(jsonString));
  }

  static Serializer<LoginResponse> get serializer => _$loginResponseSerializer;
}
