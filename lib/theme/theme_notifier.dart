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
    _lightTheme = lightTheme;
    _darkTheme = darkTheme;
  }

  late final ThemeData _lightTheme;
  late final ThemeData _darkTheme;

  ThemeBrightness brightness = ThemeBrightness.light;

  ThemeData get lightTheme => _lightTheme;

  ThemeData get darkTheme => _darkTheme;
}

final themeNotifierProvider =
    ChangeNotifierProvider.family<ThemeNotifier, ThemeInput>(
        (ref, input) => ThemeNotifier(
              lightTheme: input.lightTheme,
              darkTheme: input.darkTheme,
            ));
