library semestreState;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uaapp/model/models.dart';

part 'semestreState.g.dart';

abstract class SemestreState
    implements Built<SemestreState, SemestreStateBuilder> {
  // fields go here

  bool get isInitial =>
      !isLoading && response == List<Semestre>() && error == '';
  bool get isSuccesfull =>
      !isLoading && response != List<Semestre>() && error == '';

  bool get isLoading;
  String get error;

  bool get hasReachedEndOfResults;
  bool get noMoreResults;

  @nullable
  List<Semestre> get response;

  SemestreState._();

  factory SemestreState([updates(SemestreStateBuilder b)]) = _$SemestreState;

  factory SemestreState.initial() {
    return SemestreState((b) => b
      ..isLoading = false
      ..response = List<Semestre>()//.replace(Response())
      ..error = ''
      ..hasReachedEndOfResults = false
      ..noMoreResults =false 
      );
  }

  factory SemestreState.loading() {
    return SemestreState((b) => b
      ..isLoading = true
      ..response = b.response
      ..error = ''
      ..hasReachedEndOfResults = false
      ..noMoreResults =false 
      );
  }

  factory SemestreState.success(List<Semestre> resultsList) {
    return SemestreState((b) => b
      ..isLoading = false
      ..response = resultsList//.replace(resultsList)
      ..error = ''
      ..hasReachedEndOfResults = false
      ..noMoreResults =false 
      );
  }
  

  
}
