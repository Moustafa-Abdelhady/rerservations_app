// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors>? doctors) searchSuccess,
    required TResult Function() noResult,
    required TResult Function(ApiErrorModel apiErrorModel) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors>? doctors)? searchSuccess,
    TResult? Function()? noResult,
    TResult? Function(ApiErrorModel apiErrorModel)? searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors>? doctors)? searchSuccess,
    TResult Function()? noResult,
    TResult Function(ApiErrorModel apiErrorModel)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(NoResult value) noResult,
    required TResult Function(SearchFailure value) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(NoResult value)? noResult,
    TResult? Function(SearchFailure value)? searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(NoResult value)? noResult,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors>? doctors) searchSuccess,
    required TResult Function() noResult,
    required TResult Function(ApiErrorModel apiErrorModel) searchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors>? doctors)? searchSuccess,
    TResult? Function()? noResult,
    TResult? Function(ApiErrorModel apiErrorModel)? searchFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors>? doctors)? searchSuccess,
    TResult Function()? noResult,
    TResult Function(ApiErrorModel apiErrorModel)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(NoResult value) noResult,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(NoResult value)? noResult,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(NoResult value)? noResult,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors>? doctors) searchSuccess,
    required TResult Function() noResult,
    required TResult Function(ApiErrorModel apiErrorModel) searchFailure,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors>? doctors)? searchSuccess,
    TResult? Function()? noResult,
    TResult? Function(ApiErrorModel apiErrorModel)? searchFailure,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors>? doctors)? searchSuccess,
    TResult Function()? noResult,
    TResult Function(ApiErrorModel apiErrorModel)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(NoResult value) noResult,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(NoResult value)? noResult,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(NoResult value)? noResult,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(
          _$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctors>? doctors});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(
      _$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = freezed,
  }) {
    return _then(_$SearchSuccessImpl(
      freezed == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctors>?,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl implements SearchSuccess {
  const _$SearchSuccessImpl(final List<Doctors>? doctors) : _doctors = doctors;

  final List<Doctors>? _doctors;
  @override
  List<Doctors>? get doctors {
    final value = _doctors;
    if (value == null) return null;
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchState.searchSuccess(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors>? doctors) searchSuccess,
    required TResult Function() noResult,
    required TResult Function(ApiErrorModel apiErrorModel) searchFailure,
  }) {
    return searchSuccess(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors>? doctors)? searchSuccess,
    TResult? Function()? noResult,
    TResult? Function(ApiErrorModel apiErrorModel)? searchFailure,
  }) {
    return searchSuccess?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors>? doctors)? searchSuccess,
    TResult Function()? noResult,
    TResult Function(ApiErrorModel apiErrorModel)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(NoResult value) noResult,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(NoResult value)? noResult,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(NoResult value)? noResult,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  const factory SearchSuccess(final List<Doctors>? doctors) =
      _$SearchSuccessImpl;

  List<Doctors>? get doctors;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoResultImplCopyWith<$Res> {
  factory _$$NoResultImplCopyWith(
          _$NoResultImpl value, $Res Function(_$NoResultImpl) then) =
      __$$NoResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$NoResultImpl>
    implements _$$NoResultImplCopyWith<$Res> {
  __$$NoResultImplCopyWithImpl(
      _$NoResultImpl _value, $Res Function(_$NoResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoResultImpl implements NoResult {
  const _$NoResultImpl();

  @override
  String toString() {
    return 'SearchState.noResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoResultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors>? doctors) searchSuccess,
    required TResult Function() noResult,
    required TResult Function(ApiErrorModel apiErrorModel) searchFailure,
  }) {
    return noResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors>? doctors)? searchSuccess,
    TResult? Function()? noResult,
    TResult? Function(ApiErrorModel apiErrorModel)? searchFailure,
  }) {
    return noResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors>? doctors)? searchSuccess,
    TResult Function()? noResult,
    TResult Function(ApiErrorModel apiErrorModel)? searchFailure,
    required TResult orElse(),
  }) {
    if (noResult != null) {
      return noResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(NoResult value) noResult,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return noResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(NoResult value)? noResult,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return noResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(NoResult value)? noResult,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (noResult != null) {
      return noResult(this);
    }
    return orElse();
  }
}

abstract class NoResult implements SearchState {
  const factory NoResult() = _$NoResultImpl;
}

/// @nodoc
abstract class _$$SearchFailureImplCopyWith<$Res> {
  factory _$$SearchFailureImplCopyWith(
          _$SearchFailureImpl value, $Res Function(_$SearchFailureImpl) then) =
      __$$SearchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SearchFailureImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchFailureImpl>
    implements _$$SearchFailureImplCopyWith<$Res> {
  __$$SearchFailureImplCopyWithImpl(
      _$SearchFailureImpl _value, $Res Function(_$SearchFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SearchFailureImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SearchFailureImpl implements SearchFailure {
  const _$SearchFailureImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SearchState.searchFailure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFailureImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFailureImplCopyWith<_$SearchFailureImpl> get copyWith =>
      __$$SearchFailureImplCopyWithImpl<_$SearchFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors>? doctors) searchSuccess,
    required TResult Function() noResult,
    required TResult Function(ApiErrorModel apiErrorModel) searchFailure,
  }) {
    return searchFailure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors>? doctors)? searchSuccess,
    TResult? Function()? noResult,
    TResult? Function(ApiErrorModel apiErrorModel)? searchFailure,
  }) {
    return searchFailure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors>? doctors)? searchSuccess,
    TResult Function()? noResult,
    TResult Function(ApiErrorModel apiErrorModel)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(NoResult value) noResult,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(NoResult value)? noResult,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return searchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(NoResult value)? noResult,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class SearchFailure implements SearchState {
  const factory SearchFailure(final ApiErrorModel apiErrorModel) =
      _$SearchFailureImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFailureImplCopyWith<_$SearchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
