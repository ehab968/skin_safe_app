// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_doctors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopDoctorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TopDoctorsLoading value) loading,
    required TResult Function(TopDoctorsSuccess value) success,
    required TResult Function(TopDoctorsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TopDoctorsLoading value)? loading,
    TResult? Function(TopDoctorsSuccess value)? success,
    TResult? Function(TopDoctorsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TopDoctorsLoading value)? loading,
    TResult Function(TopDoctorsSuccess value)? success,
    TResult Function(TopDoctorsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopDoctorsStateCopyWith<$Res> {
  factory $TopDoctorsStateCopyWith(
          TopDoctorsState value, $Res Function(TopDoctorsState) then) =
      _$TopDoctorsStateCopyWithImpl<$Res, TopDoctorsState>;
}

/// @nodoc
class _$TopDoctorsStateCopyWithImpl<$Res, $Val extends TopDoctorsState>
    implements $TopDoctorsStateCopyWith<$Res> {
  _$TopDoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopDoctorsState
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
    extends _$TopDoctorsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TopDoctorsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(TopDoctorsLoading value) loading,
    required TResult Function(TopDoctorsSuccess value) success,
    required TResult Function(TopDoctorsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TopDoctorsLoading value)? loading,
    TResult? Function(TopDoctorsSuccess value)? success,
    TResult? Function(TopDoctorsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TopDoctorsLoading value)? loading,
    TResult Function(TopDoctorsSuccess value)? success,
    TResult Function(TopDoctorsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TopDoctorsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TopDoctorsLoadingImplCopyWith<$Res> {
  factory _$$TopDoctorsLoadingImplCopyWith(_$TopDoctorsLoadingImpl value,
          $Res Function(_$TopDoctorsLoadingImpl) then) =
      __$$TopDoctorsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopDoctorsLoadingImplCopyWithImpl<$Res>
    extends _$TopDoctorsStateCopyWithImpl<$Res, _$TopDoctorsLoadingImpl>
    implements _$$TopDoctorsLoadingImplCopyWith<$Res> {
  __$$TopDoctorsLoadingImplCopyWithImpl(_$TopDoctorsLoadingImpl _value,
      $Res Function(_$TopDoctorsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopDoctorsLoadingImpl implements TopDoctorsLoading {
  const _$TopDoctorsLoadingImpl();

  @override
  String toString() {
    return 'TopDoctorsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopDoctorsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(TopDoctorsLoading value) loading,
    required TResult Function(TopDoctorsSuccess value) success,
    required TResult Function(TopDoctorsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TopDoctorsLoading value)? loading,
    TResult? Function(TopDoctorsSuccess value)? success,
    TResult? Function(TopDoctorsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TopDoctorsLoading value)? loading,
    TResult Function(TopDoctorsSuccess value)? success,
    TResult Function(TopDoctorsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopDoctorsLoading implements TopDoctorsState {
  const factory TopDoctorsLoading() = _$TopDoctorsLoadingImpl;
}

/// @nodoc
abstract class _$$TopDoctorsSuccessImplCopyWith<$Res> {
  factory _$$TopDoctorsSuccessImplCopyWith(_$TopDoctorsSuccessImpl value,
          $Res Function(_$TopDoctorsSuccessImpl) then) =
      __$$TopDoctorsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TopDoctorsModel> doctors});
}

/// @nodoc
class __$$TopDoctorsSuccessImplCopyWithImpl<$Res>
    extends _$TopDoctorsStateCopyWithImpl<$Res, _$TopDoctorsSuccessImpl>
    implements _$$TopDoctorsSuccessImplCopyWith<$Res> {
  __$$TopDoctorsSuccessImplCopyWithImpl(_$TopDoctorsSuccessImpl _value,
      $Res Function(_$TopDoctorsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$TopDoctorsSuccessImpl(
      null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<TopDoctorsModel>,
    ));
  }
}

/// @nodoc

class _$TopDoctorsSuccessImpl implements TopDoctorsSuccess {
  const _$TopDoctorsSuccessImpl(final List<TopDoctorsModel> doctors)
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
    return 'TopDoctorsState.success(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopDoctorsSuccessImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopDoctorsSuccessImplCopyWith<_$TopDoctorsSuccessImpl> get copyWith =>
      __$$TopDoctorsSuccessImplCopyWithImpl<_$TopDoctorsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TopDoctorsLoading value) loading,
    required TResult Function(TopDoctorsSuccess value) success,
    required TResult Function(TopDoctorsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TopDoctorsLoading value)? loading,
    TResult? Function(TopDoctorsSuccess value)? success,
    TResult? Function(TopDoctorsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TopDoctorsLoading value)? loading,
    TResult Function(TopDoctorsSuccess value)? success,
    TResult Function(TopDoctorsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TopDoctorsSuccess implements TopDoctorsState {
  const factory TopDoctorsSuccess(final List<TopDoctorsModel> doctors) =
      _$TopDoctorsSuccessImpl;

  List<TopDoctorsModel> get doctors;

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopDoctorsSuccessImplCopyWith<_$TopDoctorsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopDoctorsErrorImplCopyWith<$Res> {
  factory _$$TopDoctorsErrorImplCopyWith(_$TopDoctorsErrorImpl value,
          $Res Function(_$TopDoctorsErrorImpl) then) =
      __$$TopDoctorsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$TopDoctorsErrorImplCopyWithImpl<$Res>
    extends _$TopDoctorsStateCopyWithImpl<$Res, _$TopDoctorsErrorImpl>
    implements _$$TopDoctorsErrorImplCopyWith<$Res> {
  __$$TopDoctorsErrorImplCopyWithImpl(
      _$TopDoctorsErrorImpl _value, $Res Function(_$TopDoctorsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$TopDoctorsErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$TopDoctorsErrorImpl implements TopDoctorsError {
  const _$TopDoctorsErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'TopDoctorsState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopDoctorsErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopDoctorsErrorImplCopyWith<_$TopDoctorsErrorImpl> get copyWith =>
      __$$TopDoctorsErrorImplCopyWithImpl<_$TopDoctorsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopDoctorsModel> doctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopDoctorsModel> doctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopDoctorsModel> doctors)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(TopDoctorsLoading value) loading,
    required TResult Function(TopDoctorsSuccess value) success,
    required TResult Function(TopDoctorsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TopDoctorsLoading value)? loading,
    TResult? Function(TopDoctorsSuccess value)? success,
    TResult? Function(TopDoctorsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TopDoctorsLoading value)? loading,
    TResult Function(TopDoctorsSuccess value)? success,
    TResult Function(TopDoctorsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopDoctorsError implements TopDoctorsState {
  const factory TopDoctorsError(final ApiErrorModel apiErrorModel) =
      _$TopDoctorsErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of TopDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopDoctorsErrorImplCopyWith<_$TopDoctorsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
