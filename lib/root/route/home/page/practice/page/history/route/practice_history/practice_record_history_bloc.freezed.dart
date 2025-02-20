// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_record_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticeRecordHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) togglePracticeCategory,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(Map<String, dynamic> jsonData) loadPracticeRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_togglePracticeCategory value)
        togglePracticeCategory,
    required TResult Function(_nextMonth value) nextMonth,
    required TResult Function(_previousMonth value) previousMonth,
    required TResult Function(_LoadPracticeRecord value) loadPracticeRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_LoadPracticeRecord value)? loadPracticeRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_LoadPracticeRecord value)? loadPracticeRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeRecordHistoryEventCopyWith<$Res> {
  factory $PracticeRecordHistoryEventCopyWith(PracticeRecordHistoryEvent value,
          $Res Function(PracticeRecordHistoryEvent) then) =
      _$PracticeRecordHistoryEventCopyWithImpl<$Res,
          PracticeRecordHistoryEvent>;
}

/// @nodoc
class _$PracticeRecordHistoryEventCopyWithImpl<$Res,
        $Val extends PracticeRecordHistoryEvent>
    implements $PracticeRecordHistoryEventCopyWith<$Res> {
  _$PracticeRecordHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeRecordHistoryEvent
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
    extends _$PracticeRecordHistoryEventCopyWithImpl<$Res,
        _$togglePracticeCategoryImpl>
    implements _$$togglePracticeCategoryImplCopyWith<$Res> {
  __$$togglePracticeCategoryImplCopyWithImpl(
      _$togglePracticeCategoryImpl _value,
      $Res Function(_$togglePracticeCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordHistoryEvent
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
    return 'PracticeRecordHistoryEvent.togglePracticeCategory(value: $value)';
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

  /// Create a copy of PracticeRecordHistoryEvent
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
    required TResult Function(Map<String, dynamic> jsonData) loadPracticeRecord,
  }) {
    return togglePracticeCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
  }) {
    return togglePracticeCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
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
    required TResult Function(_LoadPracticeRecord value) loadPracticeRecord,
  }) {
    return togglePracticeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_LoadPracticeRecord value)? loadPracticeRecord,
  }) {
    return togglePracticeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_LoadPracticeRecord value)? loadPracticeRecord,
    required TResult orElse(),
  }) {
    if (togglePracticeCategory != null) {
      return togglePracticeCategory(this);
    }
    return orElse();
  }
}

abstract class _togglePracticeCategory implements PracticeRecordHistoryEvent {
  const factory _togglePracticeCategory({required final String value}) =
      _$togglePracticeCategoryImpl;

  String get value;

  /// Create a copy of PracticeRecordHistoryEvent
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
    extends _$PracticeRecordHistoryEventCopyWithImpl<$Res, _$nextMonthImpl>
    implements _$$nextMonthImplCopyWith<$Res> {
  __$$nextMonthImplCopyWithImpl(
      _$nextMonthImpl _value, $Res Function(_$nextMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$nextMonthImpl implements _nextMonth {
  const _$nextMonthImpl();

  @override
  String toString() {
    return 'PracticeRecordHistoryEvent.nextMonth()';
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
    required TResult Function(Map<String, dynamic> jsonData) loadPracticeRecord,
  }) {
    return nextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
  }) {
    return nextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
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
    required TResult Function(_LoadPracticeRecord value) loadPracticeRecord,
  }) {
    return nextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_LoadPracticeRecord value)? loadPracticeRecord,
  }) {
    return nextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_LoadPracticeRecord value)? loadPracticeRecord,
    required TResult orElse(),
  }) {
    if (nextMonth != null) {
      return nextMonth(this);
    }
    return orElse();
  }
}

abstract class _nextMonth implements PracticeRecordHistoryEvent {
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
    extends _$PracticeRecordHistoryEventCopyWithImpl<$Res, _$previousMonthImpl>
    implements _$$previousMonthImplCopyWith<$Res> {
  __$$previousMonthImplCopyWithImpl(
      _$previousMonthImpl _value, $Res Function(_$previousMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$previousMonthImpl implements _previousMonth {
  const _$previousMonthImpl();

  @override
  String toString() {
    return 'PracticeRecordHistoryEvent.previousMonth()';
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
    required TResult Function(Map<String, dynamic> jsonData) loadPracticeRecord,
  }) {
    return previousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
  }) {
    return previousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
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
    required TResult Function(_LoadPracticeRecord value) loadPracticeRecord,
  }) {
    return previousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_LoadPracticeRecord value)? loadPracticeRecord,
  }) {
    return previousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_LoadPracticeRecord value)? loadPracticeRecord,
    required TResult orElse(),
  }) {
    if (previousMonth != null) {
      return previousMonth(this);
    }
    return orElse();
  }
}

