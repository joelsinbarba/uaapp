// GENERATED CODE - DO NOT MODIFY BY HAND

part of semestreState;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SemestreState extends SemestreState {
  @override
  final bool isLoading;
  @override
  final String error;
  @override
  final bool hasReachedEndOfResults;
  @override
  final bool noMoreResults;
  @override
  final List<Semestre> response;

  factory _$SemestreState([void updates(SemestreStateBuilder b)]) =>
      (new SemestreStateBuilder()..update(updates)).build();

  _$SemestreState._(
      {this.isLoading,
      this.error,
      this.hasReachedEndOfResults,
      this.noMoreResults,
      this.response})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SemestreState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SemestreState', 'error');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'SemestreState', 'hasReachedEndOfResults');
    }
    if (noMoreResults == null) {
      throw new BuiltValueNullFieldError('SemestreState', 'noMoreResults');
    }
  }

  @override
  SemestreState rebuild(void updates(SemestreStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SemestreStateBuilder toBuilder() => new SemestreStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SemestreState &&
        isLoading == other.isLoading &&
        error == other.error &&
        hasReachedEndOfResults == other.hasReachedEndOfResults &&
        noMoreResults == other.noMoreResults &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLoading.hashCode), error.hashCode),
                hasReachedEndOfResults.hashCode),
            noMoreResults.hashCode),
        response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SemestreState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults)
          ..add('noMoreResults', noMoreResults)
          ..add('response', response))
        .toString();
  }
}

class SemestreStateBuilder
    implements Builder<SemestreState, SemestreStateBuilder> {
  _$SemestreState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  bool _noMoreResults;
  bool get noMoreResults => _$this._noMoreResults;
  set noMoreResults(bool noMoreResults) =>
      _$this._noMoreResults = noMoreResults;

  List<Semestre> _response;
  List<Semestre> get response => _$this._response;
  set response(List<Semestre> response) => _$this._response = response;

  SemestreStateBuilder();

  SemestreStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _error = _$v.error;
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _noMoreResults = _$v.noMoreResults;
      _response = _$v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SemestreState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SemestreState;
  }

  @override
  void update(void updates(SemestreStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SemestreState build() {
    final _$result = _$v ??
        new _$SemestreState._(
            isLoading: isLoading,
            error: error,
            hasReachedEndOfResults: hasReachedEndOfResults,
            noMoreResults: noMoreResults,
            response: response);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
