// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Practice _$PracticeFromJson(Map<String, dynamic> json) {
  return _Practice.fromJson(json);
}

/// @nodoc
mixin _$Practice {
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get exerciseId => throw _privateConstructorUsedError;
  int get thresholdType => throw _privateConstructorUsedError;

  /// Serializes this Practice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Practice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeCopyWith<Practice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeCopyWith<$Res> {
  factory $PracticeCopyWith(Practice value, $Res Function(Practice) then) =
      _$PracticeCopyWithImpl<$Res, Practice>;
  @useResult
  $Res call({String category, String name, int exerciseId, int thresholdType});
}

/// @nodoc
class _$PracticeCopyWithImpl<$Res, $Val extends Practice>
    implements $PracticeCopyWith<$Res> {
  _$PracticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Practice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? name = null,
    Object? exerciseId = null,
    Object? thresholdType = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      thresholdType: null == thresholdType
          ? _value.thresholdType
          : thresholdType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeImplCopyWith<$Res>
    implements $PracticeCopyWith<$Res> {
  factory _$$PracticeImplCopyWith(
          _$PracticeImpl value, $Res Function(_$PracticeImpl) then) =
      __$$PracticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, String name, int exerciseId, int thresholdType});
}

/// @nodoc
class __$$PracticeImplCopyWithImpl<$Res>
    extends _$PracticeCopyWithImpl<$Res, _$PracticeImpl>
    implements _$$PracticeImplCopyWith<$Res> {
  __$$PracticeImplCopyWithImpl(
      _$PracticeImpl _value, $Res Function(_$PracticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Practice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? name = null,
    Object? exerciseId = null,
    Object? thresholdType = null,
  }) {
    return _then(_$PracticeImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      thresholdType: null == thresholdType
          ? _value.thresholdType
          : thresholdType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PracticeImpl extends _Practice {
  const _$PracticeImpl(
      {required this.category,
      required this.name,
      required this.exerciseId,
      required this.thresholdType})
      : super._();

  factory _$PracticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PracticeImplFromJson(json);

  @override
  final String category;
  @override
  final String name;
  @override
  final int exerciseId;
  @override
  final int thresholdType;

  @override
  String toString() {
    return 'Practice(category: $category, name: $name, exerciseId: $exerciseId, thresholdType: $thresholdType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.thresholdType, thresholdType) ||
                other.thresholdType == thresholdType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, category, name, exerciseId, thresholdType);

  /// Create a copy of Practice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeImplCopyWith<_$PracticeImpl> get copyWith =>
      __$$PracticeImplCopyWithImpl<_$PracticeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticeImplToJson(
      this,
    );
  }
}

abstract class _Practice extends Practice {
  const factory _Practice(
      {required final String category,
      required final String name,
      required final int exerciseId,
      required final int thresholdType}) = _$PracticeImpl;
  const _Practice._() : super._();

  factory _Practice.fromJson(Map<String, dynamic> json) =
      _$PracticeImpl.fromJson;

  @override
  String get category;
  @override
  String get name;
  @override
  int get exerciseId;
  @override
  int get thresholdType;

  /// Create a copy of Practice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeImplCopyWith<_$PracticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