abstract class _previousMonth implements PracticeRecordHistoryEvent {
  const factory _previousMonth() = _$previousMonthImpl;
}

/// @nodoc
abstract class _$$LoadPracticeRecordImplCopyWith<$Res> {
  factory _$$LoadPracticeRecordImplCopyWith(_$LoadPracticeRecordImpl value,
          $Res Function(_$LoadPracticeRecordImpl) then) =
      __$$LoadPracticeRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> jsonData});
}

/// @nodoc
class __$$LoadPracticeRecordImplCopyWithImpl<$Res>
    extends _$PracticeRecordHistoryEventCopyWithImpl<$Res,
        _$LoadPracticeRecordImpl>
    implements _$$LoadPracticeRecordImplCopyWith<$Res> {
  __$$LoadPracticeRecordImplCopyWithImpl(_$LoadPracticeRecordImpl _value,
      $Res Function(_$LoadPracticeRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonData = null,
  }) {
    return _then(_$LoadPracticeRecordImpl(
      jsonData: null == jsonData
          ? _value._jsonData
          : jsonData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$LoadPracticeRecordImpl implements _LoadPracticeRecord {
  const _$LoadPracticeRecordImpl({required final Map<String, dynamic> jsonData})
      : _jsonData = jsonData;

  final Map<String, dynamic> _jsonData;
  @override
  Map<String, dynamic> get jsonData {
    if (_jsonData is EqualUnmodifiableMapView) return _jsonData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_jsonData);
  }

  @override
  String toString() {
    return 'PracticeRecordHistoryEvent.loadPracticeRecord(jsonData: $jsonData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPracticeRecordImpl &&
            const DeepCollectionEquality().equals(other._jsonData, _jsonData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jsonData));

  /// Create a copy of PracticeRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPracticeRecordImplCopyWith<_$LoadPracticeRecordImpl> get copyWith =>
      __$$LoadPracticeRecordImplCopyWithImpl<_$LoadPracticeRecordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) togglePracticeCategory,
    required TResult Function() nextMonth,
    required TResult Function() previousMonth,
    required TResult Function(Map<String, dynamic> jsonData) loadPracticeRecord,
  }) {
    return loadPracticeRecord(jsonData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? togglePracticeCategory,
    TResult? Function()? nextMonth,
    TResult? Function()? previousMonth,
    TResult? Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
  }) {
    return loadPracticeRecord?.call(jsonData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? togglePracticeCategory,
    TResult Function()? nextMonth,
    TResult Function()? previousMonth,
    TResult Function(Map<String, dynamic> jsonData)? loadPracticeRecord,
    required TResult orElse(),
  }) {
    if (loadPracticeRecord != null) {
      return loadPracticeRecord(jsonData);
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
    required TResult Function(_LoadPracticeRecord value) loadPracticeRecord,
  }) {
    return loadPracticeRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult? Function(_nextMonth value)? nextMonth,
    TResult? Function(_previousMonth value)? previousMonth,
    TResult? Function(_LoadPracticeRecord value)? loadPracticeRecord,
  }) {
    return loadPracticeRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_togglePracticeCategory value)? togglePracticeCategory,
    TResult Function(_nextMonth value)? nextMonth,
    TResult Function(_previousMonth value)? previousMonth,
    TResult Function(_LoadPracticeRecord value)? loadPracticeRecord,
    required TResult orElse(),
  }) {
    if (loadPracticeRecord != null) {
      return loadPracticeRecord(this);
    }
    return orElse();
  }
}

abstract class _LoadPracticeRecord implements PracticeRecordHistoryEvent {
  const factory _LoadPracticeRecord(
          {required final Map<String, dynamic> jsonData}) =
      _$LoadPracticeRecordImpl;

  Map<String, dynamic> get jsonData;

  /// Create a copy of PracticeRecordHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadPracticeRecordImplCopyWith<_$LoadPracticeRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeRecordHistoryState {
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  List<RecordGroupList> get recordGroupList =>
      throw _privateConstructorUsedError;
  String? get selectedPracticeCategory => throw _privateConstructorUsedError;
  DateTime get currentTime => throw _privateConstructorUsedError;

