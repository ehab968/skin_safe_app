// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmation_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfirmationCodeState<T> {
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
    required TResult Function(ConfirmationCodeLoading<T> value) loading,
    required TResult Function(ConfirmationCodeSuccess<T> value) success,
    required TResult Function(ConfirmationCodeError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ConfirmationCodeLoading<T> value)? loading,
    TResult? Function(ConfirmationCodeSuccess<T> value)? success,
    TResult? Function(ConfirmationCodeError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ConfirmationCodeLoading<T> value)? loading,
    TResult Function(ConfirmationCodeSuccess<T> value)? success,
    TResult Function(ConfirmationCodeError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationCodeStateCopyWith<T, $Res> {
  factory $ConfirmationCodeStateCopyWith(ConfirmationCodeState<T> value,
          $Res Function(ConfirmationCodeState<T>) then) =
      _$ConfirmationCodeStateCopyWithImpl<T, $Res, ConfirmationCodeState<T>>;
}

/// @nodoc
class _$ConfirmationCodeStateCopyWithImpl<T, $Res,
        $Val extends ConfirmationCodeState<T>>
    implements $ConfirmationCodeStateCopyWith<T, $Res> {
  _$ConfirmationCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmationCodeState
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
    extends _$ConfirmationCodeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ConfirmationCodeState<$T>.initial()';
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
    required TResult Function(ConfirmationCodeLoading<T> value) loading,
    required TResult Function(ConfirmationCodeSuccess<T> value) success,
    required TResult Function(ConfirmationCodeError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ConfirmationCodeLoading<T> value)? loading,
    TResult? Function(ConfirmationCodeSuccess<T> value)? success,
    TResult? Function(ConfirmationCodeError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ConfirmationCodeLoading<T> value)? loading,
    TResult Function(ConfirmationCodeSuccess<T> value)? success,
    TResult Function(ConfirmationCodeError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ConfirmationCodeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ConfirmationCodeLoadingImplCopyWith<T, $Res> {
  factory _$$ConfirmationCodeLoadingImplCopyWith(
          _$ConfirmationCodeLoadingImpl<T> value,
          $Res Function(_$ConfirmationCodeLoadingImpl<T>) then) =
      __$$ConfirmationCodeLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ConfirmationCodeLoadingImplCopyWithImpl<T, $Res>
    extends _$ConfirmationCodeStateCopyWithImpl<T, $Res,
        _$ConfirmationCodeLoadingImpl<T>>
    implements _$$ConfirmationCodeLoadingImplCopyWith<T, $Res> {
  __$$ConfirmationCodeLoadingImplCopyWithImpl(
      _$ConfirmationCodeLoadingImpl<T> _value,
      $Res Function(_$ConfirmationCodeLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmationCodeLoadingImpl<T> implements ConfirmationCodeLoading<T> {
  const _$ConfirmationCodeLoadingImpl();

  @override
  String toString() {
    return 'ConfirmationCodeState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationCodeLoadingImpl<T>);
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
    required TResult Function(ConfirmationCodeLoading<T> value) loading,
    required TResult Function(ConfirmationCodeSuccess<T> value) success,
    required TResult Function(ConfirmationCodeError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ConfirmationCodeLoading<T> value)? loading,
    TResult? Function(ConfirmationCodeSuccess<T> value)? success,
    TResult? Function(ConfirmationCodeError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ConfirmationCodeLoading<T> value)? loading,
    TResult Function(ConfirmationCodeSuccess<T> value)? success,
    TResult Function(ConfirmationCodeError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConfirmationCodeLoading<T> implements ConfirmationCodeState<T> {
  const factory ConfirmationCodeLoading() = _$ConfirmationCodeLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ConfirmationCodeSuccessImplCopyWith<T, $Res> {
  factory _$$ConfirmationCodeSuccessImplCopyWith(
          _$ConfirmationCodeSuccessImpl<T> value,
          $Res Function(_$ConfirmationCodeSuccessImpl<T>) then) =
      __$$ConfirmationCodeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ConfirmationCodeSuccessImplCopyWithImpl<T, $Res>
    extends _$ConfirmationCodeStateCopyWithImpl<T, $Res,
        _$ConfirmationCodeSuccessImpl<T>>
    implements _$$ConfirmationCodeSuccessImplCopyWith<T, $Res> {
  __$$ConfirmationCodeSuccessImplCopyWithImpl(
      _$ConfirmationCodeSuccessImpl<T> _value,
      $Res Function(_$ConfirmationCodeSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ConfirmationCodeSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ConfirmationCodeSuccessImpl<T> implements ConfirmationCodeSuccess<T> {
  const _$ConfirmationCodeSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ConfirmationCodeState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationCodeSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmationCodeSuccessImplCopyWith<T, _$ConfirmationCodeSuccessImpl<T>>
      get copyWith => __$$ConfirmationCodeSuccessImplCopyWithImpl<T,
          _$ConfirmationCodeSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(ConfirmationCodeLoading<T> value) loading,
    required TResult Function(ConfirmationCodeSuccess<T> value) success,
    required TResult Function(ConfirmationCodeError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ConfirmationCodeLoading<T> value)? loading,
    TResult? Function(ConfirmationCodeSuccess<T> value)? success,
    TResult? Function(ConfirmationCodeError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ConfirmationCodeLoading<T> value)? loading,
    TResult Function(ConfirmationCodeSuccess<T> value)? success,
    TResult Function(ConfirmationCodeError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ConfirmationCodeSuccess<T> implements ConfirmationCodeState<T> {
  const factory ConfirmationCodeSuccess(final T data) =
      _$ConfirmationCodeSuccessImpl<T>;

  T get data;

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmationCodeSuccessImplCopyWith<T, _$ConfirmationCodeSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmationCodeErrorImplCopyWith<T, $Res> {
  factory _$$ConfirmationCodeErrorImplCopyWith(
          _$ConfirmationCodeErrorImpl<T> value,
          $Res Function(_$ConfirmationCodeErrorImpl<T>) then) =
      __$$ConfirmationCodeErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ConfirmationCodeErrorImplCopyWithImpl<T, $Res>
    extends _$ConfirmationCodeStateCopyWithImpl<T, $Res,
        _$ConfirmationCodeErrorImpl<T>>
    implements _$$ConfirmationCodeErrorImplCopyWith<T, $Res> {
  __$$ConfirmationCodeErrorImplCopyWithImpl(
      _$ConfirmationCodeErrorImpl<T> _value,
      $Res Function(_$ConfirmationCodeErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ConfirmationCodeErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ConfirmationCodeErrorImpl<T> implements ConfirmationCodeError<T> {
  const _$ConfirmationCodeErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ConfirmationCodeState<$T>.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationCodeErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmationCodeErrorImplCopyWith<T, _$ConfirmationCodeErrorImpl<T>>
      get copyWith => __$$ConfirmationCodeErrorImplCopyWithImpl<T,
          _$ConfirmationCodeErrorImpl<T>>(this, _$identity);

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
    required TResult Function(ConfirmationCodeLoading<T> value) loading,
    required TResult Function(ConfirmationCodeSuccess<T> value) success,
    required TResult Function(ConfirmationCodeError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ConfirmationCodeLoading<T> value)? loading,
    TResult? Function(ConfirmationCodeSuccess<T> value)? success,
    TResult? Function(ConfirmationCodeError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ConfirmationCodeLoading<T> value)? loading,
    TResult Function(ConfirmationCodeSuccess<T> value)? success,
    TResult Function(ConfirmationCodeError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ConfirmationCodeError<T> implements ConfirmationCodeState<T> {
  const factory ConfirmationCodeError(final ApiErrorModel apiErrorModel) =
      _$ConfirmationCodeErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of ConfirmationCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmationCodeErrorImplCopyWith<T, _$ConfirmationCodeErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
