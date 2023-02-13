// Flutter imports:
import 'package:flutter/material.dart';

extension ScaffoldMessengerX on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar(
    SnackBar snackbar,
  ) {
    return showSnackbar(snackbar);
  }
}

class SnackBarX {
  SnackBarX._();
  static simple(BuildContext context, String message) {
    final snackbar = SnackBar(content: Text(message));
    context.showSnackbar(snackbar);
  }

  static error(BuildContext context, String error) {}
}
