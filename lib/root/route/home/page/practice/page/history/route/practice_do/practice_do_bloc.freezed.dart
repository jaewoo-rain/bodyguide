// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_do_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticeDoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeDoEventCopyWith<$Res> {
  factory $PracticeDoEventCopyWith(
          PracticeDoEvent value, $Res Function(PracticeDoEvent) then) =
      _$PracticeDoEventCopyWithImpl<$Res, PracticeDoEvent>;
}

/// @nodoc
class _$PracticeDoEventCopyWithImpl<$Res, $Val extends PracticeDoEvent>
    implements $PracticeDoEventCopyWith<$Res> {
  _$PracticeDoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$onWeightChangedImplCopyWith<$Res> {
  factory _$$onWeightChangedImplCopyWith(_$onWeightChangedImpl value,
          $Res Function(_$onWeightChangedImpl) then) =
      __$$onWeightChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int practiceIndex, int setIndex, String value});
}

/// @nodoc
class __$$onWeightChangedImplCopyWithImpl<$Res>
    extends _$PracticeDoEventCopyWithImpl<$Res, _$onWeightChangedImpl>
    implements _$$onWeightChangedImplCopyWith<$Res> {
  __$$onWeightChangedImplCopyWithImpl(
      _$onWeightChangedImpl _value, $Res Function(_$onWeightChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practiceIndex = null,
    Object? setIndex = null,
    Object? value = null,
  }) {
    return _then(_$onWeightChangedImpl(
      practiceIndex: null == practiceIndex
          ? _value.practiceIndex
          : practiceIndex // ignore: cast_nullable_to_non_nullable
              as int,
      setIndex: null == setIndex
          ? _value.setIndex
          : setIndex // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onWeightChangedImpl implements _onWeightChanged {
  const _$onWeightChangedImpl(
      {required this.practiceIndex,
      required this.setIndex,
      required this.value});

// 무게변화
  @override
  final int practiceIndex;
  @override
  final int setIndex;
  @override
  final String value;

  @override
  String toString() {
    return 'PracticeDoEvent.onWeightChanged(practiceIndex: $practiceIndex, setIndex: $setIndex, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onWeightChangedImpl &&
            (identical(other.practiceIndex, practiceIndex) ||
                other.practiceIndex == practiceIndex) &&
            (identical(other.setIndex, setIndex) ||
                other.setIndex == setIndex) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, practiceIndex, setIndex, value);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onWeightChangedImplCopyWith<_$onWeightChangedImpl> get copyWith =>
      __$$onWeightChangedImplCopyWithImpl<_$onWeightChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) {
    return onWeightChanged(practiceIndex, setIndex, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) {
    return onWeightChanged?.call(practiceIndex, setIndex, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) {
    if (onWeightChanged != null) {
      return onWeightChanged(practiceIndex, setIndex, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) {
    return onWeightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) {
    return onWeightChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (onWeightChanged != null) {
      return onWeightChanged(this);
    }
    return orElse();
  }
}

abstract class _onWeightChanged implements PracticeDoEvent {
  const factory _onWeightChanged(
      {required final int practiceIndex,
      required final int setIndex,
      required final String value}) = _$onWeightChangedImpl;

// 무게변화
  int get practiceIndex;
  int get setIndex;
  String get value;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onWeightChangedImplCopyWith<_$onWeightChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onCountChangedImplCopyWith<$Res> {
  factory _$$onCountChangedImplCopyWith(_$onCountChangedImpl value,
          $Res Function(_$onCountChangedImpl) then) =
      __$$onCountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int practiceIndex, int setIndex, String value});
}

/// @nodoc
class __$$onCountChangedImplCopyWithImpl<$Res>
    extends _$PracticeDoEventCopyWithImpl<$Res, _$onCountChangedImpl>
    implements _$$onCountChangedImplCopyWith<$Res> {
  __$$onCountChangedImplCopyWithImpl(
      _$onCountChangedImpl _value, $Res Function(_$onCountChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practiceIndex = null,
    Object? setIndex = null,
    Object? value = null,
  }) {
    return _then(_$onCountChangedImpl(
      practiceIndex: null == practiceIndex
          ? _value.practiceIndex
          : practiceIndex // ignore: cast_nullable_to_non_nullable
              as int,
      setIndex: null == setIndex
          ? _value.setIndex
          : setIndex // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onCountChangedImpl implements _onCountChanged {
  const _$onCountChangedImpl(
      {required this.practiceIndex,
      required this.setIndex,
      required this.value});

// 횟수변화
  @override
  final int practiceIndex;
  @override
  final int setIndex;
  @override
  final String value;

  @override
  String toString() {
    return 'PracticeDoEvent.onCountChanged(practiceIndex: $practiceIndex, setIndex: $setIndex, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onCountChangedImpl &&
            (identical(other.practiceIndex, practiceIndex) ||
                other.practiceIndex == practiceIndex) &&
            (identical(other.setIndex, setIndex) ||
                other.setIndex == setIndex) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, practiceIndex, setIndex, value);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onCountChangedImplCopyWith<_$onCountChangedImpl> get copyWith =>
      __$$onCountChangedImplCopyWithImpl<_$onCountChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) {
    return onCountChanged(practiceIndex, setIndex, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) {
    return onCountChanged?.call(practiceIndex, setIndex, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) {
    if (onCountChanged != null) {
      return onCountChanged(practiceIndex, setIndex, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) {
    return onCountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) {
    return onCountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (onCountChanged != null) {
      return onCountChanged(this);
    }
    return orElse();
  }
}

abstract class _onCountChanged implements PracticeDoEvent {
  const factory _onCountChanged(
      {required final int practiceIndex,
      required final int setIndex,
      required final String value}) = _$onCountChangedImpl;

// 횟수변화
  int get practiceIndex;
  int get setIndex;
  String get value;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onCountChangedImplCopyWith<_$onCountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onChangedImplCopyWith<$Res> {
  factory _$$onChangedImplCopyWith(
          _$onChangedImpl value, $Res Function(_$onChangedImpl) then) =
      __$$onChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int practiceIndex, int setIndex});
}

/// @nodoc
class __$$onChangedImplCopyWithImpl<$Res>
    extends _$PracticeDoEventCopyWithImpl<$Res, _$onChangedImpl>
    implements _$$onChangedImplCopyWith<$Res> {
  __$$onChangedImplCopyWithImpl(
      _$onChangedImpl _value, $Res Function(_$onChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practiceIndex = null,
    Object? setIndex = null,
  }) {
    return _then(_$onChangedImpl(
      practiceIndex: null == practiceIndex
          ? _value.practiceIndex
          : practiceIndex // ignore: cast_nullable_to_non_nullable
              as int,
      setIndex: null == setIndex
          ? _value.setIndex
          : setIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$onChangedImpl implements _onChanged {
  const _$onChangedImpl({required this.practiceIndex, required this.setIndex});

// 수치 변화
  @override
  final int practiceIndex;
  @override
  final int setIndex;

  @override
  String toString() {
    return 'PracticeDoEvent.onChanged(practiceIndex: $practiceIndex, setIndex: $setIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onChangedImpl &&
            (identical(other.practiceIndex, practiceIndex) ||
                other.practiceIndex == practiceIndex) &&
            (identical(other.setIndex, setIndex) ||
                other.setIndex == setIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, practiceIndex, setIndex);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onChangedImplCopyWith<_$onChangedImpl> get copyWith =>
      __$$onChangedImplCopyWithImpl<_$onChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) {
    return onChanged(practiceIndex, setIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) {
    return onChanged?.call(practiceIndex, setIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(practiceIndex, setIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class _onChanged implements PracticeDoEvent {
  const factory _onChanged(
      {required final int practiceIndex,
      required final int setIndex}) = _$onChangedImpl;

// 수치 변화
  int get practiceIndex;
  int get setIndex;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onChangedImplCopyWith<_$onChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addPracticesImplCopyWith<$Res> {
  factory _$$addPracticesImplCopyWith(
          _$addPracticesImpl value, $Res Function(_$addPracticesImpl) then) =
      __$$addPracticesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<Practice> practices});
}

/// @nodoc
class __$$addPracticesImplCopyWithImpl<$Res>
    extends _$PracticeDoEventCopyWithImpl<$Res, _$addPracticesImpl>
    implements _$$addPracticesImplCopyWith<$Res> {
  __$$addPracticesImplCopyWithImpl(
      _$addPracticesImpl _value, $Res Function(_$addPracticesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practices = null,
  }) {
    return _then(_$addPracticesImpl(
      practices: null == practices
          ? _value._practices
          : practices // ignore: cast_nullable_to_non_nullable
              as Set<Practice>,
    ));
  }
}

/// @nodoc

class _$addPracticesImpl implements _addPractices {
  const _$addPracticesImpl({required final Set<Practice> practices})
      : _practices = practices;

  final Set<Practice> _practices;
  @override
  Set<Practice> get practices {
    if (_practices is EqualUnmodifiableSetView) return _practices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_practices);
  }

  @override
  String toString() {
    return 'PracticeDoEvent.addPractices(practices: $practices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addPracticesImpl &&
            const DeepCollectionEquality()
                .equals(other._practices, _practices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_practices));

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addPracticesImplCopyWith<_$addPracticesImpl> get copyWith =>
      __$$addPracticesImplCopyWithImpl<_$addPracticesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) {
    return addPractices(practices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) {
    return addPractices?.call(practices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) {
    if (addPractices != null) {
      return addPractices(practices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) {
    return addPractices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) {
    return addPractices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (addPractices != null) {
      return addPractices(this);
    }
    return orElse();
  }
}

abstract class _addPractices implements PracticeDoEvent {
  const factory _addPractices({required final Set<Practice> practices}) =
      _$addPracticesImpl;

  Set<Practice> get practices;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addPracticesImplCopyWith<_$addPracticesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$removePracticesImplCopyWith<$Res> {
  factory _$$removePracticesImplCopyWith(_$removePracticesImpl value,
          $Res Function(_$removePracticesImpl) then) =
      __$$removePracticesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> practices});
}

/// @nodoc
class __$$removePracticesImplCopyWithImpl<$Res>
    extends _$PracticeDoEventCopyWithImpl<$Res, _$removePracticesImpl>
    implements _$$removePracticesImplCopyWith<$Res> {
  __$$removePracticesImplCopyWithImpl(
      _$removePracticesImpl _value, $Res Function(_$removePracticesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practices = null,
  }) {
    return _then(_$removePracticesImpl(
      practices: null == practices
          ? _value._practices
          : practices // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$removePracticesImpl implements _removePractices {
  const _$removePracticesImpl({required final List<int> practices})
      : _practices = practices;

  final List<int> _practices;
  @override
  List<int> get practices {
    if (_practices is EqualUnmodifiableListView) return _practices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_practices);
  }

  @override
  String toString() {
    return 'PracticeDoEvent.removePractices(practices: $practices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$removePracticesImpl &&
            const DeepCollectionEquality()
                .equals(other._practices, _practices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_practices));

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$removePracticesImplCopyWith<_$removePracticesImpl> get copyWith =>
      __$$removePracticesImplCopyWithImpl<_$removePracticesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) {
    return removePractices(practices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) {
    return removePractices?.call(practices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) {
    if (removePractices != null) {
      return removePractices(practices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) {
    return removePractices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) {
    return removePractices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (removePractices != null) {
      return removePractices(this);
    }
    return orElse();
  }
}

abstract class _removePractices implements PracticeDoEvent {
  const factory _removePractices({required final List<int> practices}) =
      _$removePracticesImpl;

  List<int> get practices;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$removePracticesImplCopyWith<_$removePracticesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$submitImplCopyWith<$Res> {
  factory _$$submitImplCopyWith(
          _$submitImpl value, $Res Function(_$submitImpl) then) =
      __$$submitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool submit});
}

/// @nodoc
class __$$submitImplCopyWithImpl<$Res>
    extends _$PracticeDoEventCopyWithImpl<$Res, _$submitImpl>
    implements _$$submitImplCopyWith<$Res> {
  __$$submitImplCopyWithImpl(
      _$submitImpl _value, $Res Function(_$submitImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submit = null,
  }) {
    return _then(_$submitImpl(
      submit: null == submit
          ? _value.submit
          : submit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$submitImpl implements _submit {
  const _$submitImpl({required this.submit});

  @override
  final bool submit;

  @override
  String toString() {
    return 'PracticeDoEvent.submit(submit: $submit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$submitImpl &&
            (identical(other.submit, submit) || other.submit == submit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submit);

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$submitImplCopyWith<_$submitImpl> get copyWith =>
      __$$submitImplCopyWithImpl<_$submitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int practiceIndex, int setIndex, String value)
        onWeightChanged,
    required TResult Function(int practiceIndex, int setIndex, String value)
        onCountChanged,
    required TResult Function(int practiceIndex, int setIndex) onChanged,
    required TResult Function(Set<Practice> practices) addPractices,
    required TResult Function(List<int> practices) removePractices,
    required TResult Function(bool submit) submit,
  }) {
    return submit(this.submit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult? Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult? Function(int practiceIndex, int setIndex)? onChanged,
    TResult? Function(Set<Practice> practices)? addPractices,
    TResult? Function(List<int> practices)? removePractices,
    TResult? Function(bool submit)? submit,
  }) {
    return submit?.call(this.submit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int practiceIndex, int setIndex, String value)?
        onWeightChanged,
    TResult Function(int practiceIndex, int setIndex, String value)?
        onCountChanged,
    TResult Function(int practiceIndex, int setIndex)? onChanged,
    TResult Function(Set<Practice> practices)? addPractices,
    TResult Function(List<int> practices)? removePractices,
    TResult Function(bool submit)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this.submit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onWeightChanged value) onWeightChanged,
    required TResult Function(_onCountChanged value) onCountChanged,
    required TResult Function(_onChanged value) onChanged,
    required TResult Function(_addPractices value) addPractices,
    required TResult Function(_removePractices value) removePractices,
    required TResult Function(_submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onWeightChanged value)? onWeightChanged,
    TResult? Function(_onCountChanged value)? onCountChanged,
    TResult? Function(_onChanged value)? onChanged,
    TResult? Function(_addPractices value)? addPractices,
    TResult? Function(_removePractices value)? removePractices,
    TResult? Function(_submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onWeightChanged value)? onWeightChanged,
    TResult Function(_onCountChanged value)? onCountChanged,
    TResult Function(_onChanged value)? onChanged,
    TResult Function(_addPractices value)? addPractices,
    TResult Function(_removePractices value)? removePractices,
    TResult Function(_submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _submit implements PracticeDoEvent {
  const factory _submit({required final bool submit}) = _$submitImpl;

  bool get submit;

  /// Create a copy of PracticeDoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$submitImplCopyWith<_$submitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeDoState {
  List<PracticeRecord> get records => throw _privateConstructorUsedError;

  /// Create a copy of PracticeDoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeDoStateCopyWith<PracticeDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeDoStateCopyWith<$Res> {
  factory $PracticeDoStateCopyWith(
          PracticeDoState value, $Res Function(PracticeDoState) then) =
      _$PracticeDoStateCopyWithImpl<$Res, PracticeDoState>;
  @useResult
  $Res call({List<PracticeRecord> records});
}

/// @nodoc
class _$PracticeDoStateCopyWithImpl<$Res, $Val extends PracticeDoState>
    implements $PracticeDoStateCopyWith<$Res> {
  _$PracticeDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeDoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PracticeRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeDoStateImplCopyWith<$Res>
    implements $PracticeDoStateCopyWith<$Res> {
  factory _$$PracticeDoStateImplCopyWith(_$PracticeDoStateImpl value,
          $Res Function(_$PracticeDoStateImpl) then) =
      __$$PracticeDoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PracticeRecord> records});
}

/// @nodoc
class __$$PracticeDoStateImplCopyWithImpl<$Res>
    extends _$PracticeDoStateCopyWithImpl<$Res, _$PracticeDoStateImpl>
    implements _$$PracticeDoStateImplCopyWith<$Res> {
  __$$PracticeDoStateImplCopyWithImpl(
      _$PracticeDoStateImpl _value, $Res Function(_$PracticeDoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeDoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_$PracticeDoStateImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PracticeRecord>,
    ));
  }
}

/// @nodoc

class _$PracticeDoStateImpl implements _PracticeDoState {
  const _$PracticeDoStateImpl({final List<PracticeRecord> records = const []})
      : _records = records;

  final List<PracticeRecord> _records;
  @override
  @JsonKey()
  List<PracticeRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'PracticeDoState(records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeDoStateImpl &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  /// Create a copy of PracticeDoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeDoStateImplCopyWith<_$PracticeDoStateImpl> get copyWith =>
      __$$PracticeDoStateImplCopyWithImpl<_$PracticeDoStateImpl>(
          this, _$identity);
}

abstract class _PracticeDoState implements PracticeDoState {
  const factory _PracticeDoState({final List<PracticeRecord> records}) =
      _$PracticeDoStateImpl;

  @override
  List<PracticeRecord> get records;

  /// Create a copy of PracticeDoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeDoStateImplCopyWith<_$PracticeDoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeRecord {
  Practice get practice => throw _privateConstructorUsedError;
  List<PracticeSet> get sets => throw _privateConstructorUsedError;
  double get prevBestWeight => throw _privateConstructorUsedError;
  int get prevBestRep => throw _privateConstructorUsedError;

  /// Create a copy of PracticeRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeRecordCopyWith<PracticeRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeRecordCopyWith<$Res> {
  factory $PracticeRecordCopyWith(
          PracticeRecord value, $Res Function(PracticeRecord) then) =
      _$PracticeRecordCopyWithImpl<$Res, PracticeRecord>;
  @useResult
  $Res call(
      {Practice practice,
      List<PracticeSet> sets,
      double prevBestWeight,
      int prevBestRep});

  $PracticeCopyWith<$Res> get practice;
}

/// @nodoc
class _$PracticeRecordCopyWithImpl<$Res, $Val extends PracticeRecord>
    implements $PracticeRecordCopyWith<$Res> {
  _$PracticeRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practice = null,
    Object? sets = null,
    Object? prevBestWeight = null,
    Object? prevBestRep = null,
  }) {
    return _then(_value.copyWith(
      practice: null == practice
          ? _value.practice
          : practice // ignore: cast_nullable_to_non_nullable
              as Practice,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<PracticeSet>,
      prevBestWeight: null == prevBestWeight
          ? _value.prevBestWeight
          : prevBestWeight // ignore: cast_nullable_to_non_nullable
              as double,
      prevBestRep: null == prevBestRep
          ? _value.prevBestRep
          : prevBestRep // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PracticeRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PracticeCopyWith<$Res> get practice {
    return $PracticeCopyWith<$Res>(_value.practice, (value) {
      return _then(_value.copyWith(practice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PracticeRecordImplCopyWith<$Res>
    implements $PracticeRecordCopyWith<$Res> {
  factory _$$PracticeRecordImplCopyWith(_$PracticeRecordImpl value,
          $Res Function(_$PracticeRecordImpl) then) =
      __$$PracticeRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Practice practice,
      List<PracticeSet> sets,
      double prevBestWeight,
      int prevBestRep});

  @override
  $PracticeCopyWith<$Res> get practice;
}

/// @nodoc
class __$$PracticeRecordImplCopyWithImpl<$Res>
    extends _$PracticeRecordCopyWithImpl<$Res, _$PracticeRecordImpl>
    implements _$$PracticeRecordImplCopyWith<$Res> {
  __$$PracticeRecordImplCopyWithImpl(
      _$PracticeRecordImpl _value, $Res Function(_$PracticeRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? practice = null,
    Object? sets = null,
    Object? prevBestWeight = null,
    Object? prevBestRep = null,
  }) {
    return _then(_$PracticeRecordImpl(
      practice: null == practice
          ? _value.practice
          : practice // ignore: cast_nullable_to_non_nullable
              as Practice,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<PracticeSet>,
      prevBestWeight: null == prevBestWeight
          ? _value.prevBestWeight
          : prevBestWeight // ignore: cast_nullable_to_non_nullable
              as double,
      prevBestRep: null == prevBestRep
          ? _value.prevBestRep
          : prevBestRep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PracticeRecordImpl implements _PracticeRecord {
  const _$PracticeRecordImpl(
      {required this.practice,
      required final List<PracticeSet> sets,
      required this.prevBestWeight,
      required this.prevBestRep})
      : _sets = sets;

  @override
  final Practice practice;
  final List<PracticeSet> _sets;
  @override
  List<PracticeSet> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  final double prevBestWeight;
  @override
  final int prevBestRep;

  @override
  String toString() {
    return 'PracticeRecord(practice: $practice, sets: $sets, prevBestWeight: $prevBestWeight, prevBestRep: $prevBestRep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeRecordImpl &&
            (identical(other.practice, practice) ||
                other.practice == practice) &&
            const DeepCollectionEquality().equals(other._sets, _sets) &&
            (identical(other.prevBestWeight, prevBestWeight) ||
                other.prevBestWeight == prevBestWeight) &&
            (identical(other.prevBestRep, prevBestRep) ||
                other.prevBestRep == prevBestRep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, practice,
      const DeepCollectionEquality().hash(_sets), prevBestWeight, prevBestRep);

  /// Create a copy of PracticeRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeRecordImplCopyWith<_$PracticeRecordImpl> get copyWith =>
      __$$PracticeRecordImplCopyWithImpl<_$PracticeRecordImpl>(
          this, _$identity);
}

abstract class _PracticeRecord implements PracticeRecord {
  const factory _PracticeRecord(
      {required final Practice practice,
      required final List<PracticeSet> sets,
      required final double prevBestWeight,
      required final int prevBestRep}) = _$PracticeRecordImpl;

  @override
  Practice get practice;
  @override
  List<PracticeSet> get sets;
  @override
  double get prevBestWeight;
  @override
  int get prevBestRep;

  /// Create a copy of PracticeRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeRecordImplCopyWith<_$PracticeRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PracticeSet {
  String get weight => throw _privateConstructorUsedError;
  set weight(String value) =>
      throw _privateConstructorUsedError; // 기본값을 "0"으로 설정
  String get count => throw _privateConstructorUsedError; // 기본값을 "0"으로 설정
  set count(String value) => throw _privateConstructorUsedError;

  /// Create a copy of PracticeSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeSetCopyWith<PracticeSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeSetCopyWith<$Res> {
  factory $PracticeSetCopyWith(
          PracticeSet value, $Res Function(PracticeSet) then) =
      _$PracticeSetCopyWithImpl<$Res, PracticeSet>;
  @useResult
  $Res call({String weight, String count});
}

/// @nodoc
class _$PracticeSetCopyWithImpl<$Res, $Val extends PracticeSet>
    implements $PracticeSetCopyWith<$Res> {
  _$PracticeSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeSetImplCopyWith<$Res>
    implements $PracticeSetCopyWith<$Res> {
  factory _$$PracticeSetImplCopyWith(
          _$PracticeSetImpl value, $Res Function(_$PracticeSetImpl) then) =
      __$$PracticeSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String weight, String count});
}

/// @nodoc
class __$$PracticeSetImplCopyWithImpl<$Res>
    extends _$PracticeSetCopyWithImpl<$Res, _$PracticeSetImpl>
    implements _$$PracticeSetImplCopyWith<$Res> {
  __$$PracticeSetImplCopyWithImpl(
      _$PracticeSetImpl _value, $Res Function(_$PracticeSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? count = null,
  }) {
    return _then(_$PracticeSetImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PracticeSetImpl implements _PracticeSet {
  _$PracticeSetImpl({this.weight = "0", this.count = "0"});

  @override
  @JsonKey()
  String weight;
// 기본값을 "0"으로 설정
  @override
  @JsonKey()
  String count;

  @override
  String toString() {
    return 'PracticeSet(weight: $weight, count: $count)';
  }

  /// Create a copy of PracticeSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeSetImplCopyWith<_$PracticeSetImpl> get copyWith =>
      __$$PracticeSetImplCopyWithImpl<_$PracticeSetImpl>(this, _$identity);
}

abstract class _PracticeSet implements PracticeSet {
  factory _PracticeSet({String weight, String count}) = _$PracticeSetImpl;

  @override
  String get weight;
  set weight(String value); // 기본값을 "0"으로 설정
  @override
  String get count; // 기본값을 "0"으로 설정
  set count(String value);

  /// Create a copy of PracticeSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeSetImplCopyWith<_$PracticeSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
