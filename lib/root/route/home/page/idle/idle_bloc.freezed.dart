// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'idle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_mock value) mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_mock value)? mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_mock value)? mock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdleEventCopyWith<$Res> {
  factory $IdleEventCopyWith(IdleEvent value, $Res Function(IdleEvent) then) =
      _$IdleEventCopyWithImpl<$Res, IdleEvent>;
}

/// @nodoc
class _$IdleEventCopyWithImpl<$Res, $Val extends IdleEvent>
    implements $IdleEventCopyWith<$Res> {
  _$IdleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$mockImplCopyWith<$Res> {
  factory _$$mockImplCopyWith(
          _$mockImpl value, $Res Function(_$mockImpl) then) =
      __$$mockImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$mockImplCopyWithImpl<$Res>
    extends _$IdleEventCopyWithImpl<$Res, _$mockImpl>
    implements _$$mockImplCopyWith<$Res> {
  __$$mockImplCopyWithImpl(_$mockImpl _value, $Res Function(_$mockImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$mockImpl implements _mock {
  const _$mockImpl();

  @override
  String toString() {
    return 'IdleEvent.mock()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$mockImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mock,
  }) {
    return mock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mock,
  }) {
    return mock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mock,
    required TResult orElse(),
  }) {
    if (mock != null) {
      return mock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_mock value) mock,
  }) {
    return mock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_mock value)? mock,
  }) {
    return mock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_mock value)? mock,
    required TResult orElse(),
  }) {
    if (mock != null) {
      return mock(this);
    }
    return orElse();
  }
}

abstract class _mock implements IdleEvent {
  const factory _mock() = _$mockImpl;
}

/// @nodoc
mixin _$IdleState {
  bool get mock => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Create a copy of IdleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdleStateCopyWith<IdleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdleStateCopyWith<$Res> {
  factory $IdleStateCopyWith(IdleState value, $Res Function(IdleState) then) =
      _$IdleStateCopyWithImpl<$Res, IdleState>;
  @useResult
  $Res call({bool mock, double weight, double volume});
}

/// @nodoc
class _$IdleStateCopyWithImpl<$Res, $Val extends IdleState>
    implements $IdleStateCopyWith<$Res> {
  _$IdleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mock = null,
    Object? weight = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      mock: null == mock
          ? _value.mock
          : mock // ignore: cast_nullable_to_non_nullable
              as bool,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleStateImplCopyWith<$Res>
    implements $IdleStateCopyWith<$Res> {
  factory _$$IdleStateImplCopyWith(
          _$IdleStateImpl value, $Res Function(_$IdleStateImpl) then) =
      __$$IdleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool mock, double weight, double volume});
}

/// @nodoc
class __$$IdleStateImplCopyWithImpl<$Res>
    extends _$IdleStateCopyWithImpl<$Res, _$IdleStateImpl>
    implements _$$IdleStateImplCopyWith<$Res> {
  __$$IdleStateImplCopyWithImpl(
      _$IdleStateImpl _value, $Res Function(_$IdleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mock = null,
    Object? weight = null,
    Object? volume = null,
  }) {
    return _then(_$IdleStateImpl(
      mock: null == mock
          ? _value.mock
          : mock // ignore: cast_nullable_to_non_nullable
              as bool,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$IdleStateImpl implements _IdleState {
  const _$IdleStateImpl({this.mock = false, this.weight = 0, this.volume = 0});

  @override
  @JsonKey()
  final bool mock;
  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final double volume;

  @override
  String toString() {
    return 'IdleState(mock: $mock, weight: $weight, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleStateImpl &&
            (identical(other.mock, mock) || other.mock == mock) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mock, weight, volume);

  /// Create a copy of IdleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleStateImplCopyWith<_$IdleStateImpl> get copyWith =>
      __$$IdleStateImplCopyWithImpl<_$IdleStateImpl>(this, _$identity);
}

abstract class _IdleState implements IdleState {
  const factory _IdleState(
      {final bool mock,
      final double weight,
      final double volume}) = _$IdleStateImpl;

  @override
  bool get mock;
  @override
  double get weight;
  @override
  double get volume;

  /// Create a copy of IdleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleStateImplCopyWith<_$IdleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
