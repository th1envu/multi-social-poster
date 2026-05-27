// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OAuthToken _$OAuthTokenFromJson(Map<String, dynamic> json) {
  return _OAuthToken.fromJson(json);
}

/// @nodoc
mixin _$OAuthToken {
  String get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  List<String> get scopes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OAuthTokenCopyWith<OAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthTokenCopyWith<$Res> {
  factory $OAuthTokenCopyWith(
          OAuthToken value, $Res Function(OAuthToken) then) =
      _$OAuthTokenCopyWithImpl<$Res, OAuthToken>;
  @useResult
  $Res call(
      {String accessToken,
      String? refreshToken,
      DateTime? expiresAt,
      List<String> scopes});
}

/// @nodoc
class _$OAuthTokenCopyWithImpl<$Res, $Val extends OAuthToken>
    implements $OAuthTokenCopyWith<$Res> {
  _$OAuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? expiresAt = freezed,
    Object? scopes = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthTokenImplCopyWith<$Res>
    implements $OAuthTokenCopyWith<$Res> {
  factory _$$OAuthTokenImplCopyWith(
          _$OAuthTokenImpl value, $Res Function(_$OAuthTokenImpl) then) =
      __$$OAuthTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String? refreshToken,
      DateTime? expiresAt,
      List<String> scopes});
}

/// @nodoc
class __$$OAuthTokenImplCopyWithImpl<$Res>
    extends _$OAuthTokenCopyWithImpl<$Res, _$OAuthTokenImpl>
    implements _$$OAuthTokenImplCopyWith<$Res> {
  __$$OAuthTokenImplCopyWithImpl(
      _$OAuthTokenImpl _value, $Res Function(_$OAuthTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? expiresAt = freezed,
    Object? scopes = null,
  }) {
    return _then(_$OAuthTokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scopes: null == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthTokenImpl extends _OAuthToken {
  const _$OAuthTokenImpl(
      {required this.accessToken,
      this.refreshToken,
      this.expiresAt,
      required final List<String> scopes})
      : _scopes = scopes,
        super._();

  factory _$OAuthTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthTokenImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String? refreshToken;
  @override
  final DateTime? expiresAt;
  final List<String> _scopes;
  @override
  List<String> get scopes {
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopes);
  }

  @override
  String toString() {
    return 'OAuthToken(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, scopes: $scopes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      expiresAt, const DeepCollectionEquality().hash(_scopes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthTokenImplCopyWith<_$OAuthTokenImpl> get copyWith =>
      __$$OAuthTokenImplCopyWithImpl<_$OAuthTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthTokenImplToJson(
      this,
    );
  }
}

abstract class _OAuthToken extends OAuthToken {
  const factory _OAuthToken(
      {required final String accessToken,
      final String? refreshToken,
      final DateTime? expiresAt,
      required final List<String> scopes}) = _$OAuthTokenImpl;
  const _OAuthToken._() : super._();

  factory _OAuthToken.fromJson(Map<String, dynamic> json) =
      _$OAuthTokenImpl.fromJson;

  @override
  String get accessToken;
  @override
  String? get refreshToken;
  @override
  DateTime? get expiresAt;
  @override
  List<String> get scopes;
  @override
  @JsonKey(ignore: true)
  _$$OAuthTokenImplCopyWith<_$OAuthTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
