// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_volumes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthVolumes _$MonthVolumesFromJson(Map<String, dynamic> json) {
  return _MonthVolumes.fromJson(json);
}

/// @nodoc
mixin _$MonthVolumes {
  int get id => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this MonthVolumes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthVolumes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthVolumesCopyWith<MonthVolumes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthVolumesCopyWith<$Res> {
  factory $MonthVolumesCopyWith(
          MonthVolumes value, $Res Function(MonthVolumes) then) =
      _$MonthVolumesCopyWithImpl<$Res, MonthVolumes>;
  @useResult
  $Res call({int id, int year, int month, double volume});
}

/// @nodoc
class _$MonthVolumesCopyWithImpl<$Res, $Val extends MonthVolumes>
    implements $MonthVolumesCopyWith<$Res> {
  _$MonthVolumesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthVolumes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? year = null,
    Object? month = null,
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
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthVolumesImplCopyWith<$Res>
    implements $MonthVolumesCopyWith<$Res> {
  factory _$$MonthVolumesImplCopyWith(
          _$MonthVolumesImpl value, $Res Function(_$MonthVolumesImpl) then) =
      __$$MonthVolumesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int year, int month, double volume});
}

/// @nodoc
class __$$MonthVolumesImplCopyWithImpl<$Res>
    extends _$MonthVolumesCopyWithImpl<$Res, _$MonthVolumesImpl>
    implements _$$MonthVolumesImplCopyWith<$Res> {
  __$$MonthVolumesImplCopyWithImpl(
      _$MonthVolumesImpl _value, $Res Function(_$MonthVolumesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthVolumes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? year = null,
    Object? month = null,
    Object? volume = null,
  }) {
    return _then(_$MonthVolumesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
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
class _$MonthVolumesImpl implements _MonthVolumes {
  const _$MonthVolumesImpl(
      {required this.id,
      required this.year,
      required this.month,
      required this.volume});

  factory _$MonthVolumesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthVolumesImplFromJson(json);

  @override
  final int id;
  @override
  final int year;
  @override
  final int month;
  @override
  final double volume;

  @override
  String toString() {
    return 'MonthVolumes(id: $id, year: $year, month: $month, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthVolumesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, year, month, volume);

  /// Create a copy of MonthVolumes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthVolumesImplCopyWith<_$MonthVolumesImpl> get copyWith =>
      __$$MonthVolumesImplCopyWithImpl<_$MonthVolumesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthVolumesImplToJson(
      this,
    );
  }
}

abstract class _MonthVolumes implements MonthVolumes {
  const factory _MonthVolumes(
      {required final int id,
      required final int year,
      required final int month,
      required final double volume}) = _$MonthVolumesImpl;

  factory _MonthVolumes.fromJson(Map<String, dynamic> json) =
      _$MonthVolumesImpl.fromJson;

  @override
  int get id;
  @override
  int get year;
  @override
  int get month;
  @override
  double get volume;

  /// Create a copy of MonthVolumes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthVolumesImplCopyWith<_$MonthVolumesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
