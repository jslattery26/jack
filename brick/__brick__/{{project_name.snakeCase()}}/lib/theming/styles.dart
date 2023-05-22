import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/extensions/context_extensions.dart';
import 'package:{{project_name.snakeCase()}}/theming/themes.dart';
import 'dimens.dart';

class Styles {
  Styles({required this.context});

  final BuildContext context;

  BorderRadius inputBorderRadius = BorderRadius.circular(inputCornerRadius);

  Color get primaryColor => context.isDark
      ? Themes.defaultDarkColorScheme.primary
      : Themes.defaultLightColorScheme.primary;
  Color get secondaryColor => context.isDark
      ? Themes.defaultDarkColorScheme.secondary
      : Themes.defaultLightColorScheme.secondary;

  TextButtonThemeData get textButtonTheme => TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      );
  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: context.isDark
              ? Themes.defaultDarkColorScheme.onPrimary
              : Themes.defaultLightColorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonCornerRadius),
          ),
        ),
      );

  DividerThemeData get dividerTheme => DividerThemeData(
        space: 0,
        color: secondaryColor,
        thickness: 1,
      );
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
        filled: false,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // labelStyle: textField.copyWith(fontWeight: FontWeight.w700),
        // hintStyle: textField,
        prefixIconColor: primaryColor,
        suffixIconColor: primaryColor,
        border: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(
            width: 1,
            color: primaryColor.withOpacity(.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(
            width: 1,
            color: primaryColor.withOpacity(.5),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(
            width: 1,
            color: primaryColor.withOpacity(.5),
          ),
        ),
      );
}
