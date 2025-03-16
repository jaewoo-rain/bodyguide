// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_volumes_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeekVolumeGraph _$WeekVolumeGraphFromJson(Map<String, dynamic> json) {
  return _WeekVolumeGraph.fromJson(json);
}

/// @nodoc
mixin _$WeekVolumeGraph {
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get hasNext =>
      throw _privateConstructorUsedError; // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  List<WeekVolumes> get volumes => throw _privateConstructorUsedError;

  /// Serializes this WeekVolumeGraph to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekVolumeGraph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekVolumeGraphCopyWith<WeekVolumeGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekVolumeGraphCopyWith<$Res> {
  factory $WeekVolumeGraphCopyWith(
          WeekVolumeGraph value, $Res Function(WeekVolumeGraph) then) =
      _$WeekVolumeGraphCopyWithImpl<$Res, WeekVolumeGraph>;
  @useResult
  $Res call(
      {int currentPage, int pageSize, bool hasNext, List<WeekVolumes> volumes});
}

/// @nodoc
class _$WeekVolumeGraphCopyWithImpl<$Res, $Val extends WeekVolumeGraph>
    implements $WeekVolumeGraphCopyWith<$Res> {
  _$WeekVolumeGraphCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekVolumeGraph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasNext = null,
    Object? volumes = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      volumes: null == volumes
          ? _value.volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as List<WeekVolumes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekVolumeGraphImplCopyWith<$Res>
    implements $WeekVolumeGraphCopyWith<$Res> {
  factory _$$WeekVolumeGraphImplCopyWith(_$WeekVolumeGraphImpl value,
          $Res Function(_$WeekVolumeGraphImpl) then) =
      __$$WeekVolumeGraphImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage, int pageSize, bool hasNext, List<WeekVolumes> volumes});
}

/// @nodoc
class __$$WeekVolumeGraphImplCopyWithImpl<$Res>
    extends _$WeekVolumeGraphCopyWithImpl<$Res, _$WeekVolumeGraphImpl>
    implements _$$WeekVolumeGraphImplCopyWith<$Res> {
  __$$WeekVolumeGraphImplCopyWithImpl(
      _$WeekVolumeGraphImpl _value, $Res Function(_$WeekVolumeGraphImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekVolumeGraph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasNext = null,
    Object? volumes = null,
  }) {
    return _then(_$WeekVolumeGraphImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      volumes: null == volumes
          ? _value._volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as List<WeekVolumes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekVolumeGraphImpl implements _WeekVolumeGraph {
  const _$WeekVolumeGraphImpl(
      {required this.currentPage,
      required this.pageSize,
      required this.hasNext,
      required final List<WeekVolumes> volumes})
      : _volumes = volumes;

  factory _$WeekVolumeGraphImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekVolumeGraphImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final bool hasNext;
// @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  final List<WeekVolumes> _volumes;
// @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  @override
  List<WeekVolumes> get volumes {
    if (_volumes is EqualUnmodifiableListView) return _volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_volumes);
  }

  @override
  String toString() {
    return 'WeekVolumeGraph(currentPage: $currentPage, pageSize: $pageSize, hasNext: $hasNext, volumes: $volumes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekVolumeGraphImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            const DeepCollectionEquality().equals(other._volumes, _volumes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, pageSize, hasNext,
      const DeepCollectionEquality().hash(_volumes));

  /// Create a copy of WeekVolumeGraph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekVolumeGraphImplCopyWith<_$WeekVolumeGraphImpl> get copyWith =>
      __$$WeekVolumeGraphImplCopyWithImpl<_$WeekVolumeGraphImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekVolumeGraphImplToJson(
      this,
    );
  }
}

abstract class _WeekVolumeGraph implements WeekVolumeGraph {
  const factory _WeekVolumeGraph(
      {required final int currentPage,
      required final int pageSize,
      required final bool hasNext,
      required final List<WeekVolumes> volumes}) = _$WeekVolumeGraphImpl;

  factory _WeekVolumeGraph.fromJson(Map<String, dynamic> json) =
      _$WeekVolumeGraphImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  bool
      get hasNext; // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  @override
  List<WeekVolumes> get volumes;

  /// Create a copy of WeekVolumeGraph
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekVolumeGraphImplCopyWith<_$WeekVolumeGraphImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
