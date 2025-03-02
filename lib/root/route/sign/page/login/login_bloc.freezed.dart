// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) loginInWithGoogle,
    required TResult Function(BuildContext context) loginInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? loginInWithGoogle,
    TResult? Function(BuildContext context)? loginInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? loginInWithGoogle,
    TResult Function(BuildContext context)? loginInWithKakao,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginInWithGoogle value) loginInWithGoogle,
    required TResult Function(_loginInWithKakao value) loginInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginInWithGoogle value)? loginInWithGoogle,
    TResult? Function(_loginInWithKakao value)? loginInWithKakao,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginInWithGoogle value)? loginInWithGoogle,
    TResult Function(_loginInWithKakao value)? loginInWithKakao,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$loginInWithGoogleImplCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$loginInWithGoogleImplCopyWith(_$loginInWithGoogleImpl value,
          $Res Function(_$loginInWithGoogleImpl) then) =
      __$$loginInWithGoogleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$loginInWithGoogleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$loginInWithGoogleImpl>
    implements _$$loginInWithGoogleImplCopyWith<$Res> {
  __$$loginInWithGoogleImplCopyWithImpl(_$loginInWithGoogleImpl _value,
      $Res Function(_$loginInWithGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$loginInWithGoogleImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$loginInWithGoogleImpl implements _loginInWithGoogle {
  const _$loginInWithGoogleImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.loginInWithGoogle(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginInWithGoogleImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loginInWithGoogleImplCopyWith<_$loginInWithGoogleImpl> get copyWith =>
      __$$loginInWithGoogleImplCopyWithImpl<_$loginInWithGoogleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) loginInWithGoogle,
    required TResult Function(BuildContext context) loginInWithKakao,
  }) {
    return loginInWithGoogle(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? loginInWithGoogle,
    TResult? Function(BuildContext context)? loginInWithKakao,
  }) {
    return loginInWithGoogle?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? loginInWithGoogle,
    TResult Function(BuildContext context)? loginInWithKakao,
    required TResult orElse(),
  }) {
    if (loginInWithGoogle != null) {
      return loginInWithGoogle(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginInWithGoogle value) loginInWithGoogle,
    required TResult Function(_loginInWithKakao value) loginInWithKakao,
  }) {
    return loginInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginInWithGoogle value)? loginInWithGoogle,
    TResult? Function(_loginInWithKakao value)? loginInWithKakao,
  }) {
    return loginInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginInWithGoogle value)? loginInWithGoogle,
    TResult Function(_loginInWithKakao value)? loginInWithKakao,
    required TResult orElse(),
  }) {
    if (loginInWithGoogle != null) {
      return loginInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _loginInWithGoogle implements LoginEvent {
  const factory _loginInWithGoogle({required final BuildContext context}) =
      _$loginInWithGoogleImpl;

  @override
  BuildContext get context;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loginInWithGoogleImplCopyWith<_$loginInWithGoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginInWithKakaoImplCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$loginInWithKakaoImplCopyWith(_$loginInWithKakaoImpl value,
          $Res Function(_$loginInWithKakaoImpl) then) =
      __$$loginInWithKakaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$loginInWithKakaoImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$loginInWithKakaoImpl>
    implements _$$loginInWithKakaoImplCopyWith<$Res> {
  __$$loginInWithKakaoImplCopyWithImpl(_$loginInWithKakaoImpl _value,
      $Res Function(_$loginInWithKakaoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$loginInWithKakaoImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$loginInWithKakaoImpl implements _loginInWithKakao {
  const _$loginInWithKakaoImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.loginInWithKakao(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginInWithKakaoImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loginInWithKakaoImplCopyWith<_$loginInWithKakaoImpl> get copyWith =>
      __$$loginInWithKakaoImplCopyWithImpl<_$loginInWithKakaoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) loginInWithGoogle,
    required TResult Function(BuildContext context) loginInWithKakao,
  }) {
    return loginInWithKakao(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? loginInWithGoogle,
    TResult? Function(BuildContext context)? loginInWithKakao,
  }) {
    return loginInWithKakao?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? loginInWithGoogle,
    TResult Function(BuildContext context)? loginInWithKakao,
    required TResult orElse(),
  }) {
    if (loginInWithKakao != null) {
      return loginInWithKakao(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginInWithGoogle value) loginInWithGoogle,
    required TResult Function(_loginInWithKakao value) loginInWithKakao,
  }) {
    return loginInWithKakao(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginInWithGoogle value)? loginInWithGoogle,
    TResult? Function(_loginInWithKakao value)? loginInWithKakao,
  }) {
    return loginInWithKakao?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginInWithGoogle value)? loginInWithGoogle,
    TResult Function(_loginInWithKakao value)? loginInWithKakao,
    required TResult orElse(),
  }) {
    if (loginInWithKakao != null) {
      return loginInWithKakao(this);
    }
    return orElse();
  }
}

abstract class _loginInWithKakao implements LoginEvent {
  const factory _loginInWithKakao({required final BuildContext context}) =
      _$loginInWithKakaoImpl;

  @override
  BuildContext get context;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loginInWithKakaoImplCopyWith<_$loginInWithKakaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get initialized => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({bool initialized, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
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
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool initialized, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialized = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoginStateImpl(
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

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
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
    return 'LoginState(initialized: $initialized, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
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

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool initialized,
      final bool isLoading,
      final String? errorMessage}) = _$LoginStateImpl;

  @override
  bool get initialized;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
