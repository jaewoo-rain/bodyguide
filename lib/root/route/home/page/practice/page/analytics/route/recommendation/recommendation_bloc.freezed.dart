// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendationEvent {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) toggleGoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? toggleGoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? toggleGoal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_toggleGoal value) toggleGoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_toggleGoal value)? toggleGoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_toggleGoal value)? toggleGoal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationEventCopyWith<RecommendationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationEventCopyWith<$Res> {
  factory $RecommendationEventCopyWith(
          RecommendationEvent value, $Res Function(RecommendationEvent) then) =
      _$RecommendationEventCopyWithImpl<$Res, RecommendationEvent>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$RecommendationEventCopyWithImpl<$Res, $Val extends RecommendationEvent>
    implements $RecommendationEventCopyWith<$Res> {
  _$RecommendationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$toggleGoalImplCopyWith<$Res>
    implements $RecommendationEventCopyWith<$Res> {
  factory _$$toggleGoalImplCopyWith(
          _$toggleGoalImpl value, $Res Function(_$toggleGoalImpl) then) =
      __$$toggleGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$toggleGoalImplCopyWithImpl<$Res>
    extends _$RecommendationEventCopyWithImpl<$Res, _$toggleGoalImpl>
    implements _$$toggleGoalImplCopyWith<$Res> {
  __$$toggleGoalImplCopyWithImpl(
      _$toggleGoalImpl _value, $Res Function(_$toggleGoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$toggleGoalImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$toggleGoalImpl implements _toggleGoal {
  const _$toggleGoalImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'RecommendationEvent.toggleGoal(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$toggleGoalImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$toggleGoalImplCopyWith<_$toggleGoalImpl> get copyWith =>
      __$$toggleGoalImplCopyWithImpl<_$toggleGoalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) toggleGoal,
  }) {
    return toggleGoal(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? toggleGoal,
  }) {
    return toggleGoal?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? toggleGoal,
    required TResult orElse(),
  }) {
    if (toggleGoal != null) {
      return toggleGoal(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_toggleGoal value) toggleGoal,
  }) {
    return toggleGoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_toggleGoal value)? toggleGoal,
  }) {
    return toggleGoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_toggleGoal value)? toggleGoal,
    required TResult orElse(),
  }) {
    if (toggleGoal != null) {
      return toggleGoal(this);
    }
    return orElse();
  }
}

abstract class _toggleGoal implements RecommendationEvent {
  const factory _toggleGoal({required final String value}) = _$toggleGoalImpl;

  @override
  String get value;

  /// Create a copy of RecommendationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$toggleGoalImplCopyWith<_$toggleGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecommendationState {
  Set<String> get goals => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationStateCopyWith<RecommendationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationStateCopyWith<$Res> {
  factory $RecommendationStateCopyWith(
          RecommendationState value, $Res Function(RecommendationState) then) =
      _$RecommendationStateCopyWithImpl<$Res, RecommendationState>;
  @useResult
  $Res call({Set<String> goals});
}

/// @nodoc
class _$RecommendationStateCopyWithImpl<$Res, $Val extends RecommendationState>
    implements $RecommendationStateCopyWith<$Res> {
  _$RecommendationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationStateImplCopyWith<$Res>
    implements $RecommendationStateCopyWith<$Res> {
  factory _$$RecommendationStateImplCopyWith(_$RecommendationStateImpl value,
          $Res Function(_$RecommendationStateImpl) then) =
      __$$RecommendationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> goals});
}

/// @nodoc
class __$$RecommendationStateImplCopyWithImpl<$Res>
    extends _$RecommendationStateCopyWithImpl<$Res, _$RecommendationStateImpl>
    implements _$$RecommendationStateImplCopyWith<$Res> {
  __$$RecommendationStateImplCopyWithImpl(_$RecommendationStateImpl _value,
      $Res Function(_$RecommendationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
  }) {
    return _then(_$RecommendationStateImpl(
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$RecommendationStateImpl implements _RecommendationState {
  const _$RecommendationStateImpl({final Set<String> goals = const {}})
      : _goals = goals;

  final Set<String> _goals;
  @override
  @JsonKey()
  Set<String> get goals {
    if (_goals is EqualUnmodifiableSetView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_goals);
  }

  @override
  String toString() {
    return 'RecommendationState(goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationStateImpl &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_goals));

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationStateImplCopyWith<_$RecommendationStateImpl> get copyWith =>
      __$$RecommendationStateImplCopyWithImpl<_$RecommendationStateImpl>(
          this, _$identity);
}

abstract class _RecommendationState implements RecommendationState {
  const factory _RecommendationState({final Set<String> goals}) =
      _$RecommendationStateImpl;

  @override
  Set<String> get goals;

  /// Create a copy of RecommendationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationStateImplCopyWith<_$RecommendationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
