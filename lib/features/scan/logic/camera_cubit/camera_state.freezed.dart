// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
    CameraState value,
    $Res Function(CameraState) then,
  ) = _$CameraStateCopyWithImpl<$Res, CameraState>;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CameraState.initial()';
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
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
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
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CameraState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CameraLoadedImplCopyWith<$Res> {
  factory _$$CameraLoadedImplCopyWith(
    _$CameraLoadedImpl value,
    $Res Function(_$CameraLoadedImpl) then,
  ) = __$$CameraLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CameraDescription> cameras});
}

/// @nodoc
class __$$CameraLoadedImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraLoadedImpl>
    implements _$$CameraLoadedImplCopyWith<$Res> {
  __$$CameraLoadedImplCopyWithImpl(
    _$CameraLoadedImpl _value,
    $Res Function(_$CameraLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cameras = null}) {
    return _then(
      _$CameraLoadedImpl(
        null == cameras
            ? _value._cameras
            : cameras // ignore: cast_nullable_to_non_nullable
                as List<CameraDescription>,
      ),
    );
  }
}

/// @nodoc

class _$CameraLoadedImpl implements CameraLoaded {
  const _$CameraLoadedImpl(final List<CameraDescription> cameras)
    : _cameras = cameras;

  final List<CameraDescription> _cameras;
  @override
  List<CameraDescription> get cameras {
    if (_cameras is EqualUnmodifiableListView) return _cameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  String toString() {
    return 'CameraState.loaded(cameras: $cameras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraLoadedImpl &&
            const DeepCollectionEquality().equals(other._cameras, _cameras));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cameras));

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraLoadedImplCopyWith<_$CameraLoadedImpl> get copyWith =>
      __$$CameraLoadedImplCopyWithImpl<_$CameraLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) {
    return loaded(cameras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) {
    return loaded?.call(cameras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cameras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CameraLoaded implements CameraState {
  const factory CameraLoaded(final List<CameraDescription> cameras) =
      _$CameraLoadedImpl;

  List<CameraDescription> get cameras;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraLoadedImplCopyWith<_$CameraLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraReadyImplCopyWith<$Res> {
  factory _$$CameraReadyImplCopyWith(
    _$CameraReadyImpl value,
    $Res Function(_$CameraReadyImpl) then,
  ) = __$$CameraReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraController cameraController});
}

/// @nodoc
class __$$CameraReadyImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraReadyImpl>
    implements _$$CameraReadyImplCopyWith<$Res> {
  __$$CameraReadyImplCopyWithImpl(
    _$CameraReadyImpl _value,
    $Res Function(_$CameraReadyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cameraController = null}) {
    return _then(
      _$CameraReadyImpl(
        null == cameraController
            ? _value.cameraController
            : cameraController // ignore: cast_nullable_to_non_nullable
                as CameraController,
      ),
    );
  }
}

/// @nodoc

class _$CameraReadyImpl implements CameraReady {
  const _$CameraReadyImpl(this.cameraController);

  @override
  final CameraController cameraController;

  @override
  String toString() {
    return 'CameraState.cameraReady(cameraController: $cameraController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraReadyImpl &&
            (identical(other.cameraController, cameraController) ||
                other.cameraController == cameraController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraController);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraReadyImplCopyWith<_$CameraReadyImpl> get copyWith =>
      __$$CameraReadyImplCopyWithImpl<_$CameraReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) {
    return cameraReady(cameraController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) {
    return cameraReady?.call(cameraController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
    required TResult orElse(),
  }) {
    if (cameraReady != null) {
      return cameraReady(cameraController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) {
    return cameraReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) {
    return cameraReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (cameraReady != null) {
      return cameraReady(this);
    }
    return orElse();
  }
}

abstract class CameraReady implements CameraState {
  const factory CameraReady(final CameraController cameraController) =
      _$CameraReadyImpl;

  CameraController get cameraController;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraReadyImplCopyWith<_$CameraReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlashToggledImplCopyWith<$Res> {
  factory _$$FlashToggledImplCopyWith(
    _$FlashToggledImpl value,
    $Res Function(_$FlashToggledImpl) then,
  ) = __$$FlashToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlashToggledImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$FlashToggledImpl>
    implements _$$FlashToggledImplCopyWith<$Res> {
  __$$FlashToggledImplCopyWithImpl(
    _$FlashToggledImpl _value,
    $Res Function(_$FlashToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FlashToggledImpl implements FlashToggled {
  const _$FlashToggledImpl();

  @override
  String toString() {
    return 'CameraState.flashToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlashToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) {
    return flashToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) {
    return flashToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
    required TResult orElse(),
  }) {
    if (flashToggled != null) {
      return flashToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) {
    return flashToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) {
    return flashToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (flashToggled != null) {
      return flashToggled(this);
    }
    return orElse();
  }
}

abstract class FlashToggled implements CameraState {
  const factory FlashToggled() = _$FlashToggledImpl;
}

/// @nodoc
abstract class _$$CameraErrorImplCopyWith<$Res> {
  factory _$$CameraErrorImplCopyWith(
    _$CameraErrorImpl value,
    $Res Function(_$CameraErrorImpl) then,
  ) = __$$CameraErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CameraErrorImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraErrorImpl>
    implements _$$CameraErrorImplCopyWith<$Res> {
  __$$CameraErrorImplCopyWithImpl(
    _$CameraErrorImpl _value,
    $Res Function(_$CameraErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CameraErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CameraErrorImpl implements CameraError {
  const _$CameraErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CameraState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraErrorImplCopyWith<_$CameraErrorImpl> get copyWith =>
      __$$CameraErrorImplCopyWithImpl<_$CameraErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CameraError implements CameraState {
  const factory CameraError(final String message) = _$CameraErrorImpl;

  String get message;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraErrorImplCopyWith<_$CameraErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageCapturedImplCopyWith<$Res> {
  factory _$$ImageCapturedImplCopyWith(
    _$ImageCapturedImpl value,
    $Res Function(_$ImageCapturedImpl) then,
  ) = __$$ImageCapturedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ImageCapturedImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$ImageCapturedImpl>
    implements _$$ImageCapturedImplCopyWith<$Res> {
  __$$ImageCapturedImplCopyWithImpl(
    _$ImageCapturedImpl _value,
    $Res Function(_$ImageCapturedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imagePath = null}) {
    return _then(
      _$ImageCapturedImpl(
        null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ImageCapturedImpl implements ImageCaptured {
  const _$ImageCapturedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'CameraState.imageCaptured(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageCapturedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      __$$ImageCapturedImplCopyWithImpl<_$ImageCapturedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CameraDescription> cameras) loaded,
    required TResult Function(CameraController cameraController) cameraReady,
    required TResult Function() flashToggled,
    required TResult Function(String message) error,
    required TResult Function(String imagePath) imageCaptured,
  }) {
    return imageCaptured(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CameraDescription> cameras)? loaded,
    TResult? Function(CameraController cameraController)? cameraReady,
    TResult? Function()? flashToggled,
    TResult? Function(String message)? error,
    TResult? Function(String imagePath)? imageCaptured,
  }) {
    return imageCaptured?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CameraDescription> cameras)? loaded,
    TResult Function(CameraController cameraController)? cameraReady,
    TResult Function()? flashToggled,
    TResult Function(String message)? error,
    TResult Function(String imagePath)? imageCaptured,
    required TResult orElse(),
  }) {
    if (imageCaptured != null) {
      return imageCaptured(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CameraLoaded value) loaded,
    required TResult Function(CameraReady value) cameraReady,
    required TResult Function(FlashToggled value) flashToggled,
    required TResult Function(CameraError value) error,
    required TResult Function(ImageCaptured value) imageCaptured,
  }) {
    return imageCaptured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CameraLoaded value)? loaded,
    TResult? Function(CameraReady value)? cameraReady,
    TResult? Function(FlashToggled value)? flashToggled,
    TResult? Function(CameraError value)? error,
    TResult? Function(ImageCaptured value)? imageCaptured,
  }) {
    return imageCaptured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CameraLoaded value)? loaded,
    TResult Function(CameraReady value)? cameraReady,
    TResult Function(FlashToggled value)? flashToggled,
    TResult Function(CameraError value)? error,
    TResult Function(ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (imageCaptured != null) {
      return imageCaptured(this);
    }
    return orElse();
  }
}

abstract class ImageCaptured implements CameraState {
  const factory ImageCaptured(final String imagePath) = _$ImageCapturedImpl;

  String get imagePath;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
