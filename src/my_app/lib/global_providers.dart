import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_jack/extensions/preferences_extensions.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'global_providers.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) => FirebaseAuth.instance;

@riverpod
FirebaseFirestore firebaseFirestore(FirebaseFirestoreRef ref) =>
    FirebaseFirestore.instance;

@riverpod
FirebaseFunctions firebaseFunctions(FirebaseFunctionsRef ref) =>
    FirebaseFunctions.instance;

@riverpod
FirebaseStorage firebaseStorage(FirebaseStorageRef ref) =>
    FirebaseStorage.instance;

@riverpod
FirebaseRemoteConfig remoteConfig(RemoteConfigRef ref) {
  FirebaseRemoteConfig.instance.fetchAndActivate();
  return FirebaseRemoteConfig.instance;
}

@riverpod
FirebaseMessaging firebaseMessaging(FirebaseMessagingRef ref) =>
    FirebaseMessaging.instance;

@riverpod
FirebaseAnalytics firebaseAnalytics(FirebaseAnalyticsRef ref) =>
    FirebaseAnalytics.instance;

@riverpod
FirebaseCrashlytics firebaseCrashlytics(FirebaseCrashlyticsRef ref) =>
    FirebaseCrashlytics.instance;

@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef ref) =>
    throw UnimplementedError();

@riverpod
Preferences customPreferences(
  CustomPreferencesRef ref,
  String? prefix,
) {
  return Preferences.basic(
    sharedPreferences: ref.watch(sharedPreferencesProvider),
    prefix: prefix,
  );
}

@riverpod
Logger logger(LoggerRef ref) => Logger(printer: PrettyPrinter(methodCount: 1));
