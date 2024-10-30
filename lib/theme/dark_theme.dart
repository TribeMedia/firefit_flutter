import 'package:flutter/material.dart';

class DarkThemeData {
  // Color scheme
  static const Color primary = Color(0xFF0EA5E9); // sky-500
  static const Color primaryContainer = Color(0xFF0C4A6E); // sky-900
  static const Color secondary = Color(0xFF94A3B8); // slate-400
  static const Color secondaryContainer = Color(0xFF1E293B); // slate-800
  static const Color surface = Color(0xFF0F172A); // slate-900
  static const Color error = Color(0xFFEF4444); // red-500
  static const Color onPrimary = Color(0xFF020617); // slate-950
  static const Color onSecondary = Color(0xFF020617); // slate-950
  static const Color onSurface = Color(0xFFF8FAFC); // slate-50
  static const Color onError = Color(0xFF020617); // slate-950
  static const Brightness brightness = Brightness.dark;

  // Additional colors
  static const Color mutedForeground = Color(0xFF94A3B8); // slate-400
  static const Color border = Color(0xFF1E293B); // slate-800
  static const Color ring = Color(0xFF94A3B8); // slate-400
  static const Color iconColor = Color(0xFFF8FAFC); // slate-50 for icons

  late final ThemeData _theme;

  DarkThemeData({required ThemeData theme}) {
    _theme = ThemeData(
      useMaterial3: true,
      colorScheme: _colorScheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: surface,
        foregroundColor: onSurface,
        elevation: 0,
      ),
      iconTheme: const IconThemeData(
        color: iconColor,
      ),
      textTheme: theme.textTheme.copyWith(
        displayLarge: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
          fontSize: 36,
          color: onSurface,
        ),
        displayMedium: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: onSurface,
        ),
        displaySmall: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 24,
          color: onSurface,
        ),
        headlineLarge: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: onSurface,
        ),
        headlineMedium: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: onSurface,
        ),
        headlineSmall: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: onSurface,
        ),
        titleLarge: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: onSurface,
        ),
        titleMedium: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: onSurface,
        ),
        titleSmall: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: onSurface,
        ),
        bodyLarge: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.normal,
          fontSize: 16,
          color: onSurface,
        ),
        bodyMedium: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: onSurface,
        ),
        bodySmall: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.normal,
          fontSize: 12,
          color: onSurface,
        ),
        labelLarge: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: onSurface,
        ),
        labelMedium: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: onSurface,
        ),
        labelSmall: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          fontSize: 10,
          color: onSurface,
        ),
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        filled: true,
        fillColor: surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: ring, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: border),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: error, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: border.withAlpha(128)),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          side: BorderSide(color: border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
      ),
      cardTheme: CardTheme(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: border),
        ),
      ),
    );
  }

  ThemeData get theme => _theme;

  TextTheme get textTheme => _theme.textTheme;

  InputDecorationTheme get inputDecorationTheme => _theme.inputDecorationTheme;

  static const ColorScheme _colorScheme = ColorScheme(
    primary: primary,
    primaryContainer: primaryContainer,
    secondary: secondary,
    secondaryContainer: secondaryContainer,
    surface: surface,
    error: error,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    onError: onError,
    brightness: brightness,
  );

  ColorScheme get colorScheme => _colorScheme;
}
