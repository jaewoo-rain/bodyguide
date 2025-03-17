// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbilityItem _$AbilityItemFromJson(Map<String, dynamic> json) {
  return _AbilityItem.fromJson(json);
}

/// @nodoc
mixin _$AbilityItem {
  int get exerId => throw _privateConstructorUsedError;
  String get muscleGroupType => throw _privateConstructorUsedError;
  String get thresholdType => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  double get strength => throw _privateConstructorUsedError;
  double get average => throw _privateConstructorUsedError;

  /// Serializes this AbilityItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityItemCopyWith<AbilityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityItemCopyWith<$Res> {
  factory $AbilityItemCopyWith(
          AbilityItem value, $Res Function(AbilityItem) then) =
      _$AbilityItemCopyWithImpl<$Res, AbilityItem>;
  @useResult
  $Res call(
      {int exerId,
      String muscleGroupType,
      String thresholdType,
      double score,
      String level,
      double strength,
      double average});
}

/// @nodoc
class _$AbilityItemCopyWithImpl<$Res, $Val extends AbilityItem>
    implements $AbilityItemCopyWith<$Res> {
  _$AbilityItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerId = null,
    Object? muscleGroupType = null,
    Object? thresholdType = null,
    Object? score = null,
    Object? level = null,
    Object? strength = null,
    Object? average = null,
  }) {
    return _then(_value.copyWith(
      exerId: null == exerId
          ? _value.exerId
          : exerId // ignore: cast_nullable_to_non_nullable
              as int,
      muscleGroupType: null == muscleGroupType
          ? _value.muscleGroupType
          : muscleGroupType // ignore: cast_nullable_to_non_nullable
              as String,
      thresholdType: null == thresholdType
          ? _value.thresholdType
          : thresholdType // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityItemImplCopyWith<$Res>
    implements $AbilityItemCopyWith<$Res> {
  factory _$$AbilityItemImplCopyWith(
          _$AbilityItemImpl value, $Res Function(_$AbilityItemImpl) then) =
      __$$AbilityItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exerId,
      String muscleGroupType,
      String thresholdType,
      double score,
      String level,
      double strength,
      double average});
}

/// @nodoc
class __$$AbilityItemImplCopyWithImpl<$Res>
    extends _$AbilityItemCopyWithImpl<$Res, _$AbilityItemImpl>
    implements _$$AbilityItemImplCopyWith<$Res> {
  __$$AbilityItemImplCopyWithImpl(
      _$AbilityItemImpl _value, $Res Function(_$AbilityItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerId = null,
    Object? muscleGroupType = null,
    Object? thresholdType = null,
    Object? score = null,
    Object? level = null,
    Object? strength = null,
    Object? average = null,
  }) {
    return _then(_$AbilityItemImpl(
      exerId: null == exerId
          ? _value.exerId
          : exerId // ignore: cast_nullable_to_non_nullable
              as int,
      muscleGroupType: null == muscleGroupType
          ? _value.muscleGroupType
          : muscleGroupType // ignore: cast_nullable_to_non_nullable
              as String,
      thresholdType: null == thresholdType
          ? _value.thresholdType
          : thresholdType // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityItemImpl implements _AbilityItem {
  const _$AbilityItemImpl(
      {this.exerId = 0,
      this.muscleGroupType = "",
      this.thresholdType = "",
      this.score = 0,
      this.level = "",
      this.strength = 0,
      this.average = 0});

  factory _$AbilityItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityItemImplFromJson(json);

  @override
  @JsonKey()
  final int exerId;
  @override
  @JsonKey()
  final String muscleGroupType;
  @override
  @JsonKey()
  final String thresholdType;
  @override
  @JsonKey()
  final double score;
  @override
  @JsonKey()
  final String level;
  @override
  @JsonKey()
  final double strength;
  @override
  @JsonKey()
  final double average;

  @override
  String toString() {
    return 'AbilityItem(exerId: $exerId, muscleGroupType: $muscleGroupType, thresholdType: $thresholdType, score: $score, level: $level, strength: $strength, average: $average)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityItemImpl &&
            (identical(other.exerId, exerId) || other.exerId == exerId) &&
            (identical(other.muscleGroupType, muscleGroupType) ||
                other.muscleGroupType == muscleGroupType) &&
            (identical(other.thresholdType, thresholdType) ||
                other.thresholdType == thresholdType) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exerId, muscleGroupType,
      thresholdType, score, level, strength, average);

  /// Create a copy of AbilityItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityItemImplCopyWith<_$AbilityItemImpl> get copyWith =>
      __$$AbilityItemImplCopyWithImpl<_$AbilityItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityItemImplToJson(
      this,
    );
  }
}

abstract class _AbilityItem implements AbilityItem {
  const factory _AbilityItem(
      {final int exerId,
      final String muscleGroupType,
      final String thresholdType,
      final double score,
      final String level,
      final double strength,
      final double average}) = _$AbilityItemImpl;

  factory _AbilityItem.fromJson(Map<String, dynamic> json) =
      _$AbilityItemImpl.fromJson;

  @override
  int get exerId;
  @override
  String get muscleGroupType;
  @override
  String get thresholdType;
  @override
  double get score;
  @override
  String get level;
  @override
  double get strength;
  @override
  double get average;

  /// Create a copy of AbilityItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityItemImplCopyWith<_$AbilityItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
