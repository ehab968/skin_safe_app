// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReportResponse> reports) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReportResponse> reports)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReportResponse> reports)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ReportLoading value) loading,
    required TResult Function(ReportSuccess value) success,
    required TResult Function(ReportError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReportLoading value)? loading,
    TResult? Function(ReportSuccess value)? success,
    TResult? Function(ReportError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReportLoading value)? loading,
    TResult Function(ReportSuccess value)? success,
    TResult Function(ReportError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReportStateCopyWith<$Res> {
  factory $UserReportStateCopyWith(
          UserReportState value, $Res Function(UserReportState) then) =
      _$UserReportStateCopyWithImpl<$Res, UserReportState>;
}

/// @nodoc
class _$UserReportStateCopyWithImpl<$Res, $Val extends UserReportState>
    implements $UserReportStateCopyWith<$Res> {
  _$UserReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReportState
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
    extends _$UserReportStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserReportState.initial()';
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
    required TResult Function(List<UserReportResponse> reports) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReportResponse> reports)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReportResponse> reports)? success,
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
    required TResult Function(ReportLoading value) loading,
    required TResult Function(ReportSuccess value) success,
    required TResult Function(ReportError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReportLoading value)? loading,
    TResult? Function(ReportSuccess value)? success,
    TResult? Function(ReportError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReportLoading value)? loading,
    TResult Function(ReportSuccess value)? success,
    TResult Function(ReportError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserReportState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReportLoadingImplCopyWith<$Res> {
  factory _$$ReportLoadingImplCopyWith(
          _$ReportLoadingImpl value, $Res Function(_$ReportLoadingImpl) then) =
      __$$ReportLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReportLoadingImplCopyWithImpl<$Res>
    extends _$UserReportStateCopyWithImpl<$Res, _$ReportLoadingImpl>
    implements _$$ReportLoadingImplCopyWith<$Res> {
  __$$ReportLoadingImplCopyWithImpl(
      _$ReportLoadingImpl _value, $Res Function(_$ReportLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReportLoadingImpl implements ReportLoading {
  const _$ReportLoadingImpl();

  @override
  String toString() {
    return 'UserReportState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReportLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReportResponse> reports) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReportResponse> reports)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReportResponse> reports)? success,
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
    required TResult Function(ReportLoading value) loading,
    required TResult Function(ReportSuccess value) success,
    required TResult Function(ReportError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReportLoading value)? loading,
    TResult? Function(ReportSuccess value)? success,
    TResult? Function(ReportError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReportLoading value)? loading,
    TResult Function(ReportSuccess value)? success,
    TResult Function(ReportError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReportLoading implements UserReportState {
  const factory ReportLoading() = _$ReportLoadingImpl;
}

/// @nodoc
abstract class _$$ReportSuccessImplCopyWith<$Res> {
  factory _$$ReportSuccessImplCopyWith(
          _$ReportSuccessImpl value, $Res Function(_$ReportSuccessImpl) then) =
      __$$ReportSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserReportResponse> reports});
}

/// @nodoc
class __$$ReportSuccessImplCopyWithImpl<$Res>
    extends _$UserReportStateCopyWithImpl<$Res, _$ReportSuccessImpl>
    implements _$$ReportSuccessImplCopyWith<$Res> {
  __$$ReportSuccessImplCopyWithImpl(
      _$ReportSuccessImpl _value, $Res Function(_$ReportSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
  }) {
    return _then(_$ReportSuccessImpl(
      null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<UserReportResponse>,
    ));
  }
}

/// @nodoc

class _$ReportSuccessImpl implements ReportSuccess {
  const _$ReportSuccessImpl(final List<UserReportResponse> reports)
      : _reports = reports;

  final List<UserReportResponse> _reports;
  @override
  List<UserReportResponse> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'UserReportState.success(reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportSuccessImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reports));

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportSuccessImplCopyWith<_$ReportSuccessImpl> get copyWith =>
      __$$ReportSuccessImplCopyWithImpl<_$ReportSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReportResponse> reports) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(reports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReportResponse> reports)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(reports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReportResponse> reports)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(reports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ReportLoading value) loading,
    required TResult Function(ReportSuccess value) success,
    required TResult Function(ReportError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReportLoading value)? loading,
    TResult? Function(ReportSuccess value)? success,
    TResult? Function(ReportError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReportLoading value)? loading,
    TResult Function(ReportSuccess value)? success,
    TResult Function(ReportError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReportSuccess implements UserReportState {
  const factory ReportSuccess(final List<UserReportResponse> reports) =
      _$ReportSuccessImpl;

  List<UserReportResponse> get reports;

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportSuccessImplCopyWith<_$ReportSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportErrorImplCopyWith<$Res> {
  factory _$$ReportErrorImplCopyWith(
          _$ReportErrorImpl value, $Res Function(_$ReportErrorImpl) then) =
      __$$ReportErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ReportErrorImplCopyWithImpl<$Res>
    extends _$UserReportStateCopyWithImpl<$Res, _$ReportErrorImpl>
    implements _$$ReportErrorImplCopyWith<$Res> {
  __$$ReportErrorImplCopyWithImpl(
      _$ReportErrorImpl _value, $Res Function(_$ReportErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ReportErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ReportErrorImpl implements ReportError {
  const _$ReportErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'UserReportState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportErrorImplCopyWith<_$ReportErrorImpl> get copyWith =>
      __$$ReportErrorImplCopyWithImpl<_$ReportErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReportResponse> reports) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReportResponse> reports)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReportResponse> reports)? success,
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
    required TResult Function(ReportLoading value) loading,
    required TResult Function(ReportSuccess value) success,
    required TResult Function(ReportError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReportLoading value)? loading,
    TResult? Function(ReportSuccess value)? success,
    TResult? Function(ReportError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReportLoading value)? loading,
    TResult Function(ReportSuccess value)? success,
    TResult Function(ReportError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReportError implements UserReportState {
  const factory ReportError(final ApiErrorModel apiErrorModel) =
      _$ReportErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of UserReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportErrorImplCopyWith<_$ReportErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
