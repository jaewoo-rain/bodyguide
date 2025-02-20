// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomUser _$CustomUserFromJson(Map<String, dynamic> json) {
  return _CustomUser.fromJson(json);
}

/// @nodoc
mixin _$CustomUser {
  String get documentId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get onboarded => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  BaseInfo? get baseInfo => throw _privateConstructorUsedError;

  /// Serializes this CustomUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomUserCopyWith<CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomUserCopyWith<$Res> {
  factory $CustomUserCopyWith(
          CustomUser value, $Res Function(CustomUser) then) =
      _$CustomUserCopyWithImpl<$Res, CustomUser>;
  @useResult
  $Res call(
      {String documentId,
      @TimestampConverter() DateTime createdAt,
      bool onboarded,
      String uid,
      String providerId,
      BaseInfo? baseInfo});

  $BaseInfoCopyWith<$Res>? get baseInfo;
}

/// @nodoc
class _$CustomUserCopyWithImpl<$Res, $Val extends CustomUser>
    implements $CustomUserCopyWith<$Res> {
  _$CustomUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? createdAt = null,
    Object? onboarded = null,
    Object? uid = null,
    Object? providerId = null,
    Object? baseInfo = freezed,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      onboarded: null == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      baseInfo: freezed == baseInfo
          ? _value.baseInfo
          : baseInfo // ignore: cast_nullable_to_non_nullable
              as BaseInfo?,
    ) as $Val);
  }

  /// Create a copy of CustomUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseInfoCopyWith<$Res>? get baseInfo {
    if (_value.baseInfo == null) {
      return null;
    }

    return $BaseInfoCopyWith<$Res>(_value.baseInfo!, (value) {
      return _then(_value.copyWith(baseInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomUserImplCopyWith<$Res>
    implements $CustomUserCopyWith<$Res> {
  factory _$$CustomUserImplCopyWith(
          _$CustomUserImpl value, $Res Function(_$CustomUserImpl) then) =
      __$$CustomUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String documentId,
      @TimestampConverter() DateTime createdAt,
      bool onboarded,
      String uid,
      String providerId,
      BaseInfo? baseInfo});

  @override
  $BaseInfoCopyWith<$Res>? get baseInfo;
}

/// @nodoc
class __$$CustomUserImplCopyWithImpl<$Res>
    extends _$CustomUserCopyWithImpl<$Res, _$CustomUserImpl>
    implements _$$CustomUserImplCopyWith<$Res> {
  __$$CustomUserImplCopyWithImpl(
      _$CustomUserImpl _value, $Res Function(_$CustomUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? createdAt = null,
    Object? onboarded = null,
    Object? uid = null,
    Object? providerId = null,
    Object? baseInfo = freezed,
  }) {
    return _then(_$CustomUserImpl(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      onboarded: null == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      baseInfo: freezed == baseInfo
          ? _value.baseInfo
          : baseInfo // ignore: cast_nullable_to_non_nullable
              as BaseInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomUserImpl extends _CustomUser {
  const _$CustomUserImpl(
      {required this.documentId,
      @TimestampConverter() required this.createdAt,
      required this.onboarded,
      required this.uid,
      required this.providerId,
      required this.baseInfo})
      : super._();

  factory _$CustomUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomUserImplFromJson(json);

  @override
  final String documentId;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final bool onboarded;
  @override
  final String uid;
  @override
  final String providerId;
  @override
  final BaseInfo? baseInfo;

  @override
  String toString() {
    return 'CustomUser(documentId: $documentId, createdAt: $createdAt, onboarded: $onboarded, uid: $uid, providerId: $providerId, baseInfo: $baseInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomUserImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.baseInfo, baseInfo) ||
                other.baseInfo == baseInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, documentId, createdAt, onboarded, uid, providerId, baseInfo);

  /// Create a copy of CustomUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomUserImplCopyWith<_$CustomUserImpl> get copyWith =>
      __$$CustomUserImplCopyWithImpl<_$CustomUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomUserImplToJson(
      this,
    );
  }
}

abstract class _CustomUser extends CustomUser {
  const factory _CustomUser(
      {required final String documentId,
      @TimestampConverter() required final DateTime createdAt,
      required final bool onboarded,
      required final String uid,
      required final String providerId,
      required final BaseInfo? baseInfo}) = _$CustomUserImpl;
  const _CustomUser._() : super._();

  factory _CustomUser.fromJson(Map<String, dynamic> json) =
      _$CustomUserImpl.fromJson;

  @override
  String get documentId;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  bool get onboarded;
  @override
  String get uid;
  @override
  String get providerId;
  @override
  BaseInfo? get baseInfo;

  /// Create a copy of CustomUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomUserImplCopyWith<_$CustomUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseInfo _$BaseInfoFromJson(Map<String, dynamic> json) {
  return _BaseInfo.fromJson(json);
}

/// @nodoc
mixin _$BaseInfo {
  String get nickName => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get birth => throw _privateConstructorUsedError;
  String get inflowRoute => throw _privateConstructorUsedError;

  /// Serializes this BaseInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseInfoCopyWith<BaseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseInfoCopyWith<$Res> {
  factory $BaseInfoCopyWith(BaseInfo value, $Res Function(BaseInfo) then) =
      _$BaseInfoCopyWithImpl<$Res, BaseInfo>;
  @useResult
  $Res call(
      {String nickName,
      Gender gender,
      @TimestampConverter() DateTime birth,
      String inflowRoute});
}

/// @nodoc
class _$BaseInfoCopyWithImpl<$Res, $Val extends BaseInfo>
    implements $BaseInfoCopyWith<$Res> {
  _$BaseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? gender = null,
    Object? birth = null,
    Object? inflowRoute = null,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inflowRoute: null == inflowRoute
          ? _value.inflowRoute
          : inflowRoute // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseInfoImplCopyWith<$Res>
    implements $BaseInfoCopyWith<$Res> {
  factory _$$BaseInfoImplCopyWith(
          _$BaseInfoImpl value, $Res Function(_$BaseInfoImpl) then) =
      __$$BaseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickName,
      Gender gender,
      @TimestampConverter() DateTime birth,
      String inflowRoute});
}

/// @nodoc
class __$$BaseInfoImplCopyWithImpl<$Res>
    extends _$BaseInfoCopyWithImpl<$Res, _$BaseInfoImpl>
    implements _$$BaseInfoImplCopyWith<$Res> {
  __$$BaseInfoImplCopyWithImpl(
      _$BaseInfoImpl _value, $Res Function(_$BaseInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? gender = null,
    Object? birth = null,
    Object? inflowRoute = null,
  }) {
    return _then(_$BaseInfoImpl(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inflowRoute: null == inflowRoute
          ? _value.inflowRoute
          : inflowRoute // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseInfoImpl implements _BaseInfo {
  const _$BaseInfoImpl(
      {required this.nickName,
      required this.gender,
      @TimestampConverter() required this.birth,
      required this.inflowRoute});

  factory _$BaseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseInfoImplFromJson(json);

  @override
  final String nickName;
  @override
  final Gender gender;
  @override
  @TimestampConverter()
  final DateTime birth;
  @override
  final String inflowRoute;

  @override
  String toString() {
    return 'BaseInfo(nickName: $nickName, gender: $gender, birth: $birth, inflowRoute: $inflowRoute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseInfoImpl &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.inflowRoute, inflowRoute) ||
                other.inflowRoute == inflowRoute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nickName, gender, birth, inflowRoute);

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      __$$BaseInfoImplCopyWithImpl<_$BaseInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseInfoImplToJson(
      this,
    );
  }
}

abstract class _BaseInfo implements BaseInfo {
  const factory _BaseInfo(
      {required final String nickName,
      required final Gender gender,
      @TimestampConverter() required final DateTime birth,
      required final String inflowRoute}) = _$BaseInfoImpl;

  factory _BaseInfo.fromJson(Map<String, dynamic> json) =
      _$BaseInfoImpl.fromJson;

  @override
  String get nickName;
  @override
  Gender get gender;
  @override
  @TimestampConverter()
  DateTime get birth;
  @override
  String get inflowRoute;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
