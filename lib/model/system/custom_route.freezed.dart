// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomRoute {
  @protected
  CustomRoute? get parent => throw _privateConstructorUsedError;
  @protected
  String get endpoint => throw _privateConstructorUsedError;

  /// Create a copy of CustomRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomRouteCopyWith<CustomRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomRouteCopyWith<$Res> {
  factory $CustomRouteCopyWith(
          CustomRoute value, $Res Function(CustomRoute) then) =
      _$CustomRouteCopyWithImpl<$Res, CustomRoute>;
  @useResult
  $Res call({@protected CustomRoute? parent, @protected String endpoint});

  $CustomRouteCopyWith<$Res>? get parent;
}

/// @nodoc
class _$CustomRouteCopyWithImpl<$Res, $Val extends CustomRoute>
    implements $CustomRouteCopyWith<$Res> {
  _$CustomRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
    Object? endpoint = null,
  }) {
    return _then(_value.copyWith(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CustomRoute?,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CustomRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomRouteCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $CustomRouteCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomRouteImplCopyWith<$Res>
    implements $CustomRouteCopyWith<$Res> {
  factory _$$CustomRouteImplCopyWith(
          _$CustomRouteImpl value, $Res Function(_$CustomRouteImpl) then) =
      __$$CustomRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@protected CustomRoute? parent, @protected String endpoint});

  @override
  $CustomRouteCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$CustomRouteImplCopyWithImpl<$Res>
    extends _$CustomRouteCopyWithImpl<$Res, _$CustomRouteImpl>
    implements _$$CustomRouteImplCopyWith<$Res> {
  __$$CustomRouteImplCopyWithImpl(
      _$CustomRouteImpl _value, $Res Function(_$CustomRouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
    Object? endpoint = null,
  }) {
    return _then(_$CustomRouteImpl(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CustomRoute?,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomRouteImpl extends _CustomRoute {
  const _$CustomRouteImpl(
      {@protected required this.parent, @protected required this.endpoint})
      : super._();

  @override
  @protected
  final CustomRoute? parent;
  @override
  @protected
  final String endpoint;

  @override
  String toString() {
    return 'CustomRoute(parent: $parent, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomRouteImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, endpoint);

  /// Create a copy of CustomRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomRouteImplCopyWith<_$CustomRouteImpl> get copyWith =>
      __$$CustomRouteImplCopyWithImpl<_$CustomRouteImpl>(this, _$identity);
}

abstract class _CustomRoute extends CustomRoute {
  const factory _CustomRoute(
      {@protected required final CustomRoute? parent,
      @protected required final String endpoint}) = _$CustomRouteImpl;
  const _CustomRoute._() : super._();

  @override
  @protected
  CustomRoute? get parent;
  @override
  @protected
  String get endpoint;

  /// Create a copy of CustomRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomRouteImplCopyWith<_$CustomRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
