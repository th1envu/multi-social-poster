import 'package:mobile/core/auth/token/token.dart';

abstract class OAuthService {
  Future<OAuthToken> authenticate();
  Future<void> revokeToken(String token);
}
