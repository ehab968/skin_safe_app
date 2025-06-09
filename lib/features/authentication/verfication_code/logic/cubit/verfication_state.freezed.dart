// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verfication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerficationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verficationLoading,
    required TResult Function(T data) verficationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) verficationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verficationLoading,
    TResult? Function(T data)? verficationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? verficationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verficationLoading,
    TResult Function(T data)? verficationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? verficationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerficationLoading<T> value) verficationLoading,
    required TResult Function(VerficationSuccess<T> value) verficationSuccess,
    required TResult Function(VerficationError<T> value) verficationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerficationLoading<T> value)? verficationLoading,
    TResult? Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult? Function(VerficationError<T> value)? verficationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerficationLoading<T> value)? verficationLoading,
    TResult Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult Function(VerficationError<T> value)? verficationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerficationStateCopyWith<T, $Res> {
  factory $VerficationStateCopyWith(
          VerficationState<T> value, $Res Function(VerficationState<T>) then) =
      _$VerficationStateCopyWithImpl<T, $Res, VerficationState<T>>;
}

/// @nodoc
class _$VerficationStateCopyWithImpl<T, $Res, $Val extends VerficationState<T>>
    implements $VerficationStateCopyWith<T, $Res> {
  _$VerficationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerficationState
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
    extends _$VerficationStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VerficationState<$T>.initial()';
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
    required TResult Function() verficationLoading,
    required TResult Function(T data) verficationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) verficationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verficationLoading,
    TResult? Function(T data)? verficationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? verficationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verficationLoading,
    TResult Function(T data)? verficationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? verficationError,
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
    required TResult Function(VerficationLoading<T> value) verficationLoading,
    required TResult Function(VerficationSuccess<T> value) verficationSuccess,
    required TResult Function(VerficationError<T> value) verficationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerficationLoading<T> value)? verficationLoading,
    TResult? Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult? Function(VerficationError<T> value)? verficationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerficationLoading<T> value)? verficationLoading,
    TResult Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult Function(VerficationError<T> value)? verficationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements VerficationState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$VerficationLoadingImplCopyWith<T, $Res> {
  factory _$$VerficationLoadingImplCopyWith(_$VerficationLoadingImpl<T> value,
          $Res Function(_$VerficationLoadingImpl<T>) then) =
      __$$VerficationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$VerficationLoadingImplCopyWithImpl<T, $Res>
    extends _$VerficationStateCopyWithImpl<T, $Res, _$VerficationLoadingImpl<T>>
    implements _$$VerficationLoadingImplCopyWith<T, $Res> {
  __$$VerficationLoadingImplCopyWithImpl(_$VerficationLoadingImpl<T> _value,
      $Res Function(_$VerficationLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerficationLoadingImpl<T> implements VerficationLoading<T> {
  const _$VerficationLoadingImpl();

  @override
  String toString() {
    return 'VerficationState<$T>.verficationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerficationLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verficationLoading,
    required TResult Function(T data) verficationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) verficationError,
  }) {
    return verficationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verficationLoading,
    TResult? Function(T data)? verficationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? verficationError,
  }) {
    return verficationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verficationLoading,
    TResult Function(T data)? verficationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? verficationError,
    required TResult orElse(),
  }) {
    if (verficationLoading != null) {
      return verficationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerficationLoading<T> value) verficationLoading,
    required TResult Function(VerficationSuccess<T> value) verficationSuccess,
    required TResult Function(VerficationError<T> value) verficationError,
  }) {
    return verficationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerficationLoading<T> value)? verficationLoading,
    TResult? Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult? Function(VerficationError<T> value)? verficationError,
  }) {
    return verficationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerficationLoading<T> value)? verficationLoading,
    TResult Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult Function(VerficationError<T> value)? verficationError,
    required TResult orElse(),
  }) {
    if (verficationLoading != null) {
      return verficationLoading(this);
    }
    return orElse();
  }
}

