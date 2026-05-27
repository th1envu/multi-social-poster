import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class OAuthToken with _$OAuthToken {
  const OAuthToken._();

  const factory OAuthToken({
    required String accessToken,
    String? refreshToken,
    DateTime? expiresAt,
    required List<String> scopes,
  }) = _OAuthToken;

  factory OAuthToken.fromJson(Map<String, dynamic> json) => _$OAuthTokenFromJson(json);

  bool get isExpired {
    if (expiresAt == null) return false;
    // Add 1 minute buffer
    return DateTime.now().isAfter(expiresAt!.subtract(const Duration(minutes: 1)));
  }
}
