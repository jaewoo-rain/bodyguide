// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_analytics_report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticeAnalyticsReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeAnalyticsReportEventCopyWith<$Res> {
  factory $PracticeAnalyticsReportEventCopyWith(
          PracticeAnalyticsReportEvent value,
          $Res Function(PracticeAnalyticsReportEvent) then) =
      _$PracticeAnalyticsReportEventCopyWithImpl<$Res,
          PracticeAnalyticsReportEvent>;
}

/// @nodoc
class _$PracticeAnalyticsReportEventCopyWithImpl<$Res,
        $Val extends PracticeAnalyticsReportEvent>
    implements $PracticeAnalyticsReportEventCopyWith<$Res> {
  _$PracticeAnalyticsReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeAnalyticsReportEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$initializeImplCopyWith<$Res> {
  factory _$$initializeImplCopyWith(
          _$initializeImpl value, $Res Function(_$initializeImpl) then) =
      __$$initializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initializeImplCopyWithImpl<$Res>
    extends _$PracticeAnalyticsReportEventCopyWithImpl<$Res, _$initializeImpl>
    implements _$$initializeImplCopyWith<$Res> {
  __$$initializeImplCopyWithImpl(
      _$initializeImpl _value, $Res Function(_$initializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeAnalyticsReportEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$initializeImpl implements _initialize {
  const _$initializeImpl();

  @override
  String toString() {
    return 'PracticeAnalyticsReportEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _initialize implements PracticeAnalyticsReportEvent {
  const factory _initialize() = _$initializeImpl;
}

/// @nodoc
mixin _$PracticeAnalyticsReportState {
  ExerciseAnalysisReport? get report =>
      throw _privateConstructorUsedError; // API 응답 결과를 저장하는 필드
  BigThree? get bigThree => throw _privateConstructorUsedError;
  DailyVolumesGraph? get dailyVolume => throw _privateConstructorUsedError;
  MonthVolumesGraph? get monthlyVolume => throw _privateConstructorUsedError;
  WeekVolumeGraph? get weekVolume => throw _privateConstructorUsedError;
  Set<String> get goals => throw _privateConstructorUsedError;

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeAnalyticsReportStateCopyWith<PracticeAnalyticsReportState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeAnalyticsReportStateCopyWith<$Res> {
  factory $PracticeAnalyticsReportStateCopyWith(
          PracticeAnalyticsReportState value,
          $Res Function(PracticeAnalyticsReportState) then) =
      _$PracticeAnalyticsReportStateCopyWithImpl<$Res,
          PracticeAnalyticsReportState>;
  @useResult
  $Res call(
      {ExerciseAnalysisReport? report,
      BigThree? bigThree,
      DailyVolumesGraph? dailyVolume,
      MonthVolumesGraph? monthlyVolume,
      WeekVolumeGraph? weekVolume,
      Set<String> goals});

  $ExerciseAnalysisReportCopyWith<$Res>? get report;
  $BigThreeCopyWith<$Res>? get bigThree;
  $DailyVolumesGraphCopyWith<$Res>? get dailyVolume;
  $MonthVolumesGraphCopyWith<$Res>? get monthlyVolume;
  $WeekVolumeGraphCopyWith<$Res>? get weekVolume;
}

/// @nodoc
class _$PracticeAnalyticsReportStateCopyWithImpl<$Res,
        $Val extends PracticeAnalyticsReportState>
    implements $PracticeAnalyticsReportStateCopyWith<$Res> {
  _$PracticeAnalyticsReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = freezed,
    Object? bigThree = freezed,
    Object? dailyVolume = freezed,
    Object? monthlyVolume = freezed,
    Object? weekVolume = freezed,
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ExerciseAnalysisReport?,
      bigThree: freezed == bigThree
          ? _value.bigThree
          : bigThree // ignore: cast_nullable_to_non_nullable
              as BigThree?,
      dailyVolume: freezed == dailyVolume
          ? _value.dailyVolume
          : dailyVolume // ignore: cast_nullable_to_non_nullable
              as DailyVolumesGraph?,
      monthlyVolume: freezed == monthlyVolume
          ? _value.monthlyVolume
          : monthlyVolume // ignore: cast_nullable_to_non_nullable
              as MonthVolumesGraph?,
      weekVolume: freezed == weekVolume
          ? _value.weekVolume
          : weekVolume // ignore: cast_nullable_to_non_nullable
              as WeekVolumeGraph?,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseAnalysisReportCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ExerciseAnalysisReportCopyWith<$Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BigThreeCopyWith<$Res>? get bigThree {
    if (_value.bigThree == null) {
      return null;
    }

    return $BigThreeCopyWith<$Res>(_value.bigThree!, (value) {
      return _then(_value.copyWith(bigThree: value) as $Val);
    });
  }

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyVolumesGraphCopyWith<$Res>? get dailyVolume {
    if (_value.dailyVolume == null) {
      return null;
    }

    return $DailyVolumesGraphCopyWith<$Res>(_value.dailyVolume!, (value) {
      return _then(_value.copyWith(dailyVolume: value) as $Val);
    });
  }

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthVolumesGraphCopyWith<$Res>? get monthlyVolume {
    if (_value.monthlyVolume == null) {
      return null;
    }

    return $MonthVolumesGraphCopyWith<$Res>(_value.monthlyVolume!, (value) {
      return _then(_value.copyWith(monthlyVolume: value) as $Val);
    });
  }

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekVolumeGraphCopyWith<$Res>? get weekVolume {
    if (_value.weekVolume == null) {
      return null;
    }

    return $WeekVolumeGraphCopyWith<$Res>(_value.weekVolume!, (value) {
      return _then(_value.copyWith(weekVolume: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PracticeAnalyticsReportStateImplCopyWith<$Res>
    implements $PracticeAnalyticsReportStateCopyWith<$Res> {
  factory _$$PracticeAnalyticsReportStateImplCopyWith(
          _$PracticeAnalyticsReportStateImpl value,
          $Res Function(_$PracticeAnalyticsReportStateImpl) then) =
      __$$PracticeAnalyticsReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExerciseAnalysisReport? report,
      BigThree? bigThree,
      DailyVolumesGraph? dailyVolume,
      MonthVolumesGraph? monthlyVolume,
      WeekVolumeGraph? weekVolume,
      Set<String> goals});

  @override
  $ExerciseAnalysisReportCopyWith<$Res>? get report;
  @override
  $BigThreeCopyWith<$Res>? get bigThree;
  @override
  $DailyVolumesGraphCopyWith<$Res>? get dailyVolume;
  @override
  $MonthVolumesGraphCopyWith<$Res>? get monthlyVolume;
  @override
  $WeekVolumeGraphCopyWith<$Res>? get weekVolume;
}

/// @nodoc
class __$$PracticeAnalyticsReportStateImplCopyWithImpl<$Res>
    extends _$PracticeAnalyticsReportStateCopyWithImpl<$Res,
        _$PracticeAnalyticsReportStateImpl>
    implements _$$PracticeAnalyticsReportStateImplCopyWith<$Res> {
  __$$PracticeAnalyticsReportStateImplCopyWithImpl(
      _$PracticeAnalyticsReportStateImpl _value,
      $Res Function(_$PracticeAnalyticsReportStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = freezed,
    Object? bigThree = freezed,
    Object? dailyVolume = freezed,
    Object? monthlyVolume = freezed,
    Object? weekVolume = freezed,
    Object? goals = null,
  }) {
    return _then(_$PracticeAnalyticsReportStateImpl(
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ExerciseAnalysisReport?,
      bigThree: freezed == bigThree
          ? _value.bigThree
          : bigThree // ignore: cast_nullable_to_non_nullable
              as BigThree?,
      dailyVolume: freezed == dailyVolume
          ? _value.dailyVolume
          : dailyVolume // ignore: cast_nullable_to_non_nullable
              as DailyVolumesGraph?,
      monthlyVolume: freezed == monthlyVolume
          ? _value.monthlyVolume
          : monthlyVolume // ignore: cast_nullable_to_non_nullable
              as MonthVolumesGraph?,
      weekVolume: freezed == weekVolume
          ? _value.weekVolume
          : weekVolume // ignore: cast_nullable_to_non_nullable
              as WeekVolumeGraph?,
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$PracticeAnalyticsReportStateImpl
    implements _PracticeAnalyticsReportState {
  const _$PracticeAnalyticsReportStateImpl(
      {this.report,
      this.bigThree,
      this.dailyVolume,
      this.monthlyVolume,
      this.weekVolume,
      final Set<String> goals = const {}})
      : _goals = goals;

  @override
  final ExerciseAnalysisReport? report;
// API 응답 결과를 저장하는 필드
  @override
  final BigThree? bigThree;
  @override
  final DailyVolumesGraph? dailyVolume;
  @override
  final MonthVolumesGraph? monthlyVolume;
  @override
  final WeekVolumeGraph? weekVolume;
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
    return 'PracticeAnalyticsReportState(report: $report, bigThree: $bigThree, dailyVolume: $dailyVolume, monthlyVolume: $monthlyVolume, weekVolume: $weekVolume, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeAnalyticsReportStateImpl &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.bigThree, bigThree) ||
                other.bigThree == bigThree) &&
            (identical(other.dailyVolume, dailyVolume) ||
                other.dailyVolume == dailyVolume) &&
            (identical(other.monthlyVolume, monthlyVolume) ||
                other.monthlyVolume == monthlyVolume) &&
            (identical(other.weekVolume, weekVolume) ||
                other.weekVolume == weekVolume) &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report, bigThree, dailyVolume,
      monthlyVolume, weekVolume, const DeepCollectionEquality().hash(_goals));

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeAnalyticsReportStateImplCopyWith<
          _$PracticeAnalyticsReportStateImpl>
      get copyWith => __$$PracticeAnalyticsReportStateImplCopyWithImpl<
          _$PracticeAnalyticsReportStateImpl>(this, _$identity);
}

abstract class _PracticeAnalyticsReportState
    implements PracticeAnalyticsReportState {
  const factory _PracticeAnalyticsReportState(
      {final ExerciseAnalysisReport? report,
      final BigThree? bigThree,
      final DailyVolumesGraph? dailyVolume,
      final MonthVolumesGraph? monthlyVolume,
      final WeekVolumeGraph? weekVolume,
      final Set<String> goals}) = _$PracticeAnalyticsReportStateImpl;

  @override
  ExerciseAnalysisReport? get report; // API 응답 결과를 저장하는 필드
  @override
  BigThree? get bigThree;
  @override
  DailyVolumesGraph? get dailyVolume;
  @override
  MonthVolumesGraph? get monthlyVolume;
  @override
  WeekVolumeGraph? get weekVolume;
  @override
  Set<String> get goals;

  /// Create a copy of PracticeAnalyticsReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeAnalyticsReportStateImplCopyWith<
          _$PracticeAnalyticsReportStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
