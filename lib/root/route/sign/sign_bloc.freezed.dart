// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(BuildContext context) signInWithGoogle,
    required TResult Function() signInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(BuildContext context)? signInWithGoogle,
    TResult? Function()? signInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(BuildContext context)? signInWithGoogle,
    TResult Function()? signInWithKakao,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(_signInWithGoogle value) signInWithGoogle,
    required TResult Function(_signInWithKakao value) signInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialize value)? initialize,
    TResult? Function(_signInWithGoogle value)? signInWithGoogle,
    TResult? Function(_signInWithKakao value)? signInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(_signInWithGoogle value)? signInWithGoogle,
    TResult Function(_signInWithKakao value)? signInWithKakao,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignEventCopyWith<$Res> {
  factory $SignEventCopyWith(SignEvent value, $Res Function(SignEvent) then) =
      _$SignEventCopyWithImpl<$Res, SignEvent>;
}

/// @nodoc
class _$SignEventCopyWithImpl<$Res, $Val extends SignEvent>
    implements $SignEventCopyWith<$Res> {
  _$SignEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$initializeImplCopyWith<$Res> {
  factory _$$initializeImplCopyWith(
          _$initializeImpl value, $Res Function(_$initializeImpl) then) =
      __$$initializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$initializeImplCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res, _$initializeImpl>
    implements _$$initializeImplCopyWith<$Res> {
  __$$initializeImplCopyWithImpl(
      _$initializeImpl _value, $Res Function(_$initializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$initializeImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$initializeImpl implements _initialize {
  const _$initializeImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignEvent.initialize(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initializeImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$initializeImplCopyWith<_$initializeImpl> get copyWith =>
      __$$initializeImplCopyWithImpl<_$initializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(BuildContext context) signInWithGoogle,
    required TResult Function() signInWithKakao,
  }) {
    return initialize(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(BuildContext context)? signInWithGoogle,
    TResult? Function()? signInWithKakao,
  }) {
    return initialize?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(BuildContext context)? signInWithGoogle,
    TResult Function()? signInWithKakao,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(_signInWithGoogle value) signInWithGoogle,
    required TResult Function(_signInWithKakao value) signInWithKakao,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialize value)? initialize,
    TResult? Function(_signInWithGoogle value)? signInWithGoogle,
    TResult? Function(_signInWithKakao value)? signInWithKakao,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(_signInWithGoogle value)? signInWithGoogle,
    TResult Function(_signInWithKakao value)? signInWithKakao,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _initialize implements SignEvent {
  const factory _initialize({required final BuildContext context}) =
      _$initializeImpl;

  BuildContext get context;

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$initializeImplCopyWith<_$initializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$signInWithGoogleImplCopyWith<$Res> {
  factory _$$signInWithGoogleImplCopyWith(_$signInWithGoogleImpl value,
          $Res Function(_$signInWithGoogleImpl) then) =
      __$$signInWithGoogleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$signInWithGoogleImplCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res, _$signInWithGoogleImpl>
    implements _$$signInWithGoogleImplCopyWith<$Res> {
  __$$signInWithGoogleImplCopyWithImpl(_$signInWithGoogleImpl _value,
      $Res Function(_$signInWithGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$signInWithGoogleImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$signInWithGoogleImpl implements _signInWithGoogle {
  const _$signInWithGoogleImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignEvent.signInWithGoogle(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signInWithGoogleImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$signInWithGoogleImplCopyWith<_$signInWithGoogleImpl> get copyWith =>
      __$$signInWithGoogleImplCopyWithImpl<_$signInWithGoogleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(BuildContext context) signInWithGoogle,
    required TResult Function() signInWithKakao,
  }) {
    return signInWithGoogle(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(BuildContext context)? signInWithGoogle,
    TResult? Function()? signInWithKakao,
  }) {
    return signInWithGoogle?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(BuildContext context)? signInWithGoogle,
    TResult Function()? signInWithKakao,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(_signInWithGoogle value) signInWithGoogle,
    required TResult Function(_signInWithKakao value) signInWithKakao,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialize value)? initialize,
    TResult? Function(_signInWithGoogle value)? signInWithGoogle,
    TResult? Function(_signInWithKakao value)? signInWithKakao,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(_signInWithGoogle value)? signInWithGoogle,
    TResult Function(_signInWithKakao value)? signInWithKakao,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _signInWithGoogle implements SignEvent {
  const factory _signInWithGoogle({required final BuildContext context}) =
      _$signInWithGoogleImpl;

  BuildContext get context;

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$signInWithGoogleImplCopyWith<_$signInWithGoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$signInWithKakaoImplCopyWith<$Res> {
  factory _$$signInWithKakaoImplCopyWith(_$signInWithKakaoImpl value,
          $Res Function(_$signInWithKakaoImpl) then) =
      __$$signInWithKakaoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signInWithKakaoImplCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res, _$signInWithKakaoImpl>
    implements _$$signInWithKakaoImplCopyWith<$Res> {
  __$$signInWithKakaoImplCopyWithImpl(
      _$signInWithKakaoImpl _value, $Res Function(_$signInWithKakaoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$signInWithKakaoImpl implements _signInWithKakao {
  const _$signInWithKakaoImpl();

  @override
  String toString() {
    return 'SignEvent.signInWithKakao()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signInWithKakaoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) initialize,
    required TResult Function(BuildContext context) signInWithGoogle,
    required TResult Function() signInWithKakao,
  }) {
    return signInWithKakao();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? initialize,
    TResult? Function(BuildContext context)? signInWithGoogle,
    TResult? Function()? signInWithKakao,
  }) {
    return signInWithKakao?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? initialize,
    TResult Function(BuildContext context)? signInWithGoogle,
    TResult Function()? signInWithKakao,
    required TResult orElse(),
  }) {
    if (signInWithKakao != null) {
      return signInWithKakao();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
    required TResult Function(_signInWithGoogle value) signInWithGoogle,
    required TResult Function(_signInWithKakao value) signInWithKakao,
  }) {
    return signInWithKakao(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialize value)? initialize,
    TResult? Function(_signInWithGoogle value)? signInWithGoogle,
    TResult? Function(_signInWithKakao value)? signInWithKakao,
  }) {
    return signInWithKakao?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    TResult Function(_signInWithGoogle value)? signInWithGoogle,
    TResult Function(_signInWithKakao value)? signInWithKakao,
    required TResult orElse(),
  }) {
    if (signInWithKakao != null) {
      return signInWithKakao(this);
    }
    return orElse();
  }
}

abstract class _signInWithKakao implements SignEvent {
  const factory _signInWithKakao() = _$signInWithKakaoImpl;
}

/// @nodoc
mixin _$SignState {
  bool get initialized => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SignState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignStateCopyWith<SignState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignStateCopyWith<$Res> {
  factory $SignStateCopyWith(SignState value, $Res Function(SignState) then) =
      _$SignStateCopyWithImpl<$Res, SignState>;
  @useResult
  $Res call({bool initialized, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$SignStateCopyWithImpl<$Res, $Val extends SignState>
    implements $SignStateCopyWith<$Res> {
  _$SignStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialized = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignStateImplCopyWith<$Res>
    implements $SignStateCopyWith<$Res> {
  factory _$$SignStateImplCopyWith(
          _$SignStateImpl value, $Res Function(_$SignStateImpl) then) =
      __$$SignStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool initialized, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$SignStateImplCopyWithImpl<$Res>
    extends _$SignStateCopyWithImpl<$Res, _$SignStateImpl>
    implements _$$SignStateImplCopyWith<$Res> {
  __$$SignStateImplCopyWithImpl(
      _$SignStateImpl _value, $Res Function(_$SignStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialized = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SignStateImpl(
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignStateImpl implements _SignState {
  const _$SignStateImpl(
      {this.initialized = false, this.isLoading = false, this.errorMessage});

  @override
  @JsonKey()
  final bool initialized;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignState(initialized: $initialized, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignStateImpl &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initialized, isLoading, errorMessage);

  /// Create a copy of SignState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignStateImplCopyWith<_$SignStateImpl> get copyWith =>
      __$$SignStateImplCopyWithImpl<_$SignStateImpl>(this, _$identity);
}

abstract class _SignState implements SignState {
  const factory _SignState(
      {final bool initialized,
      final bool isLoading,
      final String? errorMessage}) = _$SignStateImpl;

  @override
  bool get initialized;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of SignState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignStateImplCopyWith<_$SignStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
