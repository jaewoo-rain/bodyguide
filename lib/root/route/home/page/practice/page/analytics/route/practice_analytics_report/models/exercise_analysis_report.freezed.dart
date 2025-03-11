// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_analysis_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseAnalysisReport _$ExerciseAnalysisReportFromJson(
    Map<String, dynamic> json) {
  return _ExerciseAnalysisReport.fromJson(json);
}

/// @nodoc
mixin _$ExerciseAnalysisReport {
  int get totalScore => throw _privateConstructorUsedError;
  String get totalLevel => throw _privateConstructorUsedError;
  double get topPercent => throw _privateConstructorUsedError;
  @AbilityItemMapConverter()
  Map<String, AbilityItem> get ability => throw _privateConstructorUsedError;
  List<WeekMuscle> get weekMuscle => throw _privateConstructorUsedError;

  /// Serializes this ExerciseAnalysisReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseAnalysisReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseAnalysisReportCopyWith<ExerciseAnalysisReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseAnalysisReportCopyWith<$Res> {
  factory $ExerciseAnalysisReportCopyWith(ExerciseAnalysisReport value,
          $Res Function(ExerciseAnalysisReport) then) =
      _$ExerciseAnalysisReportCopyWithImpl<$Res, ExerciseAnalysisReport>;
  @useResult
  $Res call(
      {int totalScore,
      String totalLevel,
      double topPercent,
      @AbilityItemMapConverter() Map<String, AbilityItem> ability,
      List<WeekMuscle> weekMuscle});
}

/// @nodoc
class _$ExerciseAnalysisReportCopyWithImpl<$Res,
        $Val extends ExerciseAnalysisReport>
    implements $ExerciseAnalysisReportCopyWith<$Res> {
  _$ExerciseAnalysisReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseAnalysisReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalScore = null,
    Object? totalLevel = null,
    Object? topPercent = null,
    Object? ability = null,
    Object? weekMuscle = null,
  }) {
    return _then(_value.copyWith(
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalLevel: null == totalLevel
          ? _value.totalLevel
          : totalLevel // ignore: cast_nullable_to_non_nullable
              as String,
      topPercent: null == topPercent
          ? _value.topPercent
          : topPercent // ignore: cast_nullable_to_non_nullable
              as double,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Map<String, AbilityItem>,
      weekMuscle: null == weekMuscle
          ? _value.weekMuscle
          : weekMuscle // ignore: cast_nullable_to_non_nullable
              as List<WeekMuscle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseAnalysisReportImplCopyWith<$Res>
    implements $ExerciseAnalysisReportCopyWith<$Res> {
  factory _$$ExerciseAnalysisReportImplCopyWith(
          _$ExerciseAnalysisReportImpl value,
          $Res Function(_$ExerciseAnalysisReportImpl) then) =
      __$$ExerciseAnalysisReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalScore,
      String totalLevel,
      double topPercent,
      @AbilityItemMapConverter() Map<String, AbilityItem> ability,
      List<WeekMuscle> weekMuscle});
}

/// @nodoc
class __$$ExerciseAnalysisReportImplCopyWithImpl<$Res>
    extends _$ExerciseAnalysisReportCopyWithImpl<$Res,
        _$ExerciseAnalysisReportImpl>
    implements _$$ExerciseAnalysisReportImplCopyWith<$Res> {
  __$$ExerciseAnalysisReportImplCopyWithImpl(
      _$ExerciseAnalysisReportImpl _value,
      $Res Function(_$ExerciseAnalysisReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseAnalysisReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalScore = null,
    Object? totalLevel = null,
    Object? topPercent = null,
    Object? ability = null,
    Object? weekMuscle = null,
  }) {
    return _then(_$ExerciseAnalysisReportImpl(
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalLevel: null == totalLevel
          ? _value.totalLevel
          : totalLevel // ignore: cast_nullable_to_non_nullable
              as String,
      topPercent: null == topPercent
          ? _value.topPercent
          : topPercent // ignore: cast_nullable_to_non_nullable
              as double,
      ability: null == ability
          ? _value._ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Map<String, AbilityItem>,
      weekMuscle: null == weekMuscle
          ? _value._weekMuscle
          : weekMuscle // ignore: cast_nullable_to_non_nullable
              as List<WeekMuscle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseAnalysisReportImpl implements _ExerciseAnalysisReport {
  const _$ExerciseAnalysisReportImpl(
      {required this.totalScore,
      required this.totalLevel,
      required this.topPercent,
      @AbilityItemMapConverter()
      required final Map<String, AbilityItem> ability,
      required final List<WeekMuscle> weekMuscle})
      : _ability = ability,
        _weekMuscle = weekMuscle;

  factory _$ExerciseAnalysisReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseAnalysisReportImplFromJson(json);

  @override
  final int totalScore;
  @override
  final String totalLevel;
  @override
  final double topPercent;
  final Map<String, AbilityItem> _ability;
  @override
  @AbilityItemMapConverter()
  Map<String, AbilityItem> get ability {
    if (_ability is EqualUnmodifiableMapView) return _ability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ability);
  }

  final List<WeekMuscle> _weekMuscle;
  @override
  List<WeekMuscle> get weekMuscle {
    if (_weekMuscle is EqualUnmodifiableListView) return _weekMuscle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekMuscle);
  }

  @override
  String toString() {
    return 'ExerciseAnalysisReport(totalScore: $totalScore, totalLevel: $totalLevel, topPercent: $topPercent, ability: $ability, weekMuscle: $weekMuscle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseAnalysisReportImpl &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.totalLevel, totalLevel) ||
                other.totalLevel == totalLevel) &&
            (identical(other.topPercent, topPercent) ||
                other.topPercent == topPercent) &&
            const DeepCollectionEquality().equals(other._ability, _ability) &&
            const DeepCollectionEquality()
                .equals(other._weekMuscle, _weekMuscle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalScore,
      totalLevel,
      topPercent,
      const DeepCollectionEquality().hash(_ability),
      const DeepCollectionEquality().hash(_weekMuscle));

  /// Create a copy of ExerciseAnalysisReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseAnalysisReportImplCopyWith<_$ExerciseAnalysisReportImpl>
      get copyWith => __$$ExerciseAnalysisReportImplCopyWithImpl<
          _$ExerciseAnalysisReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseAnalysisReportImplToJson(
      this,
    );
  }
}

abstract class _ExerciseAnalysisReport implements ExerciseAnalysisReport {
  const factory _ExerciseAnalysisReport(
          {required final int totalScore,
          required final String totalLevel,
          required final double topPercent,
          @AbilityItemMapConverter()
          required final Map<String, AbilityItem> ability,
          required final List<WeekMuscle> weekMuscle}) =
      _$ExerciseAnalysisReportImpl;

  factory _ExerciseAnalysisReport.fromJson(Map<String, dynamic> json) =
      _$ExerciseAnalysisReportImpl.fromJson;

  @override
  int get totalScore;
  @override
  String get totalLevel;
  @override
  double get topPercent;
  @override
  @AbilityItemMapConverter()
  Map<String, AbilityItem> get ability;
  @override
  List<WeekMuscle> get weekMuscle;

  /// Create a copy of ExerciseAnalysisReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseAnalysisReportImplCopyWith<_$ExerciseAnalysisReportImpl>
      get copyWith => throw _privateConstructorUsedError;
}
