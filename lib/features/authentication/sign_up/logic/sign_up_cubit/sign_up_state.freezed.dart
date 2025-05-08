// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUPLoading,
    required TResult Function(T data) signUPSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUPError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUPLoading,
    TResult? Function(T data)? signUPSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUPError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUPLoading,
    TResult Function(T data)? signUPSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUPError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(signUpLoading<T> value) signUPLoading,
    required TResult Function(SignUpSuccess<T> value) signUPSuccess,
    required TResult Function(SignUpError<T> value) signUPError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(signUpLoading<T> value)? signUPLoading,
    TResult? Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult? Function(SignUpError<T> value)? signUPError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(signUpLoading<T> value)? signUPLoading,
    TResult Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult Function(SignUpError<T> value)? signUPError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<T, $Res> {
  factory $SignUpStateCopyWith(
          SignUpState<T> value, $Res Function(SignUpState<T>) then) =
      _$SignUpStateCopyWithImpl<T, $Res, SignUpState<T>>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<T, $Res, $Val extends SignUpState<T>>
    implements $SignUpStateCopyWith<T, $Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
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
    extends _$SignUpStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.initial()';
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
    required TResult Function() signUPLoading,
    required TResult Function(T data) signUPSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUPError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUPLoading,
    TResult? Function(T data)? signUPSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUPError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUPLoading,
    TResult Function(T data)? signUPSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUPError,
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
    required TResult Function(signUpLoading<T> value) signUPLoading,
    required TResult Function(SignUpSuccess<T> value) signUPSuccess,
    required TResult Function(SignUpError<T> value) signUPError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(signUpLoading<T> value)? signUPLoading,
    TResult? Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult? Function(SignUpError<T> value)? signUPError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(signUpLoading<T> value)? signUPLoading,
    TResult Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult Function(SignUpError<T> value)? signUPError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignUpState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$signUpLoadingImplCopyWith<T, $Res> {
  factory _$$signUpLoadingImplCopyWith(_$signUpLoadingImpl<T> value,
          $Res Function(_$signUpLoadingImpl<T>) then) =
      __$$signUpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$signUpLoadingImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$signUpLoadingImpl<T>>
    implements _$$signUpLoadingImplCopyWith<T, $Res> {
  __$$signUpLoadingImplCopyWithImpl(_$signUpLoadingImpl<T> _value,
      $Res Function(_$signUpLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$signUpLoadingImpl<T> implements signUpLoading<T> {
  const _$signUpLoadingImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.signUPLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signUpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUPLoading,
    required TResult Function(T data) signUPSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUPError,
  }) {
    return signUPLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUPLoading,
    TResult? Function(T data)? signUPSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUPError,
  }) {
    return signUPLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUPLoading,
    TResult Function(T data)? signUPSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUPError,
    required TResult orElse(),
  }) {
    if (signUPLoading != null) {
      return signUPLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(signUpLoading<T> value) signUPLoading,
    required TResult Function(SignUpSuccess<T> value) signUPSuccess,
    required TResult Function(SignUpError<T> value) signUPError,
  }) {
    return signUPLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(signUpLoading<T> value)? signUPLoading,
    TResult? Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult? Function(SignUpError<T> value)? signUPError,
  }) {
    return signUPLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(signUpLoading<T> value)? signUPLoading,
    TResult Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult Function(SignUpError<T> value)? signUPError,
    required TResult orElse(),
  }) {
    if (signUPLoading != null) {
      return signUPLoading(this);
    }
    return orElse();
  }
}

abstract class signUpLoading<T> implements SignUpState<T> {
  const factory signUpLoading() = _$signUpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<T, $Res> {
  factory _$$SignUpSuccessImplCopyWith(_$SignUpSuccessImpl<T> value,
          $Res Function(_$SignUpSuccessImpl<T>) then) =
      __$$SignUpSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpSuccessImpl<T>>
    implements _$$SignUpSuccessImplCopyWith<T, $Res> {
  __$$SignUpSuccessImplCopyWithImpl(_$SignUpSuccessImpl<T> _value,
      $Res Function(_$SignUpSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignUpSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessImpl<T> implements SignUpSuccess<T> {
  const _$SignUpSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpState<$T>.signUPSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<T, _$SignUpSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUPLoading,
    required TResult Function(T data) signUPSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUPError,
  }) {
    return signUPSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUPLoading,
    TResult? Function(T data)? signUPSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUPError,
  }) {
    return signUPSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUPLoading,
    TResult Function(T data)? signUPSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUPError,
    required TResult orElse(),
  }) {
    if (signUPSuccess != null) {
      return signUPSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(signUpLoading<T> value) signUPLoading,
    required TResult Function(SignUpSuccess<T> value) signUPSuccess,
    required TResult Function(SignUpError<T> value) signUPError,
  }) {
    return signUPSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(signUpLoading<T> value)? signUPLoading,
    TResult? Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult? Function(SignUpError<T> value)? signUPError,
  }) {
    return signUPSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(signUpLoading<T> value)? signUPLoading,
    TResult Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult Function(SignUpError<T> value)? signUPError,
    required TResult orElse(),
  }) {
    if (signUPSuccess != null) {
      return signUPSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess<T> implements SignUpState<T> {
  const factory SignUpSuccess(final T data) = _$SignUpSuccessImpl<T>;

  T get data;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpErrorImplCopyWith<T, $Res> {
  factory _$$SignUpErrorImplCopyWith(_$SignUpErrorImpl<T> value,
          $Res Function(_$SignUpErrorImpl<T>) then) =
      __$$SignUpErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignUpErrorImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpErrorImpl<T>>
    implements _$$SignUpErrorImplCopyWith<T, $Res> {
  __$$SignUpErrorImplCopyWithImpl(
      _$SignUpErrorImpl<T> _value, $Res Function(_$SignUpErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SignUpErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SignUpErrorImpl<T> implements SignUpError<T> {
  const _$SignUpErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignUpState<$T>.signUPError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorImplCopyWith<T, _$SignUpErrorImpl<T>> get copyWith =>
      __$$SignUpErrorImplCopyWithImpl<T, _$SignUpErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUPLoading,
    required TResult Function(T data) signUPSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signUPError,
  }) {
    return signUPError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUPLoading,
    TResult? Function(T data)? signUPSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signUPError,
  }) {
    return signUPError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUPLoading,
    TResult Function(T data)? signUPSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signUPError,
    required TResult orElse(),
  }) {
    if (signUPError != null) {
      return signUPError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(signUpLoading<T> value) signUPLoading,
    required TResult Function(SignUpSuccess<T> value) signUPSuccess,
    required TResult Function(SignUpError<T> value) signUPError,
  }) {
    return signUPError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(signUpLoading<T> value)? signUPLoading,
    TResult? Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult? Function(SignUpError<T> value)? signUPError,
  }) {
    return signUPError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(signUpLoading<T> value)? signUPLoading,
    TResult Function(SignUpSuccess<T> value)? signUPSuccess,
    TResult Function(SignUpError<T> value)? signUPError,
    required TResult orElse(),
  }) {
    if (signUPError != null) {
      return signUPError(this);
    }
    return orElse();
  }
}

abstract class SignUpError<T> implements SignUpState<T> {
  const factory SignUpError(final ApiErrorModel apiErrorModel) =
      _$SignUpErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpErrorImplCopyWith<T, _$SignUpErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
