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
mixin _$SearchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) searchSuccess,
    required TResult Function(List<TopDoctorsModel> recentDoctors)
        recentSearchSuccess,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult? Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(RecentSearchSuccess<T> value) recentSearchSuccess,
    required TResult Function(Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult? Function(Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) searchSuccess,
    required TResult Function(List<TopDoctorsModel> recentDoctors)
        recentSearchSuccess,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult? Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(RecentSearchSuccess<T> value) recentSearchSuccess,
    required TResult Function(Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult? Function(Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SearchState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) searchSuccess,
    required TResult Function(List<TopDoctorsModel> recentDoctors)
        recentSearchSuccess,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult? Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(RecentSearchSuccess<T> value) recentSearchSuccess,
    required TResult Function(Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult? Function(Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements SearchState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<T, $Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl<T> value,
          $Res Function(_$SearchSuccessImpl<T>) then) =
      __$$SearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<TopDoctorsModel> doctors});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchSuccessImpl<T>>
    implements _$$SearchSuccessImplCopyWith<T, $Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl<T> _value,
      $Res Function(_$SearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$SearchSuccessImpl<T>(
      null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<TopDoctorsModel>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl<T> implements SearchSuccess<T> {
  const _$SearchSuccessImpl(final List<TopDoctorsModel> doctors)
      : _doctors = doctors;

  final List<TopDoctorsModel> _doctors;
  @override
  List<TopDoctorsModel> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'SearchState<$T>.searchSuccess(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl<T> &&
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
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<T, _$SearchSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) searchSuccess,
    required TResult Function(List<TopDoctorsModel> recentDoctors)
        recentSearchSuccess,
    required TResult Function(String error) error,
  }) {
    return searchSuccess(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult? Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult? Function(String error)? error,
  }) {
    return searchSuccess?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(RecentSearchSuccess<T> value) recentSearchSuccess,
    required TResult Function(Error<T> value) error,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult? Function(Error<T> value)? error,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess<T> implements SearchState<T> {
  const factory SearchSuccess(final List<TopDoctorsModel> doctors) =
      _$SearchSuccessImpl<T>;

  List<TopDoctorsModel> get doctors;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecentSearchSuccessImplCopyWith<T, $Res> {
  factory _$$RecentSearchSuccessImplCopyWith(_$RecentSearchSuccessImpl<T> value,
          $Res Function(_$RecentSearchSuccessImpl<T>) then) =
      __$$RecentSearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<TopDoctorsModel> recentDoctors});
}

/// @nodoc
class __$$RecentSearchSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$RecentSearchSuccessImpl<T>>
    implements _$$RecentSearchSuccessImplCopyWith<T, $Res> {
  __$$RecentSearchSuccessImplCopyWithImpl(_$RecentSearchSuccessImpl<T> _value,
      $Res Function(_$RecentSearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentDoctors = null,
  }) {
    return _then(_$RecentSearchSuccessImpl<T>(
      null == recentDoctors
          ? _value._recentDoctors
          : recentDoctors // ignore: cast_nullable_to_non_nullable
              as List<TopDoctorsModel>,
    ));
  }
}

/// @nodoc

class _$RecentSearchSuccessImpl<T> implements RecentSearchSuccess<T> {
  const _$RecentSearchSuccessImpl(final List<TopDoctorsModel> recentDoctors)
      : _recentDoctors = recentDoctors;

  final List<TopDoctorsModel> _recentDoctors;
  @override
  List<TopDoctorsModel> get recentDoctors {
    if (_recentDoctors is EqualUnmodifiableListView) return _recentDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentDoctors);
  }

  @override
  String toString() {
    return 'SearchState<$T>.recentSearchSuccess(recentDoctors: $recentDoctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSearchSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._recentDoctors, _recentDoctors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentDoctors));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSearchSuccessImplCopyWith<T, _$RecentSearchSuccessImpl<T>>
      get copyWith => __$$RecentSearchSuccessImplCopyWithImpl<T,
          _$RecentSearchSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) searchSuccess,
    required TResult Function(List<TopDoctorsModel> recentDoctors)
        recentSearchSuccess,
    required TResult Function(String error) error,
  }) {
    return recentSearchSuccess(recentDoctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult? Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult? Function(String error)? error,
  }) {
    return recentSearchSuccess?.call(recentDoctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (recentSearchSuccess != null) {
      return recentSearchSuccess(recentDoctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(RecentSearchSuccess<T> value) recentSearchSuccess,
    required TResult Function(Error<T> value) error,
  }) {
    return recentSearchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult? Function(Error<T> value)? error,
  }) {
    return recentSearchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (recentSearchSuccess != null) {
      return recentSearchSuccess(this);
    }
    return orElse();
  }
}

abstract class RecentSearchSuccess<T> implements SearchState<T> {
  const factory RecentSearchSuccess(final List<TopDoctorsModel> recentDoctors) =
      _$RecentSearchSuccessImpl<T>;

  List<TopDoctorsModel> get recentDoctors;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentSearchSuccessImplCopyWith<T, _$RecentSearchSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) searchSuccess,
    required TResult Function(List<TopDoctorsModel> recentDoctors)
        recentSearchSuccess,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult? Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? searchSuccess,
    TResult Function(List<TopDoctorsModel> recentDoctors)? recentSearchSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(RecentSearchSuccess<T> value) recentSearchSuccess,
    required TResult Function(Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult? Function(Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(RecentSearchSuccess<T> value)? recentSearchSuccess,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements SearchState<T> {
  const factory Error(final String error) = _$ErrorImpl<T>;

  String get error;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
