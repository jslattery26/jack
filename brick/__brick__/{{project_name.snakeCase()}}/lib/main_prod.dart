import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{project_name.snakeCase()}}/app_config.dart';
import 'package:{{project_name.snakeCase()}}/firebase_options.dart';
import 'package:{{project_name.snakeCase()}}/global_providers.dart';
import 'package:{{project_name.snakeCase()}}/main_pre.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init(AppEnvironment.prod);
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(sharedPreferences),
    ],
  );
  final appConfig = AppConfig(
    appEnvironment: AppEnvironment.prod,
    appName: '{{project_name.titleCase()}}',
    child: UncontrolledProviderScope(
      container: container,
      child: const MainApp(),
    ),
  );

  runApp(appConfig);
}
