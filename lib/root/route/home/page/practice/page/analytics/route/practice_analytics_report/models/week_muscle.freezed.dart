// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_muscle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeekMuscle _$WeekMuscleFromJson(Map<String, dynamic> json) {
  return _WeekMuscle.fromJson(json);
}

/// @nodoc
mixin _$WeekMuscle {
  String get strength => throw _privateConstructorUsedError;
  List<String> get details => throw _privateConstructorUsedError;

  /// Serializes this WeekMuscle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekMuscle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekMuscleCopyWith<WeekMuscle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekMuscleCopyWith<$Res> {
  factory $WeekMuscleCopyWith(
          WeekMuscle value, $Res Function(WeekMuscle) then) =
      _$WeekMuscleCopyWithImpl<$Res, WeekMuscle>;
  @useResult
  $Res call({String strength, List<String> details});
}

/// @nodoc
class _$WeekMuscleCopyWithImpl<$Res, $Val extends WeekMuscle>
    implements $WeekMuscleCopyWith<$Res> {
  _$WeekMuscleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekMuscle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strength = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekMuscleImplCopyWith<$Res>
    implements $WeekMuscleCopyWith<$Res> {
  factory _$$WeekMuscleImplCopyWith(
          _$WeekMuscleImpl value, $Res Function(_$WeekMuscleImpl) then) =
      __$$WeekMuscleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strength, List<String> details});
}

/// @nodoc
class __$$WeekMuscleImplCopyWithImpl<$Res>
    extends _$WeekMuscleCopyWithImpl<$Res, _$WeekMuscleImpl>
    implements _$$WeekMuscleImplCopyWith<$Res> {
  __$$WeekMuscleImplCopyWithImpl(
      _$WeekMuscleImpl _value, $Res Function(_$WeekMuscleImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekMuscle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strength = null,
    Object? details = null,
  }) {
    return _then(_$WeekMuscleImpl(
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekMuscleImpl implements _WeekMuscle {
  const _$WeekMuscleImpl(
      {required this.strength, required final List<String> details})
      : _details = details;

  factory _$WeekMuscleImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekMuscleImplFromJson(json);

  @override
  final String strength;
  final List<String> _details;
  @override
  List<String> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'WeekMuscle(strength: $strength, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekMuscleImpl &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, strength, const DeepCollectionEquality().hash(_details));

  /// Create a copy of WeekMuscle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekMuscleImplCopyWith<_$WeekMuscleImpl> get copyWith =>
      __$$WeekMuscleImplCopyWithImpl<_$WeekMuscleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekMuscleImplToJson(
      this,
    );
  }
}

abstract class _WeekMuscle implements WeekMuscle {
  const factory _WeekMuscle(
      {required final String strength,
      required final List<String> details}) = _$WeekMuscleImpl;

  factory _WeekMuscle.fromJson(Map<String, dynamic> json) =
      _$WeekMuscleImpl.fromJson;

  @override
  String get strength;
  @override
  List<String> get details;

  /// Create a copy of WeekMuscle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekMuscleImplCopyWith<_$WeekMuscleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
