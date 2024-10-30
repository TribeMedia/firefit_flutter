import 'package:firefit/theme/dark_theme.dart';
import 'package:firefit/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ThemeBrightness { light, dark }

class ThemeInput {
  ThemeInput({
    required this.darkTheme,
    required this.lightTheme,
  });

  final ThemeData darkTheme;
  final ThemeData lightTheme;
}

class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier({
    required ThemeData lightTheme,
    required ThemeData darkTheme,
}) {
    _lightThemeData = LightThemeData(theme: lightTheme);
    _darkThemeData = DarkThemeData(theme: darkTheme);
  }

  late final LightThemeData _lightThemeData;
  late final DarkThemeData _darkThemeData;

  ThemeBrightness brightness = ThemeBrightness.light;

  LightThemeData get lightTheme => _lightThemeData;

  DarkThemeData get darkTheme => _darkThemeData;
}

final themeNotifierProvider = ChangeNotifierProvider.family<ThemeNotifier, ThemeInput>(
        (ref, input) => ThemeNotifier(
          lightTheme: input.lightTheme,
          darkTheme: input.darkTheme,
        ));
