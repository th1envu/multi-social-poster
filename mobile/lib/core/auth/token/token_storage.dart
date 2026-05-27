import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/core/auth/token/token.dart';

class TokenStorage {
  final FlutterSecureStorage _storage;

  TokenStorage(this._storage);

  Future<void> saveToken(String platformId, OAuthToken token) async {
    final jsonStr = jsonEncode(token.toJson());
    await _storage.write(key: 'oauth_token_$platformId', value: jsonStr);
  }

  Future<OAuthToken?> getToken(String platformId) async {
    final jsonStr = await _storage.read(key: 'oauth_token_$platformId');
    if (jsonStr == null) return null;
    try {
      return OAuthToken.fromJson(jsonDecode(jsonStr));
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteToken(String platformId) async {
    await _storage.delete(key: 'oauth_token_$platformId');
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final tokenStorageProvider = Provider<TokenStorage>((ref) {
  return TokenStorage(ref.watch(secureStorageProvider));
});
