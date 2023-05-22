import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jack/router.dart';
import 'package:flutter_jack/theming/themes.dart';
import 'package:flutter_jack/widgets/unfocus.dart';
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
