// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyActivityEvent {
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
abstract class $MyActivityEventCopyWith<$Res> {
  factory $MyActivityEventCopyWith(
          MyActivityEvent value, $Res Function(MyActivityEvent) then) =
      _$MyActivityEventCopyWithImpl<$Res, MyActivityEvent>;
}

/// @nodoc
class _$MyActivityEventCopyWithImpl<$Res, $Val extends MyActivityEvent>
    implements $MyActivityEventCopyWith<$Res> {
  _$MyActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyActivityEvent
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
    extends _$MyActivityEventCopyWithImpl<$Res, _$mockImpl>
    implements _$$mockImplCopyWith<$Res> {
  __$$mockImplCopyWithImpl(_$mockImpl _value, $Res Function(_$mockImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyActivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$mockImpl implements _mock {
  const _$mockImpl();

  @override
  String toString() {
    return 'MyActivityEvent.mock()';
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

abstract class _mock implements MyActivityEvent {
  const factory _mock() = _$mockImpl;
}

/// @nodoc
mixin _$MyActivityState {
  List<MyActivityNotification> get elements =>
      throw _privateConstructorUsedError;

  /// Create a copy of MyActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyActivityStateCopyWith<MyActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyActivityStateCopyWith<$Res> {
  factory $MyActivityStateCopyWith(
          MyActivityState value, $Res Function(MyActivityState) then) =
      _$MyActivityStateCopyWithImpl<$Res, MyActivityState>;
  @useResult
  $Res call({List<MyActivityNotification> elements});
}

/// @nodoc
class _$MyActivityStateCopyWithImpl<$Res, $Val extends MyActivityState>
    implements $MyActivityStateCopyWith<$Res> {
  _$MyActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyActivityState
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
              as List<MyActivityNotification>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyActivityStateImplCopyWith<$Res>
    implements $MyActivityStateCopyWith<$Res> {
  factory _$$MyActivityStateImplCopyWith(_$MyActivityStateImpl value,
          $Res Function(_$MyActivityStateImpl) then) =
      __$$MyActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyActivityNotification> elements});
}

/// @nodoc
class __$$MyActivityStateImplCopyWithImpl<$Res>
    extends _$MyActivityStateCopyWithImpl<$Res, _$MyActivityStateImpl>
    implements _$$MyActivityStateImplCopyWith<$Res> {
  __$$MyActivityStateImplCopyWithImpl(
      _$MyActivityStateImpl _value, $Res Function(_$MyActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
  }) {
    return _then(_$MyActivityStateImpl(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<MyActivityNotification>,
    ));
  }
}

/// @nodoc

class _$MyActivityStateImpl implements _MyActivityState {
  const _$MyActivityStateImpl(
      {final List<MyActivityNotification> elements = const []})
      : _elements = elements;

  final List<MyActivityNotification> _elements;
  @override
  @JsonKey()
  List<MyActivityNotification> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString() {
    return 'MyActivityState(elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyActivityStateImpl &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_elements));

  /// Create a copy of MyActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyActivityStateImplCopyWith<_$MyActivityStateImpl> get copyWith =>
      __$$MyActivityStateImplCopyWithImpl<_$MyActivityStateImpl>(
          this, _$identity);
}

abstract class _MyActivityState implements MyActivityState {
  const factory _MyActivityState(
      {final List<MyActivityNotification> elements}) = _$MyActivityStateImpl;

  @override
  List<MyActivityNotification> get elements;

  /// Create a copy of MyActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyActivityStateImplCopyWith<_$MyActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
