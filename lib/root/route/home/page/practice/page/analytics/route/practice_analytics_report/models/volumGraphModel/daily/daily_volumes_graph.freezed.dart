// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_volumes_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyVolumesGraph _$DailyVolumesGraphFromJson(Map<String, dynamic> json) {
  return _DailyVolumesGraph.fromJson(json);
}

/// @nodoc
mixin _$DailyVolumesGraph {
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get hasNext =>
      throw _privateConstructorUsedError; // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  List<DailyVolumes> get volumes => throw _privateConstructorUsedError;

  /// Serializes this DailyVolumesGraph to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyVolumesGraph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyVolumesGraphCopyWith<DailyVolumesGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyVolumesGraphCopyWith<$Res> {
  factory $DailyVolumesGraphCopyWith(
          DailyVolumesGraph value, $Res Function(DailyVolumesGraph) then) =
      _$DailyVolumesGraphCopyWithImpl<$Res, DailyVolumesGraph>;
  @useResult
  $Res call(
      {int currentPage,
      int pageSize,
      bool hasNext,
      List<DailyVolumes> volumes});
}

/// @nodoc
class _$DailyVolumesGraphCopyWithImpl<$Res, $Val extends DailyVolumesGraph>
    implements $DailyVolumesGraphCopyWith<$Res> {
  _$DailyVolumesGraphCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyVolumesGraph
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
              as List<DailyVolumes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyVolumesGraphImplCopyWith<$Res>
    implements $DailyVolumesGraphCopyWith<$Res> {
  factory _$$DailyVolumesGraphImplCopyWith(_$DailyVolumesGraphImpl value,
          $Res Function(_$DailyVolumesGraphImpl) then) =
      __$$DailyVolumesGraphImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      int pageSize,
      bool hasNext,
      List<DailyVolumes> volumes});
}

/// @nodoc
class __$$DailyVolumesGraphImplCopyWithImpl<$Res>
    extends _$DailyVolumesGraphCopyWithImpl<$Res, _$DailyVolumesGraphImpl>
    implements _$$DailyVolumesGraphImplCopyWith<$Res> {
  __$$DailyVolumesGraphImplCopyWithImpl(_$DailyVolumesGraphImpl _value,
      $Res Function(_$DailyVolumesGraphImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyVolumesGraph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasNext = null,
    Object? volumes = null,
  }) {
    return _then(_$DailyVolumesGraphImpl(
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
              as List<DailyVolumes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyVolumesGraphImpl implements _DailyVolumesGraph {
  const _$DailyVolumesGraphImpl(
      {required this.currentPage,
      required this.pageSize,
      required this.hasNext,
      required final List<DailyVolumes> volumes})
      : _volumes = volumes;

  factory _$DailyVolumesGraphImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyVolumesGraphImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final bool hasNext;
// @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  final List<DailyVolumes> _volumes;
// @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  @override
  List<DailyVolumes> get volumes {
    if (_volumes is EqualUnmodifiableListView) return _volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_volumes);
  }

  @override
  String toString() {
    return 'DailyVolumesGraph(currentPage: $currentPage, pageSize: $pageSize, hasNext: $hasNext, volumes: $volumes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyVolumesGraphImpl &&
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

  /// Create a copy of DailyVolumesGraph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyVolumesGraphImplCopyWith<_$DailyVolumesGraphImpl> get copyWith =>
      __$$DailyVolumesGraphImplCopyWithImpl<_$DailyVolumesGraphImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyVolumesGraphImplToJson(
      this,
    );
  }
}

abstract class _DailyVolumesGraph implements DailyVolumesGraph {
  const factory _DailyVolumesGraph(
      {required final int currentPage,
      required final int pageSize,
      required final bool hasNext,
      required final List<DailyVolumes> volumes}) = _$DailyVolumesGraphImpl;

  factory _DailyVolumesGraph.fromJson(Map<String, dynamic> json) =
      _$DailyVolumesGraphImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  bool
      get hasNext; // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
  @override
  List<DailyVolumes> get volumes;

  /// Create a copy of DailyVolumesGraph
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyVolumesGraphImplCopyWith<_$DailyVolumesGraphImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
