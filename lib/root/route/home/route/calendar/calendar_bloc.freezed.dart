// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$onPageChangedImplCopyWith<$Res> {
  factory _$$onPageChangedImplCopyWith(
          _$onPageChangedImpl value, $Res Function(_$onPageChangedImpl) then) =
      __$$onPageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$onPageChangedImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$onPageChangedImpl>
    implements _$$onPageChangedImplCopyWith<$Res> {
  __$$onPageChangedImplCopyWithImpl(
      _$onPageChangedImpl _value, $Res Function(_$onPageChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$onPageChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$onPageChangedImpl implements _onPageChanged {
  const _$onPageChangedImpl({required this.value});

  @override
  final DateTime value;

  @override
  String toString() {
    return 'CalendarEvent.onPageChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onPageChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onPageChangedImplCopyWith<_$onPageChangedImpl> get copyWith =>
      __$$onPageChangedImplCopyWithImpl<_$onPageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) {
    return onPageChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) {
    return onPageChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) {
    return onPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) {
    return onPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (onPageChanged != null) {
      return onPageChanged(this);
    }
    return orElse();
  }
}

abstract class _onPageChanged implements CalendarEvent {
  const factory _onPageChanged({required final DateTime value}) =
      _$onPageChangedImpl;

  DateTime get value;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onPageChangedImplCopyWith<_$onPageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$nextMonthImplCopyWith<$Res> {
  factory _$$nextMonthImplCopyWith(
          _$nextMonthImpl value, $Res Function(_$nextMonthImpl) then) =
      __$$nextMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$nextMonthImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$nextMonthImpl>
    implements _$$nextMonthImplCopyWith<$Res> {
  __$$nextMonthImplCopyWithImpl(
      _$nextMonthImpl _value, $Res Function(_$nextMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$nextMonthImpl implements _nextMonth {
  const _$nextMonthImpl();

  @override
  String toString() {
    return 'CalendarEvent.nextMonth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$nextMonthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) {
    return nextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) {
    return nextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) {
    if (nextMonth != null) {
      return nextMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) {
    return nextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) {
    return nextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (nextMonth != null) {
      return nextMonth(this);
    }
    return orElse();
  }
}

abstract class _nextMonth implements CalendarEvent {
  const factory _nextMonth() = _$nextMonthImpl;
}

/// @nodoc
abstract class _$$previousMonthImplCopyWith<$Res> {
  factory _$$previousMonthImplCopyWith(
          _$previousMonthImpl value, $Res Function(_$previousMonthImpl) then) =
      __$$previousMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$previousMonthImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$previousMonthImpl>
    implements _$$previousMonthImplCopyWith<$Res> {
  __$$previousMonthImplCopyWithImpl(
      _$previousMonthImpl _value, $Res Function(_$previousMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$previousMonthImpl implements _previousMonth {
  const _$previousMonthImpl();

  @override
  String toString() {
    return 'CalendarEvent.previousMonth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$previousMonthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) {
    return previousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) {
    return previousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) {
    if (previousMonth != null) {
      return previousMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) {
    return previousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) {
    return previousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (previousMonth != null) {
      return previousMonth(this);
    }
    return orElse();
  }
}

abstract class _previousMonth implements CalendarEvent {
  const factory _previousMonth() = _$previousMonthImpl;
}

/// @nodoc
abstract class _$$toggleCalendarEventTypeImplCopyWith<$Res> {
  factory _$$toggleCalendarEventTypeImplCopyWith(
          _$toggleCalendarEventTypeImpl value,
          $Res Function(_$toggleCalendarEventTypeImpl) then) =
      __$$toggleCalendarEventTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CalendarEventType value});
}

/// @nodoc
class __$$toggleCalendarEventTypeImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$toggleCalendarEventTypeImpl>
    implements _$$toggleCalendarEventTypeImplCopyWith<$Res> {
  __$$toggleCalendarEventTypeImplCopyWithImpl(
      _$toggleCalendarEventTypeImpl _value,
      $Res Function(_$toggleCalendarEventTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$toggleCalendarEventTypeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CalendarEventType,
    ));
  }
}

/// @nodoc

class _$toggleCalendarEventTypeImpl implements _toggleCalendarEventType {
  const _$toggleCalendarEventTypeImpl({required this.value});

  @override
  final CalendarEventType value;

  @override
  String toString() {
    return 'CalendarEvent.toggleCalendarEventType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$toggleCalendarEventTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$toggleCalendarEventTypeImplCopyWith<_$toggleCalendarEventTypeImpl>
      get copyWith => __$$toggleCalendarEventTypeImplCopyWithImpl<
          _$toggleCalendarEventTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) {
    return toggleCalendarEventType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) {
    return toggleCalendarEventType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) {
    if (toggleCalendarEventType != null) {
      return toggleCalendarEventType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) {
    return toggleCalendarEventType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) {
    return toggleCalendarEventType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (toggleCalendarEventType != null) {
      return toggleCalendarEventType(this);
    }
    return orElse();
  }
}

abstract class _toggleCalendarEventType implements CalendarEvent {
  const factory _toggleCalendarEventType(
      {required final CalendarEventType value}) = _$toggleCalendarEventTypeImpl;

  CalendarEventType get value;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$toggleCalendarEventTypeImplCopyWith<_$toggleCalendarEventTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addEventImplCopyWith<$Res> {
  factory _$$addEventImplCopyWith(
          _$addEventImpl value, $Res Function(_$addEventImpl) then) =
      __$$addEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String content});
}

/// @nodoc
class __$$addEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$addEventImpl>
    implements _$$addEventImplCopyWith<$Res> {
  __$$addEventImplCopyWithImpl(
      _$addEventImpl _value, $Res Function(_$addEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? content = null,
  }) {
    return _then(_$addEventImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addEventImpl implements _addEvent {
  const _$addEventImpl({required this.dateTime, required this.content});

  @override
  final DateTime dateTime;
  @override
  final String content;

  @override
  String toString() {
    return 'CalendarEvent.addEvent(dateTime: $dateTime, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addEventImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, content);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addEventImplCopyWith<_$addEventImpl> get copyWith =>
      __$$addEventImplCopyWithImpl<_$addEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) {
    return addEvent(dateTime, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) {
    return addEvent?.call(dateTime, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(dateTime, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class _addEvent implements CalendarEvent {
  const factory _addEvent(
      {required final DateTime dateTime,
      required final String content}) = _$addEventImpl;

  DateTime get dateTime;
  String get content;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addEventImplCopyWith<_$addEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editEventImplCopyWith<$Res> {
  factory _$$editEventImplCopyWith(
          _$editEventImpl value, $Res Function(_$editEventImpl) then) =
      __$$editEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String content});
}

/// @nodoc
class __$$editEventImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$editEventImpl>
    implements _$$editEventImplCopyWith<$Res> {
  __$$editEventImplCopyWithImpl(
      _$editEventImpl _value, $Res Function(_$editEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? content = null,
  }) {
    return _then(_$editEventImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$editEventImpl implements _editEvent {
  const _$editEventImpl({required this.dateTime, required this.content});

  @override
  final DateTime dateTime;
  @override
  final String content;

  @override
  String toString() {
    return 'CalendarEvent.editEvent(dateTime: $dateTime, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editEventImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, content);

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$editEventImplCopyWith<_$editEventImpl> get copyWith =>
      __$$editEventImplCopyWithImpl<_$editEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) onPageChanged,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(CalendarEventType value) toggleCalendarEventType,
    required TResult Function(DateTime dateTime, String content) addEvent,
    required TResult Function(DateTime dateTime, String content) editEvent,
  }) {
    return editEvent(dateTime, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? onPageChanged,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(CalendarEventType value)? toggleCalendarEventType,
    TResult? Function(DateTime dateTime, String content)? addEvent,
    TResult? Function(DateTime dateTime, String content)? editEvent,
  }) {
    return editEvent?.call(dateTime, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? onPageChanged,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(CalendarEventType value)? toggleCalendarEventType,
    TResult Function(DateTime dateTime, String content)? addEvent,
    TResult Function(DateTime dateTime, String content)? editEvent,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(dateTime, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onPageChanged value) onPageChanged,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_toggleCalendarEventType value)
        toggleCalendarEventType,
    required TResult Function(_addEvent value) addEvent,
    required TResult Function(_editEvent value) editEvent,
  }) {
    return editEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onPageChanged value)? onPageChanged,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult? Function(_addEvent value)? addEvent,
    TResult? Function(_editEvent value)? editEvent,
  }) {
    return editEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onPageChanged value)? onPageChanged,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_toggleCalendarEventType value)? toggleCalendarEventType,
    TResult Function(_addEvent value)? addEvent,
    TResult Function(_editEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(this);
    }
    return orElse();
  }
}

abstract class _editEvent implements CalendarEvent {
  const factory _editEvent(
      {required final DateTime dateTime,
      required final String content}) = _$editEventImpl;

  DateTime get dateTime;
  String get content;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$editEventImplCopyWith<_$editEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  DateTime get dateTime => throw _privateConstructorUsedError;
  LinkedHashMap<DateTime, List<Event>> get events =>
      throw _privateConstructorUsedError;
  Set<CalendarEventType> get selectedCalendarEventTypes =>
      throw _privateConstructorUsedError;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {DateTime dateTime,
      LinkedHashMap<DateTime, List<Event>> events,
      Set<CalendarEventType> selectedCalendarEventTypes});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? events = null,
    Object? selectedCalendarEventTypes = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as LinkedHashMap<DateTime, List<Event>>,
      selectedCalendarEventTypes: null == selectedCalendarEventTypes
          ? _value.selectedCalendarEventTypes
          : selectedCalendarEventTypes // ignore: cast_nullable_to_non_nullable
              as Set<CalendarEventType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime,
      LinkedHashMap<DateTime, List<Event>> events,
      Set<CalendarEventType> selectedCalendarEventTypes});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? events = null,
    Object? selectedCalendarEventTypes = null,
  }) {
    return _then(_$CalendarStateImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as LinkedHashMap<DateTime, List<Event>>,
      selectedCalendarEventTypes: null == selectedCalendarEventTypes
          ? _value._selectedCalendarEventTypes
          : selectedCalendarEventTypes // ignore: cast_nullable_to_non_nullable
              as Set<CalendarEventType>,
    ));
  }
}

/// @nodoc

class _$CalendarStateImpl implements _CalendarState {
  const _$CalendarStateImpl(
      {required this.dateTime,
      required this.events,
      final Set<CalendarEventType> selectedCalendarEventTypes = const {}})
      : _selectedCalendarEventTypes = selectedCalendarEventTypes;

  @override
  final DateTime dateTime;
  @override
  final LinkedHashMap<DateTime, List<Event>> events;
  final Set<CalendarEventType> _selectedCalendarEventTypes;
  @override
  @JsonKey()
  Set<CalendarEventType> get selectedCalendarEventTypes {
    if (_selectedCalendarEventTypes is EqualUnmodifiableSetView)
      return _selectedCalendarEventTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedCalendarEventTypes);
  }

  @override
  String toString() {
    return 'CalendarState(dateTime: $dateTime, events: $events, selectedCalendarEventTypes: $selectedCalendarEventTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other.events, events) &&
            const DeepCollectionEquality().equals(
                other._selectedCalendarEventTypes,
                _selectedCalendarEventTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTime,
      const DeepCollectionEquality().hash(events),
      const DeepCollectionEquality().hash(_selectedCalendarEventTypes));

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
          {required final DateTime dateTime,
          required final LinkedHashMap<DateTime, List<Event>> events,
          final Set<CalendarEventType> selectedCalendarEventTypes}) =
      _$CalendarStateImpl;

  @override
  DateTime get dateTime;
  @override
  LinkedHashMap<DateTime, List<Event>> get events;
  @override
  Set<CalendarEventType> get selectedCalendarEventTypes;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
