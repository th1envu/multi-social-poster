import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/core/router/app_routes.dart';
import 'package:mobile/core/auth/session/auth_session_manager.dart';
import 'package:mobile/core/auth/session/session_state.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authSessionManagerProvider);

  return GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const Scaffold(body: Center(child: Text('Home'))),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const Scaffold(body: Center(child: Text('Login'))),
      ),
    ],
    redirect: (context, state) {
      final isAuth = authState.valueOrNull is Authenticated;
      final isLoginRoute = state.uri.path == AppRoutes.login;

      if (!isAuth && !isLoginRoute) {
        return AppRoutes.login;
      }
      if (isAuth && isLoginRoute) {
        return AppRoutes.home;
      }
      return null;
    },
  );
});
