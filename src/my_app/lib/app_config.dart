// Flutter imports:
import 'package:flutter/material.dart';

enum AppEnvironment { local, dev, prod }

class AppConfig extends InheritedWidget {
  final AppEnvironment appEnvironment;
  final String appName;

  bool get isLocal => appEnvironment == AppEnvironment.local;
  bool get isDev => appEnvironment == AppEnvironment.dev;
  bool get isProd => appEnvironment == AppEnvironment.prod;

  @override
  // ignore: overridden_fields
  final Widget child;

  const AppConfig({
    Key? key,
    required this.appEnvironment,
    required this.appName,
    required this.child,
  }) : super(key: key, child: child);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
