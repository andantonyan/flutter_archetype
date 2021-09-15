import 'package:flutter/material.dart';

import 'constants.dart';
import 'extension/extension.dart';

class AppTheme {
  AppTheme._();

  static ThemeData getMaterialThemeData(
    BuildContext context, {
    Locale? selectedLocale,
  }) {
    var theme = context.theme;
    var textTheme = context.textTheme;

    return ThemeData(
      fontFamily: kPrimaryFont,
      // primarySwatch: kPrimarySwatch,
      primaryColor: kPrimaryColor,
      errorColor: kErrorColor,
      disabledColor: kDisableColor,
      backgroundColor: kBackgroundColor,
      scaffoldBackgroundColor: kScaffoldBackgroundColor,
      colorScheme: theme.colorScheme.copyWith(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        surface: kSurfaceColor,
        background: kBackgroundColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: kAppBarColor,
      ),
      snackBarTheme: theme.snackBarTheme.copyWith(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: kSurfaceColor,
        focusColor: kSurfaceColor,
        errorMaxLines: 3,
        contentPadding: kInputPadding,
        border: OutlineInputBorder(
          borderRadius: kPrimaryRadius,
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      textTheme: textTheme,
      iconTheme: const IconThemeData(color: kIconColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
