// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_volumes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeekVolumes _$WeekVolumesFromJson(Map<String, dynamic> json) {
  return _WeekVolumes.fromJson(json);
}

/// @nodoc
mixin _$WeekVolumes {
  int get id => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get week => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this WeekVolumes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekVolumes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekVolumesCopyWith<WeekVolumes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekVolumesCopyWith<$Res> {
  factory $WeekVolumesCopyWith(
          WeekVolumes value, $Res Function(WeekVolumes) then) =
      _$WeekVolumesCopyWithImpl<$Res, WeekVolumes>;
  @useResult
  $Res call({int id, int year, int week, double volume});
}

/// @nodoc
class _$WeekVolumesCopyWithImpl<$Res, $Val extends WeekVolumes>
    implements $WeekVolumesCopyWith<$Res> {
  _$WeekVolumesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekVolumes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? year = null,
    Object? week = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekVolumesImplCopyWith<$Res>
    implements $WeekVolumesCopyWith<$Res> {
  factory _$$WeekVolumesImplCopyWith(
          _$WeekVolumesImpl value, $Res Function(_$WeekVolumesImpl) then) =
      __$$WeekVolumesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int year, int week, double volume});
}

/// @nodoc
class __$$WeekVolumesImplCopyWithImpl<$Res>
    extends _$WeekVolumesCopyWithImpl<$Res, _$WeekVolumesImpl>
    implements _$$WeekVolumesImplCopyWith<$Res> {
  __$$WeekVolumesImplCopyWithImpl(
      _$WeekVolumesImpl _value, $Res Function(_$WeekVolumesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekVolumes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? year = null,
    Object? week = null,
    Object? volume = null,
  }) {
    return _then(_$WeekVolumesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekVolumesImpl implements _WeekVolumes {
  const _$WeekVolumesImpl(
      {required this.id,
      required this.year,
      required this.week,
      required this.volume});

  factory _$WeekVolumesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekVolumesImplFromJson(json);

  @override
  final int id;
  @override
  final int year;
  @override
  final int week;
  @override
  final double volume;

  @override
  String toString() {
    return 'WeekVolumes(id: $id, year: $year, week: $week, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekVolumesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, year, week, volume);

  /// Create a copy of WeekVolumes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekVolumesImplCopyWith<_$WeekVolumesImpl> get copyWith =>
      __$$WeekVolumesImplCopyWithImpl<_$WeekVolumesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekVolumesImplToJson(
      this,
    );
  }
}

abstract class _WeekVolumes implements WeekVolumes {
  const factory _WeekVolumes(
      {required final int id,
      required final int year,
      required final int week,
      required final double volume}) = _$WeekVolumesImpl;

  factory _WeekVolumes.fromJson(Map<String, dynamic> json) =
      _$WeekVolumesImpl.fromJson;

  @override
  int get id;
  @override
  int get year;
  @override
  int get week;
  @override
  double get volume;

  /// Create a copy of WeekVolumes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekVolumesImplCopyWith<_$WeekVolumesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
