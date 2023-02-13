import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'extensions/preferences_extensions.dart';

// Provide an instance of FirebaseAuth
final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

// Provide an instance of FirebaseFirestore
final firebaseFirestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

// Provide an instance of FirebaseFirestore
final firebaseFunctionsProvider =
    Provider<FirebaseFunctions>((ref) => FirebaseFunctions.instance);

// Provide an instance of FirebaseFirestore
final firebaseStorageProvider =
    Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);

// Provide an instance of FirebaseRemoteConfig
final remoteConfigProvider = Provider<FirebaseRemoteConfig>((ref) {
  FirebaseRemoteConfig.instance.fetchAndActivate();
  return FirebaseRemoteConfig.instance;
});

// Provide an instance of FirebaseFirestore
final firebaseMessagingProvider =
    Provider<FirebaseMessaging>((ref) => FirebaseMessaging.instance);

// Provide an instance of FirebaseFirestore
final firebaseAnalyticsProvider =
    Provider<FirebaseAnalytics>((ref) => FirebaseAnalytics.instance);

// Provide an instance of FirebaseFirestore
final firebaseCrashlyticsProvider =
    Provider<FirebaseCrashlytics>((ref) => FirebaseCrashlytics.instance);

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
  name: 'SharedPreferencesProvider',
);
final gamePreferencesProvider = Provider.family<Preferences, String?>(
  (ref, prefix) => Preferences.basic(
    sharedPreferences: ref.watch(sharedPreferencesProvider),
    prefix: prefix,
  ),
  name: 'PreferencesProvider',
);

final loggerProvider = Provider<Logger>(
  (ref) => Logger(
    printer: PrettyPrinter(methodCount: 1),
  ),
);
