// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volume_chart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VolumeChartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadVolumeChartEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadVolumeChartEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadVolumeChartEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeChartEventCopyWith<$Res> {
  factory $VolumeChartEventCopyWith(
          VolumeChartEvent value, $Res Function(VolumeChartEvent) then) =
      _$VolumeChartEventCopyWithImpl<$Res, VolumeChartEvent>;
}

/// @nodoc
class _$VolumeChartEventCopyWithImpl<$Res, $Val extends VolumeChartEvent>
    implements $VolumeChartEventCopyWith<$Res> {
  _$VolumeChartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumeChartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadVolumeChartEventImplCopyWith<$Res> {
  factory _$$LoadVolumeChartEventImplCopyWith(_$LoadVolumeChartEventImpl value,
          $Res Function(_$LoadVolumeChartEventImpl) then) =
      __$$LoadVolumeChartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadVolumeChartEventImplCopyWithImpl<$Res>
    extends _$VolumeChartEventCopyWithImpl<$Res, _$LoadVolumeChartEventImpl>
    implements _$$LoadVolumeChartEventImplCopyWith<$Res> {
  __$$LoadVolumeChartEventImplCopyWithImpl(_$LoadVolumeChartEventImpl _value,
      $Res Function(_$LoadVolumeChartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolumeChartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadVolumeChartEventImpl implements LoadVolumeChartEvent {
  const _$LoadVolumeChartEventImpl();

  @override
  String toString() {
    return 'VolumeChartEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadVolumeChartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadVolumeChartEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadVolumeChartEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadVolumeChartEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadVolumeChartEvent implements VolumeChartEvent {
  const factory LoadVolumeChartEvent() = _$LoadVolumeChartEventImpl;
}
