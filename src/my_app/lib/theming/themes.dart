import 'package:flutter/material.dart';

class Themes {
  const Themes();
  static const defaultLightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF9B4051),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFD9DD),
    onPrimaryContainer: Color(0xFF400012),
    secondary: Color(0xFF006A62),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF73F8E8),
    onSecondaryContainer: Color(0xFF00201D),
    tertiary: Color(0xFF974810),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFDBC9),
    onTertiaryContainer: Color(0xFF331200),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201A1B),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201A1B),
    surfaceVariant: Color(0xFFF4DDDF),
    onSurfaceVariant: Color(0xFF524344),
    outline: Color(0xFF847374),
    onInverseSurface: Color(0xFFFBEEEE),
    inverseSurface: Color(0xFF362F2F),
    inversePrimary: Color(0xFFFFB2BB),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF9B4051),
  );

  static const defaultDarkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB2BB),
    onPrimary: Color(0xFF5F1125),
    primaryContainer: Color(0xFF7D293A),
    onPrimaryContainer: Color(0xFFFFD9DD),
    secondary: Color(0xFF52DBCC),
    onSecondary: Color(0xFF003732),
    secondaryContainer: Color(0xFF005049),
    onSecondaryContainer: Color(0xFF73F8E8),
    tertiary: Color(0xFFFFB68D),
    onTertiary: Color(0xFF532200),
    tertiaryContainer: Color(0xFF763300),
    onTertiaryContainer: Color(0xFFFFDBC9),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF201A1B),
    onBackground: Color(0xFFECE0E0),
    surface: Color(0xFF201A1B),
    onSurface: Color(0xFFECE0E0),
    surfaceVariant: Color(0xFF524344),
    onSurfaceVariant: Color(0xFFD7C1C3),
    outline: Color(0xFF9F8C8E),
    onInverseSurface: Color(0xFF201A1B),
    inverseSurface: Color(0xFFECE0E0),
    inversePrimary: Color(0xFF9B4051),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB2BB),
  );

  static buildLightTheme(ColorScheme? lightColorScheme) {
    final baseTheme = ThemeData(
      colorScheme: lightColorScheme ?? defaultDarkColorScheme,
      useMaterial3: true,
    );
    return baseTheme;
  }

  static buildDarkTheme(ColorScheme? darkColorScheme) {
    final baseTheme = ThemeData(
      colorScheme: darkColorScheme ?? defaultDarkColorScheme,
      useMaterial3: true,
    );
    return baseTheme;
  }
}
