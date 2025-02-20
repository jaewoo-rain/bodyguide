// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_weight_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyWeightEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(WeightRecord record) delete,
    required TResult Function(String value) onInputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submit,
    TResult? Function(WeightRecord record)? delete,
    TResult? Function(String value)? onInputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(WeightRecord record)? delete,
    TResult Function(String value)? onInputChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnInputChanged value) onInputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnInputChanged value)? onInputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnInputChanged value)? onInputChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWeightEventCopyWith<$Res> {
  factory $MyWeightEventCopyWith(
          MyWeightEvent value, $Res Function(MyWeightEvent) then) =
      _$MyWeightEventCopyWithImpl<$Res, MyWeightEvent>;
}

/// @nodoc
class _$MyWeightEventCopyWithImpl<$Res, $Val extends MyWeightEvent>
    implements $MyWeightEventCopyWith<$Res> {
  _$MyWeightEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$MyWeightEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'MyWeightEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(WeightRecord record) delete,
    required TResult Function(String value) onInputChanged,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submit,
    TResult? Function(WeightRecord record)? delete,
    TResult? Function(String value)? onInputChanged,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(WeightRecord record)? delete,
    TResult Function(String value)? onInputChanged,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnInputChanged value) onInputChanged,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnInputChanged value)? onInputChanged,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnInputChanged value)? onInputChanged,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements MyWeightEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeightRecord record});

  $WeightRecordCopyWith<$Res> get record;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$MyWeightEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_$DeleteImpl(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as WeightRecord,
    ));
  }

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeightRecordCopyWith<$Res> get record {
    return $WeightRecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value));
    });
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl({required this.record});

  @override
  final WeightRecord record;

  @override
  String toString() {
    return 'MyWeightEvent.delete(record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.record, record) || other.record == record));
  }

  @override
  int get hashCode => Object.hash(runtimeType, record);

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(WeightRecord record) delete,
    required TResult Function(String value) onInputChanged,
  }) {
    return delete(record);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submit,
    TResult? Function(WeightRecord record)? delete,
    TResult? Function(String value)? onInputChanged,
  }) {
    return delete?.call(record);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(WeightRecord record)? delete,
    TResult Function(String value)? onInputChanged,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(record);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnInputChanged value) onInputChanged,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnInputChanged value)? onInputChanged,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnInputChanged value)? onInputChanged,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MyWeightEvent {
  const factory _Delete({required final WeightRecord record}) = _$DeleteImpl;

  WeightRecord get record;

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnInputChangedImplCopyWith<$Res> {
  factory _$$OnInputChangedImplCopyWith(_$OnInputChangedImpl value,
          $Res Function(_$OnInputChangedImpl) then) =
      __$$OnInputChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnInputChangedImplCopyWithImpl<$Res>
    extends _$MyWeightEventCopyWithImpl<$Res, _$OnInputChangedImpl>
    implements _$$OnInputChangedImplCopyWith<$Res> {
  __$$OnInputChangedImplCopyWithImpl(
      _$OnInputChangedImpl _value, $Res Function(_$OnInputChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnInputChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnInputChangedImpl implements _OnInputChanged {
  const _$OnInputChangedImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'MyWeightEvent.onInputChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnInputChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnInputChangedImplCopyWith<_$OnInputChangedImpl> get copyWith =>
      __$$OnInputChangedImplCopyWithImpl<_$OnInputChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(WeightRecord record) delete,
    required TResult Function(String value) onInputChanged,
  }) {
    return onInputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submit,
    TResult? Function(WeightRecord record)? delete,
    TResult? Function(String value)? onInputChanged,
  }) {
    return onInputChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(WeightRecord record)? delete,
    TResult Function(String value)? onInputChanged,
    required TResult orElse(),
  }) {
    if (onInputChanged != null) {
      return onInputChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnInputChanged value) onInputChanged,
  }) {
    return onInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnInputChanged value)? onInputChanged,
  }) {
    return onInputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnInputChanged value)? onInputChanged,
    required TResult orElse(),
  }) {
    if (onInputChanged != null) {
      return onInputChanged(this);
    }
    return orElse();
  }
}

abstract class _OnInputChanged implements MyWeightEvent {
  const factory _OnInputChanged({required final String value}) =
      _$OnInputChangedImpl;

  String get value;

  /// Create a copy of MyWeightEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnInputChangedImplCopyWith<_$OnInputChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyWeightState {
  String get input => throw _privateConstructorUsedError;
  List<WeightRecord> get records => throw _privateConstructorUsedError;

  /// Create a copy of MyWeightState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyWeightStateCopyWith<MyWeightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWeightStateCopyWith<$Res> {
  factory $MyWeightStateCopyWith(
          MyWeightState value, $Res Function(MyWeightState) then) =
      _$MyWeightStateCopyWithImpl<$Res, MyWeightState>;
  @useResult
  $Res call({String input, List<WeightRecord> records});
}

/// @nodoc
class _$MyWeightStateCopyWithImpl<$Res, $Val extends MyWeightState>
    implements $MyWeightStateCopyWith<$Res> {
  _$MyWeightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyWeightState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<WeightRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyWeightStateImplCopyWith<$Res>
    implements $MyWeightStateCopyWith<$Res> {
  factory _$$MyWeightStateImplCopyWith(
          _$MyWeightStateImpl value, $Res Function(_$MyWeightStateImpl) then) =
      __$$MyWeightStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input, List<WeightRecord> records});
}

/// @nodoc
class __$$MyWeightStateImplCopyWithImpl<$Res>
    extends _$MyWeightStateCopyWithImpl<$Res, _$MyWeightStateImpl>
    implements _$$MyWeightStateImplCopyWith<$Res> {
  __$$MyWeightStateImplCopyWithImpl(
      _$MyWeightStateImpl _value, $Res Function(_$MyWeightStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyWeightState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? records = null,
  }) {
    return _then(_$MyWeightStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<WeightRecord>,
    ));
  }
}

/// @nodoc

class _$MyWeightStateImpl implements _MyWeightState {
  const _$MyWeightStateImpl(
      {this.input = '', final List<WeightRecord> records = const []})
      : _records = records;

  @override
  @JsonKey()
  final String input;
  final List<WeightRecord> _records;
  @override
  @JsonKey()
  List<WeightRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'MyWeightState(input: $input, records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyWeightStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, input, const DeepCollectionEquality().hash(_records));

  /// Create a copy of MyWeightState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyWeightStateImplCopyWith<_$MyWeightStateImpl> get copyWith =>
      __$$MyWeightStateImplCopyWithImpl<_$MyWeightStateImpl>(this, _$identity);
}

abstract class _MyWeightState implements MyWeightState {
  const factory _MyWeightState(
      {final String input,
      final List<WeightRecord> records}) = _$MyWeightStateImpl;

  @override
  String get input;
  @override
  List<WeightRecord> get records;

  /// Create a copy of MyWeightState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyWeightStateImplCopyWith<_$MyWeightStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
