import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colours.dart';

/// Main app theme with [AppColors]
class AppTheme {
  static final mainTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.shade1,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      color: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        minimumSize: const Size(200, 48),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.primary,
        minimumSize: const Size(200, 48),
        side: const BorderSide(width: 1, color: AppColors.primary),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors.primary,
        minimumSize: const Size(200, 48),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
