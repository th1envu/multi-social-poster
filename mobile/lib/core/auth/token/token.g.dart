// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthTokenImpl _$$OAuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$OAuthTokenImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      scopes:
          (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OAuthTokenImplToJson(_$OAuthTokenImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'scopes': instance.scopes,
    };
