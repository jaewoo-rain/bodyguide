// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseSetRequest _$ExerciseSetRequestFromJson(Map<String, dynamic> json) {
  return _ExerciseSetRequest.fromJson(json);
}

/// @nodoc
mixin _$ExerciseSetRequest {
  int get set => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;

  /// Serializes this ExerciseSetRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseSetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseSetRequestCopyWith<ExerciseSetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetRequestCopyWith<$Res> {
  factory $ExerciseSetRequestCopyWith(
          ExerciseSetRequest value, $Res Function(ExerciseSetRequest) then) =
      _$ExerciseSetRequestCopyWithImpl<$Res, ExerciseSetRequest>;
  @useResult
  $Res call({int set, double weight, int reps});
}

/// @nodoc
class _$ExerciseSetRequestCopyWithImpl<$Res, $Val extends ExerciseSetRequest>
    implements $ExerciseSetRequestCopyWith<$Res> {
  _$ExerciseSetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseSetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
    Object? weight = null,
    Object? reps = null,
  }) {
    return _then(_value.copyWith(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseSetRequestImplCopyWith<$Res>
    implements $ExerciseSetRequestCopyWith<$Res> {
  factory _$$ExerciseSetRequestImplCopyWith(_$ExerciseSetRequestImpl value,
          $Res Function(_$ExerciseSetRequestImpl) then) =
      __$$ExerciseSetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int set, double weight, int reps});
}

/// @nodoc
class __$$ExerciseSetRequestImplCopyWithImpl<$Res>
    extends _$ExerciseSetRequestCopyWithImpl<$Res, _$ExerciseSetRequestImpl>
    implements _$$ExerciseSetRequestImplCopyWith<$Res> {
  __$$ExerciseSetRequestImplCopyWithImpl(_$ExerciseSetRequestImpl _value,
      $Res Function(_$ExerciseSetRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseSetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
    Object? weight = null,
    Object? reps = null,
  }) {
    return _then(_$ExerciseSetRequestImpl(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseSetRequestImpl implements _ExerciseSetRequest {
  const _$ExerciseSetRequestImpl(
      {required this.set, required this.weight, required this.reps});

  factory _$ExerciseSetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseSetRequestImplFromJson(json);

  @override
  final int set;
  @override
  final double weight;
  @override
  final int reps;

  @override
  String toString() {
    return 'ExerciseSetRequest(set: $set, weight: $weight, reps: $reps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSetRequestImpl &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, set, weight, reps);

  /// Create a copy of ExerciseSetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSetRequestImplCopyWith<_$ExerciseSetRequestImpl> get copyWith =>
      __$$ExerciseSetRequestImplCopyWithImpl<_$ExerciseSetRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseSetRequestImplToJson(
      this,
    );
  }
}

abstract class _ExerciseSetRequest implements ExerciseSetRequest {
  const factory _ExerciseSetRequest(
      {required final int set,
      required final double weight,
      required final int reps}) = _$ExerciseSetRequestImpl;

  factory _ExerciseSetRequest.fromJson(Map<String, dynamic> json) =
      _$ExerciseSetRequestImpl.fromJson;

  @override
  int get set;
  @override
  double get weight;
  @override
  int get reps;

  /// Create a copy of ExerciseSetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseSetRequestImplCopyWith<_$ExerciseSetRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseRecordRequest _$ExerciseRecordRequestFromJson(
    Map<String, dynamic> json) {
  return _ExerciseRecordRequest.fromJson(json);
}

/// @nodoc
mixin _$ExerciseRecordRequest {
  int get exerciseId => throw _privateConstructorUsedError;
  List<ExerciseSetRequest> get sets => throw _privateConstructorUsedError;

  /// Serializes this ExerciseRecordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseRecordRequestCopyWith<ExerciseRecordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseRecordRequestCopyWith<$Res> {
  factory $ExerciseRecordRequestCopyWith(ExerciseRecordRequest value,
          $Res Function(ExerciseRecordRequest) then) =
      _$ExerciseRecordRequestCopyWithImpl<$Res, ExerciseRecordRequest>;
  @useResult
  $Res call({int exerciseId, List<ExerciseSetRequest> sets});
}

/// @nodoc
class _$ExerciseRecordRequestCopyWithImpl<$Res,
        $Val extends ExerciseRecordRequest>
    implements $ExerciseRecordRequestCopyWith<$Res> {
  _$ExerciseRecordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? sets = null,
  }) {
    return _then(_value.copyWith(
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseRecordRequestImplCopyWith<$Res>
    implements $ExerciseRecordRequestCopyWith<$Res> {
  factory _$$ExerciseRecordRequestImplCopyWith(
          _$ExerciseRecordRequestImpl value,
          $Res Function(_$ExerciseRecordRequestImpl) then) =
      __$$ExerciseRecordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int exerciseId, List<ExerciseSetRequest> sets});
}

/// @nodoc
class __$$ExerciseRecordRequestImplCopyWithImpl<$Res>
    extends _$ExerciseRecordRequestCopyWithImpl<$Res,
        _$ExerciseRecordRequestImpl>
    implements _$$ExerciseRecordRequestImplCopyWith<$Res> {
  __$$ExerciseRecordRequestImplCopyWithImpl(_$ExerciseRecordRequestImpl _value,
      $Res Function(_$ExerciseRecordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? sets = null,
  }) {
    return _then(_$ExerciseRecordRequestImpl(
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseRecordRequestImpl implements _ExerciseRecordRequest {
  const _$ExerciseRecordRequestImpl(
      {required this.exerciseId, required final List<ExerciseSetRequest> sets})
      : _sets = sets;

  factory _$ExerciseRecordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseRecordRequestImplFromJson(json);

  @override
  final int exerciseId;
  final List<ExerciseSetRequest> _sets;
  @override
  List<ExerciseSetRequest> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  String toString() {
    return 'ExerciseRecordRequest(exerciseId: $exerciseId, sets: $sets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseRecordRequestImpl &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            const DeepCollectionEquality().equals(other._sets, _sets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, exerciseId, const DeepCollectionEquality().hash(_sets));

  /// Create a copy of ExerciseRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseRecordRequestImplCopyWith<_$ExerciseRecordRequestImpl>
      get copyWith => __$$ExerciseRecordRequestImplCopyWithImpl<
          _$ExerciseRecordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseRecordRequestImplToJson(
      this,
    );
  }
}

abstract class _ExerciseRecordRequest implements ExerciseRecordRequest {
  const factory _ExerciseRecordRequest(
          {required final int exerciseId,
          required final List<ExerciseSetRequest> sets}) =
      _$ExerciseRecordRequestImpl;

  factory _ExerciseRecordRequest.fromJson(Map<String, dynamic> json) =
      _$ExerciseRecordRequestImpl.fromJson;

  @override
  int get exerciseId;
  @override
  List<ExerciseSetRequest> get sets;

  /// Create a copy of ExerciseRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseRecordRequestImplCopyWith<_$ExerciseRecordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExerciseRecordGroupRequest _$ExerciseRecordGroupRequestFromJson(
    Map<String, dynamic> json) {
  return _ExerciseRecordGroupRequest.fromJson(json);
}

/// @nodoc
mixin _$ExerciseRecordGroupRequest {
  int get groupId => throw _privateConstructorUsedError;
  DateTime get exerciseDate => throw _privateConstructorUsedError;
  List<ExerciseRecordRequest> get exercises =>
      throw _privateConstructorUsedError;

  /// Serializes this ExerciseRecordGroupRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseRecordGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseRecordGroupRequestCopyWith<ExerciseRecordGroupRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseRecordGroupRequestCopyWith<$Res> {
  factory $ExerciseRecordGroupRequestCopyWith(ExerciseRecordGroupRequest value,
          $Res Function(ExerciseRecordGroupRequest) then) =
      _$ExerciseRecordGroupRequestCopyWithImpl<$Res,
          ExerciseRecordGroupRequest>;
  @useResult
  $Res call(
      {int groupId,
      DateTime exerciseDate,
      List<ExerciseRecordRequest> exercises});
}

/// @nodoc
class _$ExerciseRecordGroupRequestCopyWithImpl<$Res,
        $Val extends ExerciseRecordGroupRequest>
    implements $ExerciseRecordGroupRequestCopyWith<$Res> {
  _$ExerciseRecordGroupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseRecordGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? exerciseDate = null,
    Object? exercises = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseDate: null == exerciseDate
          ? _value.exerciseDate
          : exerciseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseRecordRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseRecordGroupRequestImplCopyWith<$Res>
    implements $ExerciseRecordGroupRequestCopyWith<$Res> {
  factory _$$ExerciseRecordGroupRequestImplCopyWith(
          _$ExerciseRecordGroupRequestImpl value,
          $Res Function(_$ExerciseRecordGroupRequestImpl) then) =
      __$$ExerciseRecordGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int groupId,
      DateTime exerciseDate,
      List<ExerciseRecordRequest> exercises});
}

/// @nodoc
class __$$ExerciseRecordGroupRequestImplCopyWithImpl<$Res>
    extends _$ExerciseRecordGroupRequestCopyWithImpl<$Res,
        _$ExerciseRecordGroupRequestImpl>
    implements _$$ExerciseRecordGroupRequestImplCopyWith<$Res> {
  __$$ExerciseRecordGroupRequestImplCopyWithImpl(
      _$ExerciseRecordGroupRequestImpl _value,
      $Res Function(_$ExerciseRecordGroupRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseRecordGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? exerciseDate = null,
    Object? exercises = null,
  }) {
    return _then(_$ExerciseRecordGroupRequestImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseDate: null == exerciseDate
          ? _value.exerciseDate
          : exerciseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseRecordRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseRecordGroupRequestImpl implements _ExerciseRecordGroupRequest {
  const _$ExerciseRecordGroupRequestImpl(
      {required this.groupId,
      required this.exerciseDate,
      required final List<ExerciseRecordRequest> exercises})
      : _exercises = exercises;

  factory _$ExerciseRecordGroupRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExerciseRecordGroupRequestImplFromJson(json);

  @override
  final int groupId;
  @override
  final DateTime exerciseDate;
  final List<ExerciseRecordRequest> _exercises;
  @override
  List<ExerciseRecordRequest> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'ExerciseRecordGroupRequest(groupId: $groupId, exerciseDate: $exerciseDate, exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseRecordGroupRequestImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.exerciseDate, exerciseDate) ||
                other.exerciseDate == exerciseDate) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, exerciseDate,
      const DeepCollectionEquality().hash(_exercises));

  /// Create a copy of ExerciseRecordGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseRecordGroupRequestImplCopyWith<_$ExerciseRecordGroupRequestImpl>
      get copyWith => __$$ExerciseRecordGroupRequestImplCopyWithImpl<
          _$ExerciseRecordGroupRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseRecordGroupRequestImplToJson(
      this,
    );
  }
}

abstract class _ExerciseRecordGroupRequest
    implements ExerciseRecordGroupRequest {
  const factory _ExerciseRecordGroupRequest(
          {required final int groupId,
          required final DateTime exerciseDate,
          required final List<ExerciseRecordRequest> exercises}) =
      _$ExerciseRecordGroupRequestImpl;

  factory _ExerciseRecordGroupRequest.fromJson(Map<String, dynamic> json) =
      _$ExerciseRecordGroupRequestImpl.fromJson;

  @override
  int get groupId;
  @override
  DateTime get exerciseDate;
  @override
  List<ExerciseRecordRequest> get exercises;

  /// Create a copy of ExerciseRecordGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseRecordGroupRequestImplCopyWith<_$ExerciseRecordGroupRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
