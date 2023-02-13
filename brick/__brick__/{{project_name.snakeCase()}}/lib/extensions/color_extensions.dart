// Flutter imports:
import 'package:flutter/material.dart';

extension GradientX on LinearGradient {
  LinearGradient withOpacity(double opacity) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors.map((e) {
        return e.withOpacity(opacity);
      }).toList(),
    );
  }
}
