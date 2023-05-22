import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/router.dart';
import 'package:{{project_name.snakeCase()}}/theming/themes.dart';
import 'package:{{project_name.snakeCase()}}/widgets/unfocus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);

    return Unfocus(
      child: DynamicColorBuilder(
        builder: (lightColorScheme, darkColorScheme) {
          return MaterialApp.router(
            routerConfig: router,
            title: '',
            themeMode: ThemeMode.system,
            theme: Themes.buildTheme(context, false),
            darkTheme: Themes.buildTheme(context, true),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