  /// Create a copy of PracticeRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeRecordHistoryStateCopyWith<PracticeRecordHistoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeRecordHistoryStateCopyWith<$Res> {
  factory $PracticeRecordHistoryStateCopyWith(PracticeRecordHistoryState value,
          $Res Function(PracticeRecordHistoryState) then) =
      _$PracticeRecordHistoryStateCopyWithImpl<$Res,
          PracticeRecordHistoryState>;
  @useResult
  $Res call(
      {int currentPage,
      int pageSize,
      bool hasNext,
      List<RecordGroupList> recordGroupList,
      String? selectedPracticeCategory,
      DateTime currentTime});
}

/// @nodoc
class _$PracticeRecordHistoryStateCopyWithImpl<$Res,
        $Val extends PracticeRecordHistoryState>
    implements $PracticeRecordHistoryStateCopyWith<$Res> {
  _$PracticeRecordHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasNext = null,
    Object? recordGroupList = null,
    Object? selectedPracticeCategory = freezed,
    Object? currentTime = null,
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
      recordGroupList: null == recordGroupList
          ? _value.recordGroupList
          : recordGroupList // ignore: cast_nullable_to_non_nullable
              as List<RecordGroupList>,
      selectedPracticeCategory: freezed == selectedPracticeCategory
          ? _value.selectedPracticeCategory
          : selectedPracticeCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeRecordHistoryStateImplCopyWith<$Res>
    implements $PracticeRecordHistoryStateCopyWith<$Res> {
  factory _$$PracticeRecordHistoryStateImplCopyWith(
          _$PracticeRecordHistoryStateImpl value,
          $Res Function(_$PracticeRecordHistoryStateImpl) then) =
      __$$PracticeRecordHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      int pageSize,
      bool hasNext,
      List<RecordGroupList> recordGroupList,
      String? selectedPracticeCategory,
      DateTime currentTime});
}

