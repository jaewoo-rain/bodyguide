// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticeRecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) selectPracticeCategory,
    required TResult Function() clearPracticeCategory,
    required TResult Function(Practice value) selectPracticeItem,
    required TResult Function(String value) onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? selectPracticeCategory,
    TResult? Function()? clearPracticeCategory,
    TResult? Function(Practice value)? selectPracticeItem,
    TResult? Function(String value)? onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? selectPracticeCategory,
    TResult Function()? clearPracticeCategory,
    TResult Function(Practice value)? selectPracticeItem,
    TResult Function(String value)? onQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectPracticeCategory value)
        selectPracticeCategory,
    required TResult Function(_clearPracticeCategory value)
        clearPracticeCategory,
    required TResult Function(_selectPracticeItem value) selectPracticeItem,
    required TResult Function(_onQueryChanged value) onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult? Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult? Function(_selectPracticeItem value)? selectPracticeItem,
    TResult? Function(_onQueryChanged value)? onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult Function(_selectPracticeItem value)? selectPracticeItem,
    TResult Function(_onQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeRecordEventCopyWith<$Res> {
  factory $PracticeRecordEventCopyWith(
          PracticeRecordEvent value, $Res Function(PracticeRecordEvent) then) =
      _$PracticeRecordEventCopyWithImpl<$Res, PracticeRecordEvent>;
}

/// @nodoc
class _$PracticeRecordEventCopyWithImpl<$Res, $Val extends PracticeRecordEvent>
    implements $PracticeRecordEventCopyWith<$Res> {
  _$PracticeRecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$selectPracticeCategoryImplCopyWith<$Res> {
  factory _$$selectPracticeCategoryImplCopyWith(
          _$selectPracticeCategoryImpl value,
          $Res Function(_$selectPracticeCategoryImpl) then) =
      __$$selectPracticeCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$selectPracticeCategoryImplCopyWithImpl<$Res>
    extends _$PracticeRecordEventCopyWithImpl<$Res,
        _$selectPracticeCategoryImpl>
    implements _$$selectPracticeCategoryImplCopyWith<$Res> {
  __$$selectPracticeCategoryImplCopyWithImpl(
      _$selectPracticeCategoryImpl _value,
      $Res Function(_$selectPracticeCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$selectPracticeCategoryImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$selectPracticeCategoryImpl implements _selectPracticeCategory {
  const _$selectPracticeCategoryImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'PracticeRecordEvent.selectPracticeCategory(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectPracticeCategoryImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$selectPracticeCategoryImplCopyWith<_$selectPracticeCategoryImpl>
      get copyWith => __$$selectPracticeCategoryImplCopyWithImpl<
          _$selectPracticeCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) selectPracticeCategory,
    required TResult Function() clearPracticeCategory,
    required TResult Function(Practice value) selectPracticeItem,
    required TResult Function(String value) onQueryChanged,
  }) {
    return selectPracticeCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? selectPracticeCategory,
    TResult? Function()? clearPracticeCategory,
    TResult? Function(Practice value)? selectPracticeItem,
    TResult? Function(String value)? onQueryChanged,
  }) {
    return selectPracticeCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? selectPracticeCategory,
    TResult Function()? clearPracticeCategory,
    TResult Function(Practice value)? selectPracticeItem,
    TResult Function(String value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (selectPracticeCategory != null) {
      return selectPracticeCategory(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectPracticeCategory value)
        selectPracticeCategory,
    required TResult Function(_clearPracticeCategory value)
        clearPracticeCategory,
    required TResult Function(_selectPracticeItem value) selectPracticeItem,
    required TResult Function(_onQueryChanged value) onQueryChanged,
  }) {
    return selectPracticeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult? Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult? Function(_selectPracticeItem value)? selectPracticeItem,
    TResult? Function(_onQueryChanged value)? onQueryChanged,
  }) {
    return selectPracticeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult Function(_selectPracticeItem value)? selectPracticeItem,
    TResult Function(_onQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (selectPracticeCategory != null) {
      return selectPracticeCategory(this);
    }
    return orElse();
  }
}

abstract class _selectPracticeCategory implements PracticeRecordEvent {
  const factory _selectPracticeCategory({required final String value}) =
      _$selectPracticeCategoryImpl;

  String get value;

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$selectPracticeCategoryImplCopyWith<_$selectPracticeCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearPracticeCategoryImplCopyWith<$Res> {
  factory _$$clearPracticeCategoryImplCopyWith(
          _$clearPracticeCategoryImpl value,
          $Res Function(_$clearPracticeCategoryImpl) then) =
      __$$clearPracticeCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clearPracticeCategoryImplCopyWithImpl<$Res>
    extends _$PracticeRecordEventCopyWithImpl<$Res, _$clearPracticeCategoryImpl>
    implements _$$clearPracticeCategoryImplCopyWith<$Res> {
  __$$clearPracticeCategoryImplCopyWithImpl(_$clearPracticeCategoryImpl _value,
      $Res Function(_$clearPracticeCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$clearPracticeCategoryImpl implements _clearPracticeCategory {
  const _$clearPracticeCategoryImpl();

  @override
  String toString() {
    return 'PracticeRecordEvent.clearPracticeCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$clearPracticeCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) selectPracticeCategory,
    required TResult Function() clearPracticeCategory,
    required TResult Function(Practice value) selectPracticeItem,
    required TResult Function(String value) onQueryChanged,
  }) {
    return clearPracticeCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? selectPracticeCategory,
    TResult? Function()? clearPracticeCategory,
    TResult? Function(Practice value)? selectPracticeItem,
    TResult? Function(String value)? onQueryChanged,
  }) {
    return clearPracticeCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? selectPracticeCategory,
    TResult Function()? clearPracticeCategory,
    TResult Function(Practice value)? selectPracticeItem,
    TResult Function(String value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (clearPracticeCategory != null) {
      return clearPracticeCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectPracticeCategory value)
        selectPracticeCategory,
    required TResult Function(_clearPracticeCategory value)
        clearPracticeCategory,
    required TResult Function(_selectPracticeItem value) selectPracticeItem,
    required TResult Function(_onQueryChanged value) onQueryChanged,
  }) {
    return clearPracticeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult? Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult? Function(_selectPracticeItem value)? selectPracticeItem,
    TResult? Function(_onQueryChanged value)? onQueryChanged,
  }) {
    return clearPracticeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult Function(_selectPracticeItem value)? selectPracticeItem,
    TResult Function(_onQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (clearPracticeCategory != null) {
      return clearPracticeCategory(this);
    }
    return orElse();
  }
}

abstract class _clearPracticeCategory implements PracticeRecordEvent {
  const factory _clearPracticeCategory() = _$clearPracticeCategoryImpl;
}

/// @nodoc
abstract class _$$selectPracticeItemImplCopyWith<$Res> {
  factory _$$selectPracticeItemImplCopyWith(_$selectPracticeItemImpl value,
          $Res Function(_$selectPracticeItemImpl) then) =
      __$$selectPracticeItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Practice value});

  $PracticeCopyWith<$Res> get value;
}

/// @nodoc
class __$$selectPracticeItemImplCopyWithImpl<$Res>
    extends _$PracticeRecordEventCopyWithImpl<$Res, _$selectPracticeItemImpl>
    implements _$$selectPracticeItemImplCopyWith<$Res> {
  __$$selectPracticeItemImplCopyWithImpl(_$selectPracticeItemImpl _value,
      $Res Function(_$selectPracticeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$selectPracticeItemImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Practice,
    ));
  }

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PracticeCopyWith<$Res> get value {
    return $PracticeCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$selectPracticeItemImpl implements _selectPracticeItem {
  const _$selectPracticeItemImpl({required this.value});

  @override
  final Practice value;

  @override
  String toString() {
    return 'PracticeRecordEvent.selectPracticeItem(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectPracticeItemImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$selectPracticeItemImplCopyWith<_$selectPracticeItemImpl> get copyWith =>
      __$$selectPracticeItemImplCopyWithImpl<_$selectPracticeItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) selectPracticeCategory,
    required TResult Function() clearPracticeCategory,
    required TResult Function(Practice value) selectPracticeItem,
    required TResult Function(String value) onQueryChanged,
  }) {
    return selectPracticeItem(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? selectPracticeCategory,
    TResult? Function()? clearPracticeCategory,
    TResult? Function(Practice value)? selectPracticeItem,
    TResult? Function(String value)? onQueryChanged,
  }) {
    return selectPracticeItem?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? selectPracticeCategory,
    TResult Function()? clearPracticeCategory,
    TResult Function(Practice value)? selectPracticeItem,
    TResult Function(String value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (selectPracticeItem != null) {
      return selectPracticeItem(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectPracticeCategory value)
        selectPracticeCategory,
    required TResult Function(_clearPracticeCategory value)
        clearPracticeCategory,
    required TResult Function(_selectPracticeItem value) selectPracticeItem,
    required TResult Function(_onQueryChanged value) onQueryChanged,
  }) {
    return selectPracticeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult? Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult? Function(_selectPracticeItem value)? selectPracticeItem,
    TResult? Function(_onQueryChanged value)? onQueryChanged,
  }) {
    return selectPracticeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult Function(_selectPracticeItem value)? selectPracticeItem,
    TResult Function(_onQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (selectPracticeItem != null) {
      return selectPracticeItem(this);
    }
    return orElse();
  }
}

abstract class _selectPracticeItem implements PracticeRecordEvent {
  const factory _selectPracticeItem({required final Practice value}) =
      _$selectPracticeItemImpl;

  Practice get value;

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$selectPracticeItemImplCopyWith<_$selectPracticeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onQueryChangedImplCopyWith<$Res> {
  factory _$$onQueryChangedImplCopyWith(_$onQueryChangedImpl value,
          $Res Function(_$onQueryChangedImpl) then) =
      __$$onQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$onQueryChangedImplCopyWithImpl<$Res>
    extends _$PracticeRecordEventCopyWithImpl<$Res, _$onQueryChangedImpl>
    implements _$$onQueryChangedImplCopyWith<$Res> {
  __$$onQueryChangedImplCopyWithImpl(
      _$onQueryChangedImpl _value, $Res Function(_$onQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$onQueryChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onQueryChangedImpl implements _onQueryChanged {
  const _$onQueryChangedImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'PracticeRecordEvent.onQueryChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onQueryChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onQueryChangedImplCopyWith<_$onQueryChangedImpl> get copyWith =>
      __$$onQueryChangedImplCopyWithImpl<_$onQueryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) selectPracticeCategory,
    required TResult Function() clearPracticeCategory,
    required TResult Function(Practice value) selectPracticeItem,
    required TResult Function(String value) onQueryChanged,
  }) {
    return onQueryChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? selectPracticeCategory,
    TResult? Function()? clearPracticeCategory,
    TResult? Function(Practice value)? selectPracticeItem,
    TResult? Function(String value)? onQueryChanged,
  }) {
    return onQueryChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? selectPracticeCategory,
    TResult Function()? clearPracticeCategory,
    TResult Function(Practice value)? selectPracticeItem,
    TResult Function(String value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (onQueryChanged != null) {
      return onQueryChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectPracticeCategory value)
        selectPracticeCategory,
    required TResult Function(_clearPracticeCategory value)
        clearPracticeCategory,
    required TResult Function(_selectPracticeItem value) selectPracticeItem,
    required TResult Function(_onQueryChanged value) onQueryChanged,
  }) {
    return onQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult? Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult? Function(_selectPracticeItem value)? selectPracticeItem,
    TResult? Function(_onQueryChanged value)? onQueryChanged,
  }) {
    return onQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectPracticeCategory value)? selectPracticeCategory,
    TResult Function(_clearPracticeCategory value)? clearPracticeCategory,
    TResult Function(_selectPracticeItem value)? selectPracticeItem,
    TResult Function(_onQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (onQueryChanged != null) {
      return onQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _onQueryChanged implements PracticeRecordEvent {
  const factory _onQueryChanged({required final String value}) =
      _$onQueryChangedImpl;

  String get value;

  /// Create a copy of PracticeRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onQueryChangedImplCopyWith<_$onQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeRecordState {
  String get query => throw _privateConstructorUsedError;
  Set<Practice> get searchedPracticeItems => throw _privateConstructorUsedError;
  String? get selectedPracticeCategory => throw _privateConstructorUsedError;
  Set<Practice> get selectedPracticeItems => throw _privateConstructorUsedError;

  /// Create a copy of PracticeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeRecordStateCopyWith<PracticeRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeRecordStateCopyWith<$Res> {
  factory $PracticeRecordStateCopyWith(
          PracticeRecordState value, $Res Function(PracticeRecordState) then) =
      _$PracticeRecordStateCopyWithImpl<$Res, PracticeRecordState>;
  @useResult
  $Res call(
      {String query,
      Set<Practice> searchedPracticeItems,
      String? selectedPracticeCategory,
      Set<Practice> selectedPracticeItems});
}

/// @nodoc
class _$PracticeRecordStateCopyWithImpl<$Res, $Val extends PracticeRecordState>
    implements $PracticeRecordStateCopyWith<$Res> {
  _$PracticeRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? searchedPracticeItems = null,
    Object? selectedPracticeCategory = freezed,
    Object? selectedPracticeItems = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchedPracticeItems: null == searchedPracticeItems
          ? _value.searchedPracticeItems
          : searchedPracticeItems // ignore: cast_nullable_to_non_nullable
              as Set<Practice>,
      selectedPracticeCategory: freezed == selectedPracticeCategory
          ? _value.selectedPracticeCategory
          : selectedPracticeCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPracticeItems: null == selectedPracticeItems
          ? _value.selectedPracticeItems
          : selectedPracticeItems // ignore: cast_nullable_to_non_nullable
              as Set<Practice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeRecordStateImplCopyWith<$Res>
    implements $PracticeRecordStateCopyWith<$Res> {
  factory _$$PracticeRecordStateImplCopyWith(_$PracticeRecordStateImpl value,
          $Res Function(_$PracticeRecordStateImpl) then) =
      __$$PracticeRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      Set<Practice> searchedPracticeItems,
      String? selectedPracticeCategory,
      Set<Practice> selectedPracticeItems});
}

/// @nodoc
class __$$PracticeRecordStateImplCopyWithImpl<$Res>
    extends _$PracticeRecordStateCopyWithImpl<$Res, _$PracticeRecordStateImpl>
    implements _$$PracticeRecordStateImplCopyWith<$Res> {
  __$$PracticeRecordStateImplCopyWithImpl(_$PracticeRecordStateImpl _value,
      $Res Function(_$PracticeRecordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? searchedPracticeItems = null,
    Object? selectedPracticeCategory = freezed,
    Object? selectedPracticeItems = null,
  }) {
    return _then(_$PracticeRecordStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchedPracticeItems: null == searchedPracticeItems
          ? _value._searchedPracticeItems
          : searchedPracticeItems // ignore: cast_nullable_to_non_nullable
              as Set<Practice>,
      selectedPracticeCategory: freezed == selectedPracticeCategory
          ? _value.selectedPracticeCategory
          : selectedPracticeCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPracticeItems: null == selectedPracticeItems
          ? _value._selectedPracticeItems
          : selectedPracticeItems // ignore: cast_nullable_to_non_nullable
              as Set<Practice>,
    ));
  }
}

/// @nodoc

class _$PracticeRecordStateImpl implements _PracticeRecordState {
  const _$PracticeRecordStateImpl(
      {this.query = '',
      final Set<Practice> searchedPracticeItems = const {},
      this.selectedPracticeCategory = null,
      final Set<Practice> selectedPracticeItems = const {}})
      : _searchedPracticeItems = searchedPracticeItems,
        _selectedPracticeItems = selectedPracticeItems;

  @override
  @JsonKey()
  final String query;
  final Set<Practice> _searchedPracticeItems;
  @override
  @JsonKey()
  Set<Practice> get searchedPracticeItems {
    if (_searchedPracticeItems is EqualUnmodifiableSetView)
      return _searchedPracticeItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_searchedPracticeItems);
  }

  @override
  @JsonKey()
  final String? selectedPracticeCategory;
  final Set<Practice> _selectedPracticeItems;
  @override
  @JsonKey()
  Set<Practice> get selectedPracticeItems {
    if (_selectedPracticeItems is EqualUnmodifiableSetView)
      return _selectedPracticeItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedPracticeItems);
  }

  @override
  String toString() {
    return 'PracticeRecordState(query: $query, searchedPracticeItems: $searchedPracticeItems, selectedPracticeCategory: $selectedPracticeCategory, selectedPracticeItems: $selectedPracticeItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeRecordStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._searchedPracticeItems, _searchedPracticeItems) &&
            (identical(
                    other.selectedPracticeCategory, selectedPracticeCategory) ||
                other.selectedPracticeCategory == selectedPracticeCategory) &&
            const DeepCollectionEquality()
                .equals(other._selectedPracticeItems, _selectedPracticeItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_searchedPracticeItems),
      selectedPracticeCategory,
      const DeepCollectionEquality().hash(_selectedPracticeItems));

  /// Create a copy of PracticeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeRecordStateImplCopyWith<_$PracticeRecordStateImpl> get copyWith =>
      __$$PracticeRecordStateImplCopyWithImpl<_$PracticeRecordStateImpl>(
          this, _$identity);
}

abstract class _PracticeRecordState implements PracticeRecordState {
  const factory _PracticeRecordState(
      {final String query,
      final Set<Practice> searchedPracticeItems,
      final String? selectedPracticeCategory,
      final Set<Practice> selectedPracticeItems}) = _$PracticeRecordStateImpl;

  @override
  String get query;
  @override
  Set<Practice> get searchedPracticeItems;
  @override
  String? get selectedPracticeCategory;
  @override
  Set<Practice> get selectedPracticeItems;

  /// Create a copy of PracticeRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeRecordStateImplCopyWith<_$PracticeRecordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