abstract class VerficationLoading<T> implements VerficationState<T> {
  const factory VerficationLoading() = _$VerficationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$VerficationSuccessImplCopyWith<T, $Res> {
  factory _$$VerficationSuccessImplCopyWith(_$VerficationSuccessImpl<T> value,
          $Res Function(_$VerficationSuccessImpl<T>) then) =
      __$$VerficationSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$VerficationSuccessImplCopyWithImpl<T, $Res>
    extends _$VerficationStateCopyWithImpl<T, $Res, _$VerficationSuccessImpl<T>>
    implements _$$VerficationSuccessImplCopyWith<T, $Res> {
  __$$VerficationSuccessImplCopyWithImpl(_$VerficationSuccessImpl<T> _value,
      $Res Function(_$VerficationSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$VerficationSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$VerficationSuccessImpl<T> implements VerficationSuccess<T> {
  const _$VerficationSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'VerficationState<$T>.verficationSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerficationSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerficationSuccessImplCopyWith<T, _$VerficationSuccessImpl<T>>
      get copyWith => __$$VerficationSuccessImplCopyWithImpl<T,
          _$VerficationSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verficationLoading,
    required TResult Function(T data) verficationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) verficationError,
  }) {
    return verficationSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verficationLoading,
    TResult? Function(T data)? verficationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? verficationError,
  }) {
    return verficationSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verficationLoading,
    TResult Function(T data)? verficationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? verficationError,
    required TResult orElse(),
  }) {
    if (verficationSuccess != null) {
      return verficationSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerficationLoading<T> value) verficationLoading,
    required TResult Function(VerficationSuccess<T> value) verficationSuccess,
    required TResult Function(VerficationError<T> value) verficationError,
  }) {
    return verficationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerficationLoading<T> value)? verficationLoading,
    TResult? Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult? Function(VerficationError<T> value)? verficationError,
  }) {
    return verficationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerficationLoading<T> value)? verficationLoading,
    TResult Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult Function(VerficationError<T> value)? verficationError,
    required TResult orElse(),
  }) {
    if (verficationSuccess != null) {
      return verficationSuccess(this);
    }
    return orElse();
  }
}

abstract class VerficationSuccess<T> implements VerficationState<T> {
  const factory VerficationSuccess(final T data) = _$VerficationSuccessImpl<T>;

  T get data;

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerficationSuccessImplCopyWith<T, _$VerficationSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerficationErrorImplCopyWith<T, $Res> {
  factory _$$VerficationErrorImplCopyWith(_$VerficationErrorImpl<T> value,
          $Res Function(_$VerficationErrorImpl<T>) then) =
      __$$VerficationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$VerficationErrorImplCopyWithImpl<T, $Res>
    extends _$VerficationStateCopyWithImpl<T, $Res, _$VerficationErrorImpl<T>>
    implements _$$VerficationErrorImplCopyWith<T, $Res> {
  __$$VerficationErrorImplCopyWithImpl(_$VerficationErrorImpl<T> _value,
      $Res Function(_$VerficationErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$VerficationErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$VerficationErrorImpl<T> implements VerficationError<T> {
  const _$VerficationErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'VerficationState<$T>.verficationError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerficationErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerficationErrorImplCopyWith<T, _$VerficationErrorImpl<T>> get copyWith =>
      __$$VerficationErrorImplCopyWithImpl<T, _$VerficationErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verficationLoading,
    required TResult Function(T data) verficationSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) verficationError,
  }) {
    return verficationError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verficationLoading,
    TResult? Function(T data)? verficationSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? verficationError,
  }) {
    return verficationError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verficationLoading,
    TResult Function(T data)? verficationSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? verficationError,
    required TResult orElse(),
  }) {
    if (verficationError != null) {
      return verficationError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(VerficationLoading<T> value) verficationLoading,
    required TResult Function(VerficationSuccess<T> value) verficationSuccess,
    required TResult Function(VerficationError<T> value) verficationError,
  }) {
    return verficationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(VerficationLoading<T> value)? verficationLoading,
    TResult? Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult? Function(VerficationError<T> value)? verficationError,
  }) {
    return verficationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(VerficationLoading<T> value)? verficationLoading,
    TResult Function(VerficationSuccess<T> value)? verficationSuccess,
    TResult Function(VerficationError<T> value)? verficationError,
    required TResult orElse(),
  }) {
    if (verficationError != null) {
      return verficationError(this);
    }
    return orElse();
  }
}

abstract class VerficationError<T> implements VerficationState<T> {
  const factory VerficationError(final ApiErrorModel apiErrorModel) =
      _$VerficationErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of VerficationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerficationErrorImplCopyWith<T, _$VerficationErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
