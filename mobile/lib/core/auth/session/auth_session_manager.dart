import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:mobile/core/auth/session/session_state.dart';

class AuthSessionManager extends AsyncNotifier<SessionState> {
  StreamSubscription<AuthState>? _authStateSubscription;

  @override
  Future<SessionState> build() async {
    final supabase = Supabase.instance.client;
    
    _authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
      final session = data.session;
      if (session != null) {
        state = AsyncData(Authenticated(session.user));
      } else {
        state = const AsyncData(Unauthenticated());
      }
    });

    final currentSession = supabase.auth.currentSession;
    if (currentSession != null) {
      return Authenticated(currentSession.user);
    }
    
    return const Unauthenticated();
  }

  Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
  }
}

final authSessionManagerProvider = AsyncNotifierProvider<AuthSessionManager, SessionState>(
  () => AuthSessionManager(),
);
