// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_volumes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyVolumes _$DailyVolumesFromJson(Map<String, dynamic> json) {
  return _DailyVolumes.fromJson(json);
}

/// @nodoc
mixin _$DailyVolumes {
  int get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this DailyVolumes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyVolumes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyVolumesCopyWith<DailyVolumes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyVolumesCopyWith<$Res> {
  factory $DailyVolumesCopyWith(
          DailyVolumes value, $Res Function(DailyVolumes) then) =
      _$DailyVolumesCopyWithImpl<$Res, DailyVolumes>;
  @useResult
  $Res call({int id, DateTime date, double volume});
}

/// @nodoc
class _$DailyVolumesCopyWithImpl<$Res, $Val extends DailyVolumes>
    implements $DailyVolumesCopyWith<$Res> {
  _$DailyVolumesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyVolumes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyVolumesImplCopyWith<$Res>
    implements $DailyVolumesCopyWith<$Res> {
  factory _$$DailyVolumesImplCopyWith(
          _$DailyVolumesImpl value, $Res Function(_$DailyVolumesImpl) then) =
      __$$DailyVolumesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime date, double volume});
}

/// @nodoc
class __$$DailyVolumesImplCopyWithImpl<$Res>
    extends _$DailyVolumesCopyWithImpl<$Res, _$DailyVolumesImpl>
    implements _$$DailyVolumesImplCopyWith<$Res> {
  __$$DailyVolumesImplCopyWithImpl(
      _$DailyVolumesImpl _value, $Res Function(_$DailyVolumesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyVolumes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? volume = null,
  }) {
    return _then(_$DailyVolumesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyVolumesImpl implements _DailyVolumes {
  const _$DailyVolumesImpl(
      {required this.id, required this.date, required this.volume});

  factory _$DailyVolumesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyVolumesImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime date;
  @override
  final double volume;

  @override
  String toString() {
    return 'DailyVolumes(id: $id, date: $date, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyVolumesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, volume);

  /// Create a copy of DailyVolumes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyVolumesImplCopyWith<_$DailyVolumesImpl> get copyWith =>
      __$$DailyVolumesImplCopyWithImpl<_$DailyVolumesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyVolumesImplToJson(
      this,
    );
  }
}

abstract class _DailyVolumes implements DailyVolumes {
  const factory _DailyVolumes(
      {required final int id,
      required final DateTime date,
      required final double volume}) = _$DailyVolumesImpl;

  factory _DailyVolumes.fromJson(Map<String, dynamic> json) =
      _$DailyVolumesImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get date;
  @override
  double get volume;

  /// Create a copy of DailyVolumes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyVolumesImplCopyWith<_$DailyVolumesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
