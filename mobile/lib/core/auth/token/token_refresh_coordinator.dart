import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/core/auth/token/token.dart';
import 'package:mobile/core/auth/token/token_storage.dart';

abstract class TokenRefreshDelegate {
  Future<OAuthToken> refresh(OAuthToken expiredToken);
}

class TokenRefreshCoordinator {
  final TokenStorage _tokenStorage;
  final Map<String, TokenRefreshDelegate> _delegates = {};
  final Map<String, Future<OAuthToken>> _inflightRefreshes = {};

  TokenRefreshCoordinator(this._tokenStorage);

  void registerDelegate(String platformId, TokenRefreshDelegate delegate) {
    _delegates[platformId] = delegate;
  }

  Future<OAuthToken> refresh(String platformId) {
    // Coalesce concurrent refresh calls into a single future
    if (_inflightRefreshes.containsKey(platformId)) {
      return _inflightRefreshes[platformId]!;
    }

    final future = _doRefresh(platformId).whenComplete(() {
      _inflightRefreshes.remove(platformId);
    });
    
    _inflightRefreshes[platformId] = future;
    return future;
  }

  Future<OAuthToken> _doRefresh(String platformId) async {
    final currentToken = await _tokenStorage.getToken(platformId);
    if (currentToken == null) {
      throw Exception('No token found for $platformId');
    }

    final delegate = _delegates[platformId];
    if (delegate == null) {
      throw Exception('No refresh delegate registered for $platformId');
    }

    final newToken = await delegate.refresh(currentToken);
    await _tokenStorage.saveToken(platformId, newToken);
    return newToken;
  }
}

final tokenRefreshCoordinatorProvider = Provider<TokenRefreshCoordinator>((ref) {
  return TokenRefreshCoordinator(ref.watch(tokenStorageProvider));
});
