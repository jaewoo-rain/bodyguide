// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_guide_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyGuideNotification _$BodyGuideNotificationFromJson(
    Map<String, dynamic> json) {
  return _BodyGuideNotification.fromJson(json);
}

/// @nodoc
mixin _$BodyGuideNotification {
  bool get read => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this BodyGuideNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyGuideNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyGuideNotificationCopyWith<BodyGuideNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyGuideNotificationCopyWith<$Res> {
  factory $BodyGuideNotificationCopyWith(BodyGuideNotification value,
          $Res Function(BodyGuideNotification) then) =
      _$BodyGuideNotificationCopyWithImpl<$Res, BodyGuideNotification>;
  @useResult
  $Res call({bool read, String title, String subTitle, DateTime createdAt});
}

/// @nodoc
class _$BodyGuideNotificationCopyWithImpl<$Res,
        $Val extends BodyGuideNotification>
    implements $BodyGuideNotificationCopyWith<$Res> {
  _$BodyGuideNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyGuideNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = null,
    Object? title = null,
    Object? subTitle = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyGuideNotificationImplCopyWith<$Res>
    implements $BodyGuideNotificationCopyWith<$Res> {
  factory _$$BodyGuideNotificationImplCopyWith(
          _$BodyGuideNotificationImpl value,
          $Res Function(_$BodyGuideNotificationImpl) then) =
      __$$BodyGuideNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool read, String title, String subTitle, DateTime createdAt});
}

/// @nodoc
class __$$BodyGuideNotificationImplCopyWithImpl<$Res>
    extends _$BodyGuideNotificationCopyWithImpl<$Res,
        _$BodyGuideNotificationImpl>
    implements _$$BodyGuideNotificationImplCopyWith<$Res> {
  __$$BodyGuideNotificationImplCopyWithImpl(_$BodyGuideNotificationImpl _value,
      $Res Function(_$BodyGuideNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyGuideNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = null,
    Object? title = null,
    Object? subTitle = null,
    Object? createdAt = null,
  }) {
    return _then(_$BodyGuideNotificationImpl(
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyGuideNotificationImpl extends _BodyGuideNotification {
  const _$BodyGuideNotificationImpl(
      {required this.read,
      required this.title,
      required this.subTitle,
      required this.createdAt})
      : super._();

  factory _$BodyGuideNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyGuideNotificationImplFromJson(json);

  @override
  final bool read;
  @override
  final String title;
  @override
  final String subTitle;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'BodyGuideNotification(read: $read, title: $title, subTitle: $subTitle, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyGuideNotificationImpl &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, read, title, subTitle, createdAt);

  /// Create a copy of BodyGuideNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyGuideNotificationImplCopyWith<_$BodyGuideNotificationImpl>
      get copyWith => __$$BodyGuideNotificationImplCopyWithImpl<
          _$BodyGuideNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyGuideNotificationImplToJson(
      this,
    );
  }
}

abstract class _BodyGuideNotification extends BodyGuideNotification {
  const factory _BodyGuideNotification(
      {required final bool read,
      required final String title,
      required final String subTitle,
      required final DateTime createdAt}) = _$BodyGuideNotificationImpl;
  const _BodyGuideNotification._() : super._();

  factory _BodyGuideNotification.fromJson(Map<String, dynamic> json) =
      _$BodyGuideNotificationImpl.fromJson;

  @override
  bool get read;
  @override
  String get title;
  @override
  String get subTitle;
  @override
  DateTime get createdAt;

  /// Create a copy of BodyGuideNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyGuideNotificationImplCopyWith<_$BodyGuideNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
