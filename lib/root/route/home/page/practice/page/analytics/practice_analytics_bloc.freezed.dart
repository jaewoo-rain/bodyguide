// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_analytics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticeAnalyticsEvent {
  int get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int mode) setMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int mode)? setMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int mode)? setMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_setMode value) setMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_setMode value)? setMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_setMode value)? setMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PracticeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeAnalyticsEventCopyWith<PracticeAnalyticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeAnalyticsEventCopyWith<$Res> {
  factory $PracticeAnalyticsEventCopyWith(PracticeAnalyticsEvent value,
          $Res Function(PracticeAnalyticsEvent) then) =
      _$PracticeAnalyticsEventCopyWithImpl<$Res, PracticeAnalyticsEvent>;
  @useResult
  $Res call({int mode});
}

/// @nodoc
class _$PracticeAnalyticsEventCopyWithImpl<$Res,
        $Val extends PracticeAnalyticsEvent>
    implements $PracticeAnalyticsEventCopyWith<$Res> {
  _$PracticeAnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$setModeImplCopyWith<$Res>
    implements $PracticeAnalyticsEventCopyWith<$Res> {
  factory _$$setModeImplCopyWith(
          _$setModeImpl value, $Res Function(_$setModeImpl) then) =
      __$$setModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int mode});
}

/// @nodoc
class __$$setModeImplCopyWithImpl<$Res>
    extends _$PracticeAnalyticsEventCopyWithImpl<$Res, _$setModeImpl>
    implements _$$setModeImplCopyWith<$Res> {
  __$$setModeImplCopyWithImpl(
      _$setModeImpl _value, $Res Function(_$setModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$setModeImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$setModeImpl implements _setMode {
  const _$setModeImpl({required this.mode});

  @override
  final int mode;

  @override
  String toString() {
    return 'PracticeAnalyticsEvent.setMode(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setModeImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of PracticeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setModeImplCopyWith<_$setModeImpl> get copyWith =>
      __$$setModeImplCopyWithImpl<_$setModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int mode) setMode,
  }) {
    return setMode(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int mode)? setMode,
  }) {
    return setMode?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int mode)? setMode,
    required TResult orElse(),
  }) {
    if (setMode != null) {
      return setMode(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_setMode value) setMode,
  }) {
    return setMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_setMode value)? setMode,
  }) {
    return setMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_setMode value)? setMode,
    required TResult orElse(),
  }) {
    if (setMode != null) {
      return setMode(this);
    }
    return orElse();
  }
}

abstract class _setMode implements PracticeAnalyticsEvent {
  const factory _setMode({required final int mode}) = _$setModeImpl;

  @override
  int get mode;

  /// Create a copy of PracticeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setModeImplCopyWith<_$setModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeAnalyticsState {
  int get mode => throw _privateConstructorUsedError;

  /// Create a copy of PracticeAnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeAnalyticsStateCopyWith<PracticeAnalyticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeAnalyticsStateCopyWith<$Res> {
  factory $PracticeAnalyticsStateCopyWith(PracticeAnalyticsState value,
          $Res Function(PracticeAnalyticsState) then) =
      _$PracticeAnalyticsStateCopyWithImpl<$Res, PracticeAnalyticsState>;
  @useResult
  $Res call({int mode});
}

/// @nodoc
class _$PracticeAnalyticsStateCopyWithImpl<$Res,
        $Val extends PracticeAnalyticsState>
    implements $PracticeAnalyticsStateCopyWith<$Res> {
  _$PracticeAnalyticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeAnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeAnalyticsStateImplCopyWith<$Res>
    implements $PracticeAnalyticsStateCopyWith<$Res> {
  factory _$$PracticeAnalyticsStateImplCopyWith(
          _$PracticeAnalyticsStateImpl value,
          $Res Function(_$PracticeAnalyticsStateImpl) then) =
      __$$PracticeAnalyticsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int mode});
}

/// @nodoc
class __$$PracticeAnalyticsStateImplCopyWithImpl<$Res>
    extends _$PracticeAnalyticsStateCopyWithImpl<$Res,
        _$PracticeAnalyticsStateImpl>
    implements _$$PracticeAnalyticsStateImplCopyWith<$Res> {
  __$$PracticeAnalyticsStateImplCopyWithImpl(
      _$PracticeAnalyticsStateImpl _value,
      $Res Function(_$PracticeAnalyticsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeAnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$PracticeAnalyticsStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PracticeAnalyticsStateImpl implements _PracticeAnalyticsState {
  const _$PracticeAnalyticsStateImpl({this.mode = 0});

  @override
  @JsonKey()
  final int mode;

  @override
  String toString() {
    return 'PracticeAnalyticsState(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeAnalyticsStateImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of PracticeAnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeAnalyticsStateImplCopyWith<_$PracticeAnalyticsStateImpl>
      get copyWith => __$$PracticeAnalyticsStateImplCopyWithImpl<
          _$PracticeAnalyticsStateImpl>(this, _$identity);
}

abstract class _PracticeAnalyticsState implements PracticeAnalyticsState {
  const factory _PracticeAnalyticsState({final int mode}) =
      _$PracticeAnalyticsStateImpl;

  @override
  int get mode;

  /// Create a copy of PracticeAnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeAnalyticsStateImplCopyWith<_$PracticeAnalyticsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
