// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleModel> articles) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleModel> articles)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleModel> articles)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ArticaleLoading value) loading,
    required TResult Function(ArticleSuccess value) success,
    required TResult Function(ArticleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ArticaleLoading value)? loading,
    TResult? Function(ArticleSuccess value)? success,
    TResult? Function(ArticleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ArticaleLoading value)? loading,
    TResult Function(ArticleSuccess value)? success,
    TResult Function(ArticleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res, ArticleState>;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res, $Val extends ArticleState>
    implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleState
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
    extends _$ArticleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ArticleState.initial()';
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
    required TResult Function(List<ArticleModel> articles) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleModel> articles)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleModel> articles)? success,
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
    required TResult Function(ArticaleLoading value) loading,
    required TResult Function(ArticleSuccess value) success,
    required TResult Function(ArticleError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ArticaleLoading value)? loading,
    TResult? Function(ArticleSuccess value)? success,
    TResult? Function(ArticleError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ArticaleLoading value)? loading,
    TResult Function(ArticleSuccess value)? success,
    TResult Function(ArticleError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArticleState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ArticaleLoadingImplCopyWith<$Res> {
  factory _$$ArticaleLoadingImplCopyWith(_$ArticaleLoadingImpl value,
          $Res Function(_$ArticaleLoadingImpl) then) =
      __$$ArticaleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArticaleLoadingImplCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$ArticaleLoadingImpl>
    implements _$$ArticaleLoadingImplCopyWith<$Res> {
  __$$ArticaleLoadingImplCopyWithImpl(
      _$ArticaleLoadingImpl _value, $Res Function(_$ArticaleLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ArticaleLoadingImpl implements ArticaleLoading {
  const _$ArticaleLoadingImpl();

  @override
  String toString() {
    return 'ArticleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ArticaleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleModel> articles) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleModel> articles)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleModel> articles)? success,
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
    required TResult Function(ArticaleLoading value) loading,
    required TResult Function(ArticleSuccess value) success,
    required TResult Function(ArticleError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ArticaleLoading value)? loading,
    TResult? Function(ArticleSuccess value)? success,
    TResult? Function(ArticleError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ArticaleLoading value)? loading,
    TResult Function(ArticleSuccess value)? success,
    TResult Function(ArticleError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArticaleLoading implements ArticleState {
  const factory ArticaleLoading() = _$ArticaleLoadingImpl;
}

/// @nodoc
abstract class _$$ArticleSuccessImplCopyWith<$Res> {
  factory _$$ArticleSuccessImplCopyWith(_$ArticleSuccessImpl value,
          $Res Function(_$ArticleSuccessImpl) then) =
      __$$ArticleSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleModel> articles});
}

/// @nodoc
class __$$ArticleSuccessImplCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$ArticleSuccessImpl>
    implements _$$ArticleSuccessImplCopyWith<$Res> {
  __$$ArticleSuccessImplCopyWithImpl(
      _$ArticleSuccessImpl _value, $Res Function(_$ArticleSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$ArticleSuccessImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc

class _$ArticleSuccessImpl implements ArticleSuccess {
  const _$ArticleSuccessImpl(final List<ArticleModel> articles)
      : _articles = articles;

  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ArticleState.success(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleSuccessImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleSuccessImplCopyWith<_$ArticleSuccessImpl> get copyWith =>
      __$$ArticleSuccessImplCopyWithImpl<_$ArticleSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleModel> articles) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleModel> articles)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleModel> articles)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ArticaleLoading value) loading,
    required TResult Function(ArticleSuccess value) success,
    required TResult Function(ArticleError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ArticaleLoading value)? loading,
    TResult? Function(ArticleSuccess value)? success,
    TResult? Function(ArticleError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ArticaleLoading value)? loading,
    TResult Function(ArticleSuccess value)? success,
    TResult Function(ArticleError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ArticleSuccess implements ArticleState {
  const factory ArticleSuccess(final List<ArticleModel> articles) =
      _$ArticleSuccessImpl;

  List<ArticleModel> get articles;

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleSuccessImplCopyWith<_$ArticleSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArticleErrorImplCopyWith<$Res> {
  factory _$$ArticleErrorImplCopyWith(
          _$ArticleErrorImpl value, $Res Function(_$ArticleErrorImpl) then) =
      __$$ArticleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ArticleErrorImplCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$ArticleErrorImpl>
    implements _$$ArticleErrorImplCopyWith<$Res> {
  __$$ArticleErrorImplCopyWithImpl(
      _$ArticleErrorImpl _value, $Res Function(_$ArticleErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ArticleErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ArticleErrorImpl implements ArticleError {
  const _$ArticleErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ArticleState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleErrorImplCopyWith<_$ArticleErrorImpl> get copyWith =>
      __$$ArticleErrorImplCopyWithImpl<_$ArticleErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleModel> articles) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleModel> articles)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleModel> articles)? success,
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
    required TResult Function(ArticaleLoading value) loading,
    required TResult Function(ArticleSuccess value) success,
    required TResult Function(ArticleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ArticaleLoading value)? loading,
    TResult? Function(ArticleSuccess value)? success,
    TResult? Function(ArticleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ArticaleLoading value)? loading,
    TResult Function(ArticleSuccess value)? success,
    TResult Function(ArticleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArticleError implements ArticleState {
  const factory ArticleError(final ApiErrorModel apiErrorModel) =
      _$ArticleErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of ArticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleErrorImplCopyWith<_$ArticleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
