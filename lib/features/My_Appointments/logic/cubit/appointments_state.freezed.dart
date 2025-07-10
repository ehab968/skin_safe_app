// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AppointmentsLoading<T> value) loading,
    required TResult Function(AppointmentsSuccess<T> value) success,
    required TResult Function(AppointmentsError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentsLoading<T> value)? loading,
    TResult? Function(AppointmentsSuccess<T> value)? success,
    TResult? Function(AppointmentsError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentsLoading<T> value)? loading,
    TResult Function(AppointmentsSuccess<T> value)? success,
    TResult Function(AppointmentsError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsStateCopyWith<T, $Res> {
  factory $AppointmentsStateCopyWith(AppointmentsState<T> value,
          $Res Function(AppointmentsState<T>) then) =
      _$AppointmentsStateCopyWithImpl<T, $Res, AppointmentsState<T>>;
}

/// @nodoc
class _$AppointmentsStateCopyWithImpl<T, $Res,
        $Val extends AppointmentsState<T>>
    implements $AppointmentsStateCopyWith<T, $Res> {
  _$AppointmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentsState
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
    extends _$AppointmentsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppointmentsState<$T>.initial()';
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
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
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
    required TResult Function(AppointmentsLoading<T> value) loading,
    required TResult Function(AppointmentsSuccess<T> value) success,
    required TResult Function(AppointmentsError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentsLoading<T> value)? loading,
    TResult? Function(AppointmentsSuccess<T> value)? success,
    TResult? Function(AppointmentsError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentsLoading<T> value)? loading,
    TResult Function(AppointmentsSuccess<T> value)? success,
    TResult Function(AppointmentsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AppointmentsState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$AppointmentsLoadingImplCopyWith<T, $Res> {
  factory _$$AppointmentsLoadingImplCopyWith(_$AppointmentsLoadingImpl<T> value,
          $Res Function(_$AppointmentsLoadingImpl<T>) then) =
      __$$AppointmentsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AppointmentsLoadingImplCopyWithImpl<T, $Res>
    extends _$AppointmentsStateCopyWithImpl<T, $Res,
        _$AppointmentsLoadingImpl<T>>
    implements _$$AppointmentsLoadingImplCopyWith<T, $Res> {
  __$$AppointmentsLoadingImplCopyWithImpl(_$AppointmentsLoadingImpl<T> _value,
      $Res Function(_$AppointmentsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppointmentsLoadingImpl<T> implements AppointmentsLoading<T> {
  const _$AppointmentsLoadingImpl();

  @override
  String toString() {
    return 'AppointmentsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
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
    required TResult Function(AppointmentsLoading<T> value) loading,
    required TResult Function(AppointmentsSuccess<T> value) success,
    required TResult Function(AppointmentsError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentsLoading<T> value)? loading,
    TResult? Function(AppointmentsSuccess<T> value)? success,
    TResult? Function(AppointmentsError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentsLoading<T> value)? loading,
    TResult Function(AppointmentsSuccess<T> value)? success,
    TResult Function(AppointmentsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppointmentsLoading<T> implements AppointmentsState<T> {
  const factory AppointmentsLoading() = _$AppointmentsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AppointmentsSuccessImplCopyWith<T, $Res> {
  factory _$$AppointmentsSuccessImplCopyWith(_$AppointmentsSuccessImpl<T> value,
          $Res Function(_$AppointmentsSuccessImpl<T>) then) =
      __$$AppointmentsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AppointmentsSuccessImplCopyWithImpl<T, $Res>
    extends _$AppointmentsStateCopyWithImpl<T, $Res,
        _$AppointmentsSuccessImpl<T>>
    implements _$$AppointmentsSuccessImplCopyWith<T, $Res> {
  __$$AppointmentsSuccessImplCopyWithImpl(_$AppointmentsSuccessImpl<T> _value,
      $Res Function(_$AppointmentsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AppointmentsSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AppointmentsSuccessImpl<T> implements AppointmentsSuccess<T> {
  const _$AppointmentsSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AppointmentsState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentsSuccessImplCopyWith<T, _$AppointmentsSuccessImpl<T>>
      get copyWith => __$$AppointmentsSuccessImplCopyWithImpl<T,
          _$AppointmentsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AppointmentsLoading<T> value) loading,
    required TResult Function(AppointmentsSuccess<T> value) success,
    required TResult Function(AppointmentsError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentsLoading<T> value)? loading,
    TResult? Function(AppointmentsSuccess<T> value)? success,
    TResult? Function(AppointmentsError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentsLoading<T> value)? loading,
    TResult Function(AppointmentsSuccess<T> value)? success,
    TResult Function(AppointmentsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AppointmentsSuccess<T> implements AppointmentsState<T> {
  const factory AppointmentsSuccess(final T data) =
      _$AppointmentsSuccessImpl<T>;

  T get data;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentsSuccessImplCopyWith<T, _$AppointmentsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentsErrorImplCopyWith<T, $Res> {
  factory _$$AppointmentsErrorImplCopyWith(_$AppointmentsErrorImpl<T> value,
          $Res Function(_$AppointmentsErrorImpl<T>) then) =
      __$$AppointmentsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$AppointmentsErrorImplCopyWithImpl<T, $Res>
    extends _$AppointmentsStateCopyWithImpl<T, $Res, _$AppointmentsErrorImpl<T>>
    implements _$$AppointmentsErrorImplCopyWith<T, $Res> {
  __$$AppointmentsErrorImplCopyWithImpl(_$AppointmentsErrorImpl<T> _value,
      $Res Function(_$AppointmentsErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$AppointmentsErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$AppointmentsErrorImpl<T> implements AppointmentsError<T> {
  const _$AppointmentsErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'AppointmentsState<$T>.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentsErrorImplCopyWith<T, _$AppointmentsErrorImpl<T>>
      get copyWith =>
          __$$AppointmentsErrorImplCopyWithImpl<T, _$AppointmentsErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(AppointmentsLoading<T> value) loading,
    required TResult Function(AppointmentsSuccess<T> value) success,
    required TResult Function(AppointmentsError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentsLoading<T> value)? loading,
    TResult? Function(AppointmentsSuccess<T> value)? success,
    TResult? Function(AppointmentsError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentsLoading<T> value)? loading,
    TResult Function(AppointmentsSuccess<T> value)? success,
    TResult Function(AppointmentsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppointmentsError<T> implements AppointmentsState<T> {
  const factory AppointmentsError(final ApiErrorModel apiErrorModel) =
      _$AppointmentsErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of AppointmentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentsErrorImplCopyWith<T, _$AppointmentsErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
