// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_jack/global_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authServiceProvider = riverpod.Provider<AuthService>((ref) {
  return AuthService(ref);
});

class AuthService {
  final Ref ref;

  AuthService(this.ref);

  Stream<User?> authStateChanges() {
    return ref.read(firebaseAuthProvider).authStateChanges();
  }

  Future<void> signInAnonymously() async {
    await ref.read(firebaseAuthProvider).signInAnonymously();
  }

  Future<void> signOut() async {
    await ref.read(firebaseAuthProvider).signOut();
  }
}
