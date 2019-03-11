// GENERATED CODE - DO NOT MODIFY BY HAND

part of response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Response> _$responseSerializer = new _$ResponseSerializer();

class _$ResponseSerializer implements StructuredSerializer<Response> {
  @override
  final Iterable<Type> types = const [Response, _$Response];
  @override
  final String wireName = 'Response';

  @override
  Iterable serialize(Serializers serializers, Response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'semestre',
      serializers.serialize(object.semestre,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Semestre)])),
    ];

    return result;
  }

  @override
  Response deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'semestre':
          result.semestre.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Semestre)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Response extends Response {
  @override
  final BuiltList<Semestre> semestre;

  factory _$Response([void updates(ResponseBuilder b)]) =>
      (new ResponseBuilder()..update(updates)).build();

  _$Response._({this.semestre}) : super._() {
    if (semestre == null) {
      throw new BuiltValueNullFieldError('Response', 'semestre');
    }
  }

  @override
  Response rebuild(void updates(ResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseBuilder toBuilder() => new ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Response && semestre == other.semestre;
  }

  @override
  int get hashCode {
    return $jf($jc(0, semestre.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Response')..add('semestre', semestre))
        .toString();
  }
}

class ResponseBuilder implements Builder<Response, ResponseBuilder> {
  _$Response _$v;

  ListBuilder<Semestre> _semestre;
  ListBuilder<Semestre> get semestre =>
      _$this._semestre ??= new ListBuilder<Semestre>();
  set semestre(ListBuilder<Semestre> semestre) => _$this._semestre = semestre;

  ResponseBuilder();

  ResponseBuilder get _$this {
    if (_$v != null) {
      _semestre = _$v.semestre?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Response other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Response;
  }

  @override
  void update(void updates(ResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Response build() {
    _$Response _$result;
    try {
      _$result = _$v ?? new _$Response._(semestre: semestre.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'semestre';
        semestre.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
