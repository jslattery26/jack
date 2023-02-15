import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{project_name.snakeCase()}}/app_config.dart';
import 'package:{{project_name.snakeCase()}}/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> configureEmulators() async {
  const authPort = 9099;
  const firestorePort = 8082;
  const functionsPort = 5002;
  const storagePort = 9199;

  if (kDebugMode) {
    var host = 'localhost';
    if (!kIsWeb) {
      if (defaultTargetPlatform == TargetPlatform.android) {
        if ((await DeviceInfoPlugin().androidInfo).isPhysicalDevice) {
          host = '192.168.1.8';
        } else {
          host = '10.0.2.2';
        }
      }
    }
    FirebaseFirestore.instance.settings = const Settings(
      persistenceEnabled: false,
    );

    await FirebaseAuth.instance.useAuthEmulator(host, authPort);
    FirebaseFirestore.instance.useFirestoreEmulator(host, firestorePort);
    FirebaseFunctions.instance.useFunctionsEmulator(host, functionsPort);
    await FirebaseStorage.instance.useStorageEmulator(host, storagePort);
  }
}

Future<void> init(AppEnvironment env) async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  if (env == AppEnvironment.local) {
    await configureEmulators();
  }

  if (!kIsWeb) {
    FirebaseCrashlytics.instance
        .setCrashlyticsCollectionEnabled(env != AppEnvironment.local);
  }

  FirebaseAnalytics.instance
      .setAnalyticsCollectionEnabled(env != AppEnvironment.local);

  if (env != AppEnvironment.local) {
    // Pass all uncaught errors from the framework to Crashlytics.
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    FirebaseAnalytics.instance.logAppOpen();
  }
}

class MainApp extends ConsumerWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = AppConfig.of(context);

    final devicePreviewTools = [
      ...DevicePreview.defaultTools,
    ];

    return DevicePreview(
      enabled: config.isLocal && kIsWeb ||
          (!kIsWeb && defaultTargetPlatform == TargetPlatform.macOS),
      tools: devicePreviewTools,
      builder: (context) {
        return const MyApp();
      },
    );
  }
}
