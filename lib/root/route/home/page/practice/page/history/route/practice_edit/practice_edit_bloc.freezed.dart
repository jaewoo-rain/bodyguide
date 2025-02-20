// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticeEditEvent {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_toggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_toggle value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_toggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PracticeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeEditEventCopyWith<PracticeEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeEditEventCopyWith<$Res> {
  factory $PracticeEditEventCopyWith(
          PracticeEditEvent value, $Res Function(PracticeEditEvent) then) =
      _$PracticeEditEventCopyWithImpl<$Res, PracticeEditEvent>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$PracticeEditEventCopyWithImpl<$Res, $Val extends PracticeEditEvent>
    implements $PracticeEditEventCopyWith<$Res> {
  _$PracticeEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$toggleImplCopyWith<$Res>
    implements $PracticeEditEventCopyWith<$Res> {
  factory _$$toggleImplCopyWith(
          _$toggleImpl value, $Res Function(_$toggleImpl) then) =
      __$$toggleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$toggleImplCopyWithImpl<$Res>
    extends _$PracticeEditEventCopyWithImpl<$Res, _$toggleImpl>
    implements _$$toggleImplCopyWith<$Res> {
  __$$toggleImplCopyWithImpl(
      _$toggleImpl _value, $Res Function(_$toggleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$toggleImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$toggleImpl implements _toggle {
  const _$toggleImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'PracticeEditEvent.toggle(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$toggleImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PracticeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$toggleImplCopyWith<_$toggleImpl> get copyWith =>
      __$$toggleImplCopyWithImpl<_$toggleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) toggle,
  }) {
    return toggle(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? toggle,
  }) {
    return toggle?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_toggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_toggle value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _toggle implements PracticeEditEvent {
  const factory _toggle({required final int value}) = _$toggleImpl;

  @override
  int get value;

  /// Create a copy of PracticeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$toggleImplCopyWith<_$toggleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeEditState {
  List<Practice> get practices => throw _privateConstructorUsedError;
  List<int> get selections => throw _privateConstructorUsedError;

  /// Create a copy of PracticeEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeEditStateCopyWith<PracticeEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeEditStateCopyWith<$Res> {
  factory $PracticeEditStateCopyWith(
          PracticeEditState value, $Res Function(PracticeEditState) then) =
      _$PracticeEditStateCopyWithImpl<$Res, PracticeEditState>;
  @useResult
  $Res call({List<Practice> practices, List<int> selections});
}

/// @nodoc
class _$PracticeEditStateCopyWithImpl<$Res, $Val extends PracticeEditState>
    implements $PracticeEditStateCopyWith<$Res> {
  _$PracticeEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practices = null,
    Object? selections = null,
  }) {
    return _then(_value.copyWith(
      practices: null == practices
          ? _value.practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<Practice>,
      selections: null == selections
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeEditStateImplCopyWith<$Res>
    implements $PracticeEditStateCopyWith<$Res> {
  factory _$$PracticeEditStateImplCopyWith(_$PracticeEditStateImpl value,
          $Res Function(_$PracticeEditStateImpl) then) =
      __$$PracticeEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Practice> practices, List<int> selections});
}

/// @nodoc
class __$$PracticeEditStateImplCopyWithImpl<$Res>
    extends _$PracticeEditStateCopyWithImpl<$Res, _$PracticeEditStateImpl>
    implements _$$PracticeEditStateImplCopyWith<$Res> {
  __$$PracticeEditStateImplCopyWithImpl(_$PracticeEditStateImpl _value,
      $Res Function(_$PracticeEditStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practices = null,
    Object? selections = null,
  }) {
    return _then(_$PracticeEditStateImpl(
      practices: null == practices
          ? _value._practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<Practice>,
      selections: null == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$PracticeEditStateImpl implements _PracticeEditState {
  const _$PracticeEditStateImpl(
      {final List<Practice> practices = const [],
      final List<int> selections = const []})
      : _practices = practices,
        _selections = selections;

  final List<Practice> _practices;
  @override
  @JsonKey()
  List<Practice> get practices {
    if (_practices is EqualUnmodifiableListView) return _practices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_practices);
  }

  final List<int> _selections;
  @override
  @JsonKey()
  List<int> get selections {
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selections);
  }

  @override
  String toString() {
    return 'PracticeEditState(practices: $practices, selections: $selections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeEditStateImpl &&
            const DeepCollectionEquality()
                .equals(other._practices, _practices) &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_practices),
      const DeepCollectionEquality().hash(_selections));

  /// Create a copy of PracticeEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeEditStateImplCopyWith<_$PracticeEditStateImpl> get copyWith =>
      __$$PracticeEditStateImplCopyWithImpl<_$PracticeEditStateImpl>(
          this, _$identity);
}

abstract class _PracticeEditState implements PracticeEditState {
  const factory _PracticeEditState(
      {final List<Practice> practices,
      final List<int> selections}) = _$PracticeEditStateImpl;

  @override
  List<Practice> get practices;
  @override
  List<int> get selections;

  /// Create a copy of PracticeEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeEditStateImplCopyWith<_$PracticeEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
