// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient_record_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NutrientRecordHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) togglePracticeCategory,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_togglePracticeCategory value)
        togglePracticeCategory,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientRecordHistoryEventCopyWith<$Res> {
  factory $NutrientRecordHistoryEventCopyWith(NutrientRecordHistoryEvent value,
          $Res Function(NutrientRecordHistoryEvent) then) =
      _$NutrientRecordHistoryEventCopyWithImpl<$Res,
          NutrientRecordHistoryEvent>;
}

/// @nodoc
class _$NutrientRecordHistoryEventCopyWithImpl<$Res,
        $Val extends NutrientRecordHistoryEvent>
    implements $NutrientRecordHistoryEventCopyWith<$Res> {
  _$NutrientRecordHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NutrientRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$togglePracticeCategoryImplCopyWith<$Res> {
  factory _$$togglePracticeCategoryImplCopyWith(
          _$togglePracticeCategoryImpl value,
          $Res Function(_$togglePracticeCategoryImpl) then) =
      __$$togglePracticeCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$togglePracticeCategoryImplCopyWithImpl<$Res>
    extends _$NutrientRecordHistoryEventCopyWithImpl<$Res,
        _$togglePracticeCategoryImpl>
    implements _$$togglePracticeCategoryImplCopyWith<$Res> {
  __$$togglePracticeCategoryImplCopyWithImpl(
      _$togglePracticeCategoryImpl _value,
      $Res Function(_$togglePracticeCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NutrientRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$togglePracticeCategoryImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$togglePracticeCategoryImpl implements _togglePracticeCategory {
  const _$togglePracticeCategoryImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'NutrientRecordHistoryEvent.togglePracticeCategory(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$togglePracticeCategoryImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NutrientRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$togglePracticeCategoryImplCopyWith<_$togglePracticeCategoryImpl>
      get copyWith => __$$togglePracticeCategoryImplCopyWithImpl<
          _$togglePracticeCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) togglePracticeCategory,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
  }) {
    return togglePracticeCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
  }) {
    return togglePracticeCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    required TResult orElse(),
  }) {
    if (togglePracticeCategory != null) {
      return togglePracticeCategory(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_togglePracticeCategory value)
        togglePracticeCategory,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
  }) {
    return togglePracticeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
  }) {
    return togglePracticeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    required TResult orElse(),
  }) {
    if (togglePracticeCategory != null) {
      return togglePracticeCategory(this);
    }
    return orElse();
  }
}

abstract class _togglePracticeCategory implements NutrientRecordHistoryEvent {
  const factory _togglePracticeCategory({required final String value}) =
      _$togglePracticeCategoryImpl;

  String get value;

  /// Create a copy of NutrientRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$togglePracticeCategoryImplCopyWith<_$togglePracticeCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$nextMonthImplCopyWith<$Res> {
  factory _$$nextMonthImplCopyWith(
          _$nextMonthImpl value, $Res Function(_$nextMonthImpl) then) =
      __$$nextMonthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$nextMonthImplCopyWithImpl<$Res>
    extends _$NutrientRecordHistoryEventCopyWithImpl<$Res, _$nextMonthImpl>
    implements _$$nextMonthImplCopyWith<$Res> {
  __$$nextMonthImplCopyWithImpl(
      _$nextMonthImpl _value, $Res Function(_$nextMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of NutrientRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$nextMonthImpl implements _nextMonth {
  const _$nextMonthImpl();

  @override
  String toString() {
    return 'NutrientRecordHistoryEvent.nextMonth()';
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
    required TResult Function(String value) togglePracticeCategory,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
  }) {
    return nextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
  }) {
    return nextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
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
    required TResult Function(_togglePracticeCategory value)
        togglePracticeCategory,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
  }) {
    return nextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
  }) {
    return nextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    required TResult orElse(),
  }) {
    if (nextMonth != null) {
      return nextMonth(this);
    }
    return orElse();
  }
}

