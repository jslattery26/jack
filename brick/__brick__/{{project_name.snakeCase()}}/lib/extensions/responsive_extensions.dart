import 'package:flutter/material.dart';

/// Layout breakpoints used in the app.
class Breakpoint {
  static const double desktop = 1200;
  static const double tablet = 800;
}

extension ResponsiveExtensions on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < Breakpoint.tablet;
  bool get isTablet =>
      MediaQuery.of(this).size.width >= Breakpoint.tablet &&
      MediaQuery.of(this).size.width <= Breakpoint.desktop;
  bool get isDesktop => MediaQuery.of(this).size.width > Breakpoint.desktop;
}