/// @nodoc
class __$$PracticeRecordHistoryStateImplCopyWithImpl<$Res>
    extends _$PracticeRecordHistoryStateCopyWithImpl<$Res,
        _$PracticeRecordHistoryStateImpl>
    implements _$$PracticeRecordHistoryStateImplCopyWith<$Res> {
  __$$PracticeRecordHistoryStateImplCopyWithImpl(
      _$PracticeRecordHistoryStateImpl _value,
      $Res Function(_$PracticeRecordHistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasNext = null,
    Object? recordGroupList = null,
    Object? selectedPracticeCategory = freezed,
    Object? currentTime = null,
  }) {
    return _then(_$PracticeRecordHistoryStateImpl(
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
      recordGroupList: null == recordGroupList
          ? _value._recordGroupList
          : recordGroupList // ignore: cast_nullable_to_non_nullable
              as List<RecordGroupList>,
      selectedPracticeCategory: freezed == selectedPracticeCategory
          ? _value.selectedPracticeCategory
          : selectedPracticeCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PracticeRecordHistoryStateImpl implements _PracticeRecordHistoryState {
  const _$PracticeRecordHistoryStateImpl(
      {required this.currentPage,
      required this.pageSize,
      required this.hasNext,
      required final List<RecordGroupList> recordGroupList,
      this.selectedPracticeCategory = null,
      required this.currentTime})
      : _recordGroupList = recordGroupList;

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final bool hasNext;
  final List<RecordGroupList> _recordGroupList;
  @override
  List<RecordGroupList> get recordGroupList {
    if (_recordGroupList is EqualUnmodifiableListView) return _recordGroupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordGroupList);
  }

  @override
  @JsonKey()
  final String? selectedPracticeCategory;
  @override
  final DateTime currentTime;

  @override
  String toString() {
    return 'PracticeRecordHistoryState(currentPage: $currentPage, pageSize: $pageSize, hasNext: $hasNext, recordGroupList: $recordGroupList, selectedPracticeCategory: $selectedPracticeCategory, currentTime: $currentTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeRecordHistoryStateImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            const DeepCollectionEquality()
                .equals(other._recordGroupList, _recordGroupList) &&
            (identical(
                    other.selectedPracticeCategory, selectedPracticeCategory) ||
                other.selectedPracticeCategory == selectedPracticeCategory) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      pageSize,
      hasNext,
      const DeepCollectionEquality().hash(_recordGroupList),
      selectedPracticeCategory,
      currentTime);

  /// Create a copy of PracticeRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeRecordHistoryStateImplCopyWith<_$PracticeRecordHistoryStateImpl>
      get copyWith => __$$PracticeRecordHistoryStateImplCopyWithImpl<
          _$PracticeRecordHistoryStateImpl>(this, _$identity);
}

abstract class _PracticeRecordHistoryState
    implements PracticeRecordHistoryState {
  const factory _PracticeRecordHistoryState(
      {required final int currentPage,
      required final int pageSize,
      required final bool hasNext,
      required final List<RecordGroupList> recordGroupList,
      final String? selectedPracticeCategory,
      required final DateTime currentTime}) = _$PracticeRecordHistoryStateImpl;

  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  bool get hasNext;
  @override
  List<RecordGroupList> get recordGroupList;
  @override
  String? get selectedPracticeCategory;
  @override
  DateTime get currentTime;

  /// Create a copy of PracticeRecordHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeRecordHistoryStateImplCopyWith<_$PracticeRecordHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordGroupList {
  int get groupId => throw _privateConstructorUsedError;
  DateTime get exerciseDate => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;

  /// Create a copy of RecordGroupList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordGroupListCopyWith<RecordGroupList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordGroupListCopyWith<$Res> {
  factory $RecordGroupListCopyWith(
          RecordGroupList value, $Res Function(RecordGroupList) then) =
      _$RecordGroupListCopyWithImpl<$Res, RecordGroupList>;
  @useResult
  $Res call({int groupId, DateTime exerciseDate, List<Exercise> exercises});
}

/// @nodoc
class _$RecordGroupListCopyWithImpl<$Res, $Val extends RecordGroupList>
    implements $RecordGroupListCopyWith<$Res> {
  _$RecordGroupListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordGroupList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? exerciseDate = null,
    Object? exercises = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseDate: null == exerciseDate
          ? _value.exerciseDate
          : exerciseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordGroupListImplCopyWith<$Res>
    implements $RecordGroupListCopyWith<$Res> {
  factory _$$RecordGroupListImplCopyWith(_$RecordGroupListImpl value,
          $Res Function(_$RecordGroupListImpl) then) =
      __$$RecordGroupListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int groupId, DateTime exerciseDate, List<Exercise> exercises});
}

/// @nodoc
class __$$RecordGroupListImplCopyWithImpl<$Res>
    extends _$RecordGroupListCopyWithImpl<$Res, _$RecordGroupListImpl>
    implements _$$RecordGroupListImplCopyWith<$Res> {
  __$$RecordGroupListImplCopyWithImpl(
      _$RecordGroupListImpl _value, $Res Function(_$RecordGroupListImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordGroupList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? exerciseDate = null,
    Object? exercises = null,
  }) {
    return _then(_$RecordGroupListImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseDate: null == exerciseDate
          ? _value.exerciseDate
          : exerciseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc

class _$RecordGroupListImpl implements _RecordGroupList {
  const _$RecordGroupListImpl(
      {required this.groupId,
      required this.exerciseDate,
      required final List<Exercise> exercises})
      : _exercises = exercises;

  @override
  final int groupId;
  @override
  final DateTime exerciseDate;
  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'RecordGroupList(groupId: $groupId, exerciseDate: $exerciseDate, exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordGroupListImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.exerciseDate, exerciseDate) ||
                other.exerciseDate == exerciseDate) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, exerciseDate,
      const DeepCollectionEquality().hash(_exercises));

  /// Create a copy of RecordGroupList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordGroupListImplCopyWith<_$RecordGroupListImpl> get copyWith =>
      __$$RecordGroupListImplCopyWithImpl<_$RecordGroupListImpl>(
          this, _$identity);
}

abstract class _RecordGroupList implements RecordGroupList {
  const factory _RecordGroupList(
      {required final int groupId,
      required final DateTime exerciseDate,
      required final List<Exercise> exercises}) = _$RecordGroupListImpl;

  @override
  int get groupId;
  @override
  DateTime get exerciseDate;
  @override
  List<Exercise> get exercises;

  /// Create a copy of RecordGroupList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordGroupListImplCopyWith<_$RecordGroupListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Exercise {
  int get exerciseId => throw _privateConstructorUsedError;
  List<Set> get sets => throw _privateConstructorUsedError;
  double get prevBestWeight => throw _privateConstructorUsedError;
  int get prevBestReps => throw _privateConstructorUsedError;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {int exerciseId,
      List<Set> sets,
      double prevBestWeight,
      int prevBestReps});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? sets = null,
    Object? prevBestWeight = null,
    Object? prevBestReps = null,
  }) {
    return _then(_value.copyWith(
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
      prevBestWeight: null == prevBestWeight
          ? _value.prevBestWeight
          : prevBestWeight // ignore: cast_nullable_to_non_nullable
              as double,
      prevBestReps: null == prevBestReps
          ? _value.prevBestReps
          : prevBestReps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int exerciseId,
      List<Set> sets,
      double prevBestWeight,
      int prevBestReps});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? sets = null,
    Object? prevBestWeight = null,
    Object? prevBestReps = null,
  }) {
    return _then(_$ExerciseImpl(
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
      prevBestWeight: null == prevBestWeight
          ? _value.prevBestWeight
          : prevBestWeight // ignore: cast_nullable_to_non_nullable
              as double,
      prevBestReps: null == prevBestReps
          ? _value.prevBestReps
          : prevBestReps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl(
      {required this.exerciseId,
      required final List<Set> sets,
      required this.prevBestWeight,
      required this.prevBestReps})
      : _sets = sets;

  @override
  final int exerciseId;
  final List<Set> _sets;
  @override
  List<Set> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  final double prevBestWeight;
  @override
  final int prevBestReps;

  @override
  String toString() {
    return 'Exercise(exerciseId: $exerciseId, sets: $sets, prevBestWeight: $prevBestWeight, prevBestReps: $prevBestReps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            const DeepCollectionEquality().equals(other._sets, _sets) &&
            (identical(other.prevBestWeight, prevBestWeight) ||
                other.prevBestWeight == prevBestWeight) &&
            (identical(other.prevBestReps, prevBestReps) ||
                other.prevBestReps == prevBestReps));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exerciseId,
      const DeepCollectionEquality().hash(_sets), prevBestWeight, prevBestReps);

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final int exerciseId,
      required final List<Set> sets,
      required final double prevBestWeight,
      required final int prevBestReps}) = _$ExerciseImpl;

  @override
  int get exerciseId;
  @override
  List<Set> get sets;
  @override
  double get prevBestWeight;
  @override
  int get prevBestReps;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Set {
  int get set => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  double get strength => throw _privateConstructorUsedError;

  /// Create a copy of Set
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res, Set>;
  @useResult
  $Res call({int set, double weight, int reps, double score, double strength});
}

