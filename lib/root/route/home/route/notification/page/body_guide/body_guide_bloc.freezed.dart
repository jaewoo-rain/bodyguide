// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_guide_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodyGuideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_mock value) mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_mock value)? mock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_mock value)? mock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyGuideEventCopyWith<$Res> {
  factory $BodyGuideEventCopyWith(
          BodyGuideEvent value, $Res Function(BodyGuideEvent) then) =
      _$BodyGuideEventCopyWithImpl<$Res, BodyGuideEvent>;
}

/// @nodoc
class _$BodyGuideEventCopyWithImpl<$Res, $Val extends BodyGuideEvent>
    implements $BodyGuideEventCopyWith<$Res> {
  _$BodyGuideEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyGuideEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$mockImplCopyWith<$Res> {
  factory _$$mockImplCopyWith(
          _$mockImpl value, $Res Function(_$mockImpl) then) =
      __$$mockImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$mockImplCopyWithImpl<$Res>
    extends _$BodyGuideEventCopyWithImpl<$Res, _$mockImpl>
    implements _$$mockImplCopyWith<$Res> {
  __$$mockImplCopyWithImpl(_$mockImpl _value, $Res Function(_$mockImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyGuideEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$mockImpl implements _mock {
  const _$mockImpl();

  @override
  String toString() {
    return 'BodyGuideEvent.mock()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$mockImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mock,
  }) {
    return mock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mock,
  }) {
    return mock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mock,
    required TResult orElse(),
  }) {
    if (mock != null) {
      return mock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_mock value) mock,
  }) {
    return mock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_mock value)? mock,
  }) {
    return mock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_mock value)? mock,
    required TResult orElse(),
  }) {
    if (mock != null) {
      return mock(this);
    }
    return orElse();
  }
}

abstract class _mock implements BodyGuideEvent {
  const factory _mock() = _$mockImpl;
}

/// @nodoc
mixin _$BodyGuideState {
  List<BodyGuideNotification> get elements =>
      throw _privateConstructorUsedError;

  /// Create a copy of BodyGuideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyGuideStateCopyWith<BodyGuideState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyGuideStateCopyWith<$Res> {
  factory $BodyGuideStateCopyWith(
          BodyGuideState value, $Res Function(BodyGuideState) then) =
      _$BodyGuideStateCopyWithImpl<$Res, BodyGuideState>;
  @useResult
  $Res call({List<BodyGuideNotification> elements});
}

/// @nodoc
class _$BodyGuideStateCopyWithImpl<$Res, $Val extends BodyGuideState>
    implements $BodyGuideStateCopyWith<$Res> {
  _$BodyGuideStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyGuideState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
  }) {
    return _then(_value.copyWith(
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<BodyGuideNotification>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyGuideStateImplCopyWith<$Res>
    implements $BodyGuideStateCopyWith<$Res> {
  factory _$$BodyGuideStateImplCopyWith(_$BodyGuideStateImpl value,
          $Res Function(_$BodyGuideStateImpl) then) =
      __$$BodyGuideStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BodyGuideNotification> elements});
}

/// @nodoc
class __$$BodyGuideStateImplCopyWithImpl<$Res>
    extends _$BodyGuideStateCopyWithImpl<$Res, _$BodyGuideStateImpl>
    implements _$$BodyGuideStateImplCopyWith<$Res> {
  __$$BodyGuideStateImplCopyWithImpl(
      _$BodyGuideStateImpl _value, $Res Function(_$BodyGuideStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyGuideState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
  }) {
    return _then(_$BodyGuideStateImpl(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<BodyGuideNotification>,
    ));
  }
}

/// @nodoc

class _$BodyGuideStateImpl implements _BodyGuideState {
  const _$BodyGuideStateImpl(
      {final List<BodyGuideNotification> elements = const []})
      : _elements = elements;

  final List<BodyGuideNotification> _elements;
  @override
  @JsonKey()
  List<BodyGuideNotification> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString() {
    return 'BodyGuideState(elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyGuideStateImpl &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_elements));

  /// Create a copy of BodyGuideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyGuideStateImplCopyWith<_$BodyGuideStateImpl> get copyWith =>
      __$$BodyGuideStateImplCopyWithImpl<_$BodyGuideStateImpl>(
          this, _$identity);
}

abstract class _BodyGuideState implements BodyGuideState {
  const factory _BodyGuideState({final List<BodyGuideNotification> elements}) =
      _$BodyGuideStateImpl;

  @override
  List<BodyGuideNotification> get elements;

  /// Create a copy of BodyGuideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyGuideStateImplCopyWith<_$BodyGuideStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
