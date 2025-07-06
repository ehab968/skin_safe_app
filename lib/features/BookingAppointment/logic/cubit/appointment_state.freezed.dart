// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentState<T> {
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
    required TResult Function(AppointmentLoading<T> value) loading,
    required TResult Function(AppointmentSuccess<T> value) success,
    required TResult Function(AppointmentError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentLoading<T> value)? loading,
    TResult? Function(AppointmentSuccess<T> value)? success,
    TResult? Function(AppointmentError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentLoading<T> value)? loading,
    TResult Function(AppointmentSuccess<T> value)? success,
    TResult Function(AppointmentError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<T, $Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState<T> value, $Res Function(AppointmentState<T>) then) =
      _$AppointmentStateCopyWithImpl<T, $Res, AppointmentState<T>>;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<T, $Res, $Val extends AppointmentState<T>>
    implements $AppointmentStateCopyWith<T, $Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentState
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
    extends _$AppointmentStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppointmentState<$T>.initial()';
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
    required TResult Function(AppointmentLoading<T> value) loading,
    required TResult Function(AppointmentSuccess<T> value) success,
    required TResult Function(AppointmentError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentLoading<T> value)? loading,
    TResult? Function(AppointmentSuccess<T> value)? success,
    TResult? Function(AppointmentError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentLoading<T> value)? loading,
    TResult Function(AppointmentSuccess<T> value)? success,
    TResult Function(AppointmentError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AppointmentState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$AppointmentLoadingImplCopyWith<T, $Res> {
  factory _$$AppointmentLoadingImplCopyWith(_$AppointmentLoadingImpl<T> value,
          $Res Function(_$AppointmentLoadingImpl<T>) then) =
      __$$AppointmentLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AppointmentLoadingImplCopyWithImpl<T, $Res>
    extends _$AppointmentStateCopyWithImpl<T, $Res, _$AppointmentLoadingImpl<T>>
    implements _$$AppointmentLoadingImplCopyWith<T, $Res> {
  __$$AppointmentLoadingImplCopyWithImpl(_$AppointmentLoadingImpl<T> _value,
      $Res Function(_$AppointmentLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppointmentLoadingImpl<T> implements AppointmentLoading<T> {
  const _$AppointmentLoadingImpl();

  @override
  String toString() {
    return 'AppointmentState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentLoadingImpl<T>);
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
    required TResult Function(AppointmentLoading<T> value) loading,
    required TResult Function(AppointmentSuccess<T> value) success,
    required TResult Function(AppointmentError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentLoading<T> value)? loading,
    TResult? Function(AppointmentSuccess<T> value)? success,
    TResult? Function(AppointmentError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentLoading<T> value)? loading,
    TResult Function(AppointmentSuccess<T> value)? success,
    TResult Function(AppointmentError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppointmentLoading<T> implements AppointmentState<T> {
  const factory AppointmentLoading() = _$AppointmentLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AppointmentSuccessImplCopyWith<T, $Res> {
  factory _$$AppointmentSuccessImplCopyWith(_$AppointmentSuccessImpl<T> value,
          $Res Function(_$AppointmentSuccessImpl<T>) then) =
      __$$AppointmentSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AppointmentSuccessImplCopyWithImpl<T, $Res>
    extends _$AppointmentStateCopyWithImpl<T, $Res, _$AppointmentSuccessImpl<T>>
    implements _$$AppointmentSuccessImplCopyWith<T, $Res> {
  __$$AppointmentSuccessImplCopyWithImpl(_$AppointmentSuccessImpl<T> _value,
      $Res Function(_$AppointmentSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AppointmentSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AppointmentSuccessImpl<T> implements AppointmentSuccess<T> {
  const _$AppointmentSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AppointmentState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentSuccessImplCopyWith<T, _$AppointmentSuccessImpl<T>>
      get copyWith => __$$AppointmentSuccessImplCopyWithImpl<T,
          _$AppointmentSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(AppointmentLoading<T> value) loading,
    required TResult Function(AppointmentSuccess<T> value) success,
    required TResult Function(AppointmentError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentLoading<T> value)? loading,
    TResult? Function(AppointmentSuccess<T> value)? success,
    TResult? Function(AppointmentError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentLoading<T> value)? loading,
    TResult Function(AppointmentSuccess<T> value)? success,
    TResult Function(AppointmentError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AppointmentSuccess<T> implements AppointmentState<T> {
  const factory AppointmentSuccess(final T data) = _$AppointmentSuccessImpl<T>;

  T get data;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentSuccessImplCopyWith<T, _$AppointmentSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppointmentErrorImplCopyWith<T, $Res> {
  factory _$$AppointmentErrorImplCopyWith(_$AppointmentErrorImpl<T> value,
          $Res Function(_$AppointmentErrorImpl<T>) then) =
      __$$AppointmentErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$AppointmentErrorImplCopyWithImpl<T, $Res>
    extends _$AppointmentStateCopyWithImpl<T, $Res, _$AppointmentErrorImpl<T>>
    implements _$$AppointmentErrorImplCopyWith<T, $Res> {
  __$$AppointmentErrorImplCopyWithImpl(_$AppointmentErrorImpl<T> _value,
      $Res Function(_$AppointmentErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$AppointmentErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$AppointmentErrorImpl<T> implements AppointmentError<T> {
  const _$AppointmentErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'AppointmentState<$T>.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentErrorImplCopyWith<T, _$AppointmentErrorImpl<T>> get copyWith =>
      __$$AppointmentErrorImplCopyWithImpl<T, _$AppointmentErrorImpl<T>>(
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
    required TResult Function(AppointmentLoading<T> value) loading,
    required TResult Function(AppointmentSuccess<T> value) success,
    required TResult Function(AppointmentError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(AppointmentLoading<T> value)? loading,
    TResult? Function(AppointmentSuccess<T> value)? success,
    TResult? Function(AppointmentError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(AppointmentLoading<T> value)? loading,
    TResult Function(AppointmentSuccess<T> value)? success,
    TResult Function(AppointmentError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppointmentError<T> implements AppointmentState<T> {
  const factory AppointmentError(final ApiErrorModel apiErrorModel) =
      _$AppointmentErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentErrorImplCopyWith<T, _$AppointmentErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
