import 'package:flutter/material.dart';

class LightThemeData {
  // Primary Colors
  static const Color primary = Color(0xFF2563EB); // Vibrant blue
  static const Color primaryContainer =
      Color(0xFFDBEAFE); // Light blue container
  static const Color primaryHover = Color(0xFF1D4ED8); // Darker blue for hover

  // Secondary Colors
  static const Color secondary = Color(0xFF6366F1); // Indigo for accent
  static const Color secondaryContainer =
      Color(0xFFF1F5F9); // Light gray container

  // Background Colors
  static const Color background = Color(0xFFFFFFFF); // Pure white
  static const Color surface = Color(0xFFF8FAFC); // Slightly off-white
  static const Color surfaceContainer = Color(0xFFE2E8F0); // Light gray

  // Text Colors
  static const Color onPrimary = Color(0xFFFFFFFF); // White
  static const Color onSecondary = Color(0xFFFFFFFF); // White
  static const Color onSurface = Color(0xFF1E293B); // Dark slate
  static const Color onBackground = Color(0xFF1E293B); // Dark slate
  static const Color onError = Color(0xFFFFFFFF); // White
  static const Color mutedForeground = Color(0xFF64748B); // Medium gray

  // Accent Colors
  static const Color accent1 = Color(0xFF8B5CF6); // Purple for highlights
  static const Color accent2 = Color(0xFFEC4899); // Pink for special elements
  static const Color success = Color(0xFF10B981); // Green for success states
  static const Color warning = Color(0xFFF59E0B); // Amber for warnings
  static const Color error = Color(0xFFEF4444); // Red for errors

  static const Brightness brightness = Brightness.light;

  late final ThemeData _theme;

  LightThemeData({required ThemeData theme}) {
    _theme = ThemeData(
      useMaterial3: true,
      colorScheme: _colorScheme,
      scaffoldBackgroundColor: background,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        foregroundColor: onSurface,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: onSurface,
          size: 24,
        ),
      ),

      // Icon Theme
      iconTheme: const IconThemeData(
        color: onSurface,
        size: 24,
      ),

      // Text Theme
      textTheme: theme.textTheme.copyWith(
        displayLarge: const TextStyle(
          fontFamily: 'Geist',
          fontWeight: FontWeight.w800,
          fontSize: 36,
          color: onSurface,
        ),
        displayMedium: const TextStyle(
          fontFamily: 'Geist',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: onSurface,
        ),
        displaySmall: const TextStyle(
          fontFamily: 'Geist',
          fontWeight: FontWeight.w600,
          fontSize: 24,
          color: onSurface,
        ),
        headlineLarge: const TextStyle(
          fontFamily: 'Geist',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: onSurface,
        ),
        headlineMedium: const TextStyle(
          fontFamily: 'Geist',
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: onSurface,
        ),
        headlineSmall: const TextStyle(
          fontFamily: 'Geist',
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

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primary, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: const TextStyle(color: mutedForeground),
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          minimumSize: const Size(64, 40),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          backgroundColor: surface,
          elevation: 0,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          minimumSize: const Size(64, 40),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          minimumSize: const Size(64, 40),
        ),
      ),

      // Card Theme
      cardTheme: CardTheme(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide.none,
        ),
        margin: EdgeInsets.zero,
      ),

      // Dialog Theme
      dialogTheme: DialogTheme(
        backgroundColor: background,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: background,
        elevation: 0,
        selectedItemColor: primary,
        unselectedItemColor: mutedForeground,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      // Divider Theme
      dividerTheme: const DividerThemeData(
        color: surfaceContainer,
        space: 1,
        thickness: 1,
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      // List Tile Theme
      listTileTheme: ListTileThemeData(
        tileColor: surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),

      // Chip Theme
      chipTheme: ChipThemeData(
        backgroundColor: surfaceContainer,
        deleteIconColor: mutedForeground,
        labelStyle: const TextStyle(color: onSurface),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),

      // Tab Bar Theme
      tabBarTheme: const TabBarTheme(
        labelColor: primary,
        unselectedLabelColor: mutedForeground,
        indicatorColor: primary,
        dividerColor: Colors.transparent,
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

// Utility classes for shadows and elevations
class Shadows {
  static const none = <BoxShadow>[];
  static const subtle = [
    BoxShadow(
      color: Color(0x0A000000),
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];
  static const medium = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ];
}

class Elevations {
  static const level0 = 0.0;
  static const level1 = 1.0;
  static const level2 = 2.0;
  static const level3 = 3.0;
}