abstract class _nextMonth implements NutrientRecordHistoryEvent {
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
    extends _$NutrientRecordHistoryEventCopyWithImpl<$Res, _$previousMonthImpl>
    implements _$$previousMonthImplCopyWith<$Res> {
  __$$previousMonthImplCopyWithImpl(
      _$previousMonthImpl _value, $Res Function(_$previousMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of NutrientRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$previousMonthImpl implements _previousMonth {
  const _$previousMonthImpl();

  @override
  String toString() {
    return 'NutrientRecordHistoryEvent.previousMonth()';
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
    required TResult Function(String value) togglePracticeCategory,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
  }) {
    return previousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
  }) {
    return previousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
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
    required TResult Function(_togglePracticeCategory value)
        togglePracticeCategory,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
  }) {
    return previousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
  }) {
    return previousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    required TResult orElse(),
  }) {
    if (previousMonth != null) {
      return previousMonth(this);
    }
    return orElse();
  }
}

abstract class _previousMonth implements NutrientRecordHistoryEvent {
  const factory _previousMonth() = _$previousMonthImpl;
}

/// @nodoc
mixin _$NutrientRecordHistoryState {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String? get selectedPracticeCategory => throw _privateConstructorUsedError;

  /// Create a copy of NutrientRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutrientRecordHistoryStateCopyWith<NutrientRecordHistoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientRecordHistoryStateCopyWith<$Res> {
  factory $NutrientRecordHistoryStateCopyWith(NutrientRecordHistoryState value,
          $Res Function(NutrientRecordHistoryState) then) =
      _$NutrientRecordHistoryStateCopyWithImpl<$Res,
          NutrientRecordHistoryState>;
  @useResult
  $Res call({DateTime dateTime, String? selectedPracticeCategory});
}

/// @nodoc
class _$NutrientRecordHistoryStateCopyWithImpl<$Res,
        $Val extends NutrientRecordHistoryState>
    implements $NutrientRecordHistoryStateCopyWith<$Res> {
  _$NutrientRecordHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NutrientRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? selectedPracticeCategory = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedPracticeCategory: freezed == selectedPracticeCategory
          ? _value.selectedPracticeCategory
          : selectedPracticeCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutrientRecordHistoryStateImplCopyWith<$Res>
    implements $NutrientRecordHistoryStateCopyWith<$Res> {
  factory _$$NutrientRecordHistoryStateImplCopyWith(
          _$NutrientRecordHistoryStateImpl value,
          $Res Function(_$NutrientRecordHistoryStateImpl) then) =
      __$$NutrientRecordHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, String? selectedPracticeCategory});
}

/// @nodoc
class __$$NutrientRecordHistoryStateImplCopyWithImpl<$Res>
    extends _$NutrientRecordHistoryStateCopyWithImpl<$Res,
        _$NutrientRecordHistoryStateImpl>
    implements _$$NutrientRecordHistoryStateImplCopyWith<$Res> {
  __$$NutrientRecordHistoryStateImplCopyWithImpl(
      _$NutrientRecordHistoryStateImpl _value,
      $Res Function(_$NutrientRecordHistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NutrientRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? selectedPracticeCategory = freezed,
  }) {
    return _then(_$NutrientRecordHistoryStateImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedPracticeCategory: freezed == selectedPracticeCategory
          ? _value.selectedPracticeCategory
          : selectedPracticeCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NutrientRecordHistoryStateImpl implements _NutrientRecordHistoryState {
  const _$NutrientRecordHistoryStateImpl(
      {required this.dateTime, this.selectedPracticeCategory = null});

  @override
  final DateTime dateTime;
  @override
  @JsonKey()
  final String? selectedPracticeCategory;

  @override
  String toString() {
    return 'NutrientRecordHistoryState(dateTime: $dateTime, selectedPracticeCategory: $selectedPracticeCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutrientRecordHistoryStateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(
                    other.selectedPracticeCategory, selectedPracticeCategory) ||
                other.selectedPracticeCategory == selectedPracticeCategory));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, selectedPracticeCategory);

  /// Create a copy of NutrientRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutrientRecordHistoryStateImplCopyWith<_$NutrientRecordHistoryStateImpl>
      get copyWith => __$$NutrientRecordHistoryStateImplCopyWithImpl<
          _$NutrientRecordHistoryStateImpl>(this, _$identity);
}

abstract class _NutrientRecordHistoryState
    implements NutrientRecordHistoryState {
  const factory _NutrientRecordHistoryState(
          {required final DateTime dateTime,
          final String? selectedPracticeCategory}) =
      _$NutrientRecordHistoryStateImpl;

  @override
  DateTime get dateTime;
  @override
  String? get selectedPracticeCategory;

  /// Create a copy of NutrientRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutrientRecordHistoryStateImplCopyWith<_$NutrientRecordHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