/// @nodoc
class _$SetCopyWithImpl<$Res, $Val extends Set> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Set
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
    Object? weight = null,
    Object? reps = null,
    Object? score = null,
    Object? strength = null,
  }) {
    return _then(_value.copyWith(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetImplCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$$SetImplCopyWith(_$SetImpl value, $Res Function(_$SetImpl) then) =
      __$$SetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int set, double weight, int reps, double score, double strength});
}

/// @nodoc
class __$$SetImplCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res, _$SetImpl>
    implements _$$SetImplCopyWith<$Res> {
  __$$SetImplCopyWithImpl(_$SetImpl _value, $Res Function(_$SetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Set
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? set = null,
    Object? weight = null,
    Object? reps = null,
    Object? score = null,
    Object? strength = null,
  }) {
    return _then(_$SetImpl(
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetImpl implements _Set {
  const _$SetImpl(
      {required this.set,
      required this.weight,
      required this.reps,
      required this.score,
      required this.strength});

  @override
  final int set;
  @override
  final double weight;
  @override
  final int reps;
  @override
  final double score;
  @override
  final double strength;

  @override
  String toString() {
    return 'Set(set: $set, weight: $weight, reps: $reps, score: $score, strength: $strength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.strength, strength) ||
                other.strength == strength));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, set, weight, reps, score, strength);

  /// Create a copy of Set
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      __$$SetImplCopyWithImpl<_$SetImpl>(this, _$identity);
}

abstract class _Set implements Set {
  const factory _Set(
      {required final int set,
      required final double weight,
      required final int reps,
      required final double score,
      required final double strength}) = _$SetImpl;

  @override
  int get set;
  @override
  double get weight;
  @override
  int get reps;
  @override
  double get score;
  @override
  double get strength;

  /// Create a copy of Set
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
