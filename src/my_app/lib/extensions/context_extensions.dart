// Flutter imports:
import 'package:flutter/material.dart';

extension ResponsiveExtensions on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  Color get primary => Theme.of(this).colorScheme.primary;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  TargetPlatform get platform => Theme.of(this).platform;
  bool get isAndroid => (platform == TargetPlatform.android);
  bool get isIOS => (platform == TargetPlatform.iOS);
  bool get isMacOS => (platform == TargetPlatform.macOS);

  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop(result);
  }

  Future<T?> pushWidget<T extends Object?>(Widget widget) {
    return Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

//   Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
//     Widget widget, {
//     TO? result,
//   }) {
//     return Navigator.of(this).pushReplacement(
//       MaterialPageRoute(
//         builder: (context) => widget,
//       ),
//       result: result,
//     );
//   }
}
