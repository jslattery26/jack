// Flutter imports:
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/global_providers.dart';
import 'package:{{project_name.snakeCase()}}/home.dart';
import 'package:{{project_name.snakeCase()}}/login.dart';
import 'package:{{project_name.snakeCase()}}/services/auth_service.dart';
// Package imports:
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router.g.dart';

@riverpod
GoRouter router(
  RouterRef ref,
) {
  final authService = ref.read(authServiceProvider);
  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshStream(
      authService.authStateChanges(),
    ),
    initialLocation: '/welcome',
    redirect: (context, state) {
      final user = ref.watch(firebaseAuthProvider).currentUser;
      if (user == null) {
        if (state.location == '/login') {
          return null;
        }
        return '/login';
      } else {
        if (state.location == '/welcome' || state.location == '/login') {
          return '/home';
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => '/home',
      ),
      GoRoute(
        name: 'welcome',
        path: '/welcome',
        builder: (context, state) => const Center(child: Text('Welcome')),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
