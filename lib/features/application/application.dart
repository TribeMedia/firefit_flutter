import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firefit/config/router.dart';
import 'package:firefit/theme/dark_theme.dart';
import 'package:firefit/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends ConsumerState<Application> {
  @override
  Widget build(BuildContext context) {
    final router = ref.read(routerProvider);

    return AdaptiveTheme(
      light: LightThemeData(theme: ThemeData.light()).theme,
      dark: DarkThemeData(theme: ThemeData.dark()).theme,
      initial: AdaptiveThemeMode.system,
      builder: (ThemeData light, ThemeData dark) {
        return ShadApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: _createShadTheme(light),
          darkTheme: _createShadTheme(dark),
          localizationsDelegates: const [
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
            // Uncomment this line to use provide flutter quill localizations
            // in your widgets app, otherwise the quill widgets will provide it
            // internally:
            // FlutterQuillLocalizations.delegate,
          ],
        );
      },
    );
  }
}

ShadThemeData _createShadTheme(ThemeData materialTheme) {
  final bool isDark = materialTheme.brightness == Brightness.dark;
  final themeData = isDark
      ? DarkThemeData(theme: materialTheme).theme
      : LightThemeData(theme: materialTheme).theme;

  return ShadThemeData(
    brightness: materialTheme.brightness,
    colorScheme: ShadColorScheme(
      background: themeData.colorScheme.surface,
      foreground: themeData.colorScheme.onSurface,
      card: themeData.colorScheme.surface,
      cardForeground: themeData.colorScheme.onSurface,
      popover: themeData.colorScheme.surface,
      popoverForeground: themeData.colorScheme.onSurface,
      primary: themeData.colorScheme.primary,
      primaryForeground: themeData.colorScheme.onPrimary,
      secondary: themeData.colorScheme.secondary,
      secondaryForeground: themeData.colorScheme.onSecondary,
      muted: themeData.colorScheme.secondaryContainer,
      mutedForeground: isDark
          ? DarkThemeData.mutedForeground
          : LightThemeData.mutedForeground,
      accent: themeData.colorScheme.secondary,
      accentForeground: themeData.colorScheme.onSecondary,
      destructive: themeData.colorScheme.error,
      destructiveForeground: themeData.colorScheme.onError,
      border: isDark ? DarkThemeData.border : LightThemeData.border,
      input: isDark ? DarkThemeData.border : LightThemeData.border,
      ring: isDark ? DarkThemeData.ring : LightThemeData.ring,
      selection: isDark
          ? DarkThemeData.primary.withValues(alpha: 51)
          : LightThemeData.primary.withValues(alpha: 51),
    ),
    radius: BorderRadius.circular(4),
    textTheme: ShadTextTheme(
      family: 'Inter',
      h1Large: materialTheme.textTheme.displayLarge!,
      h1: materialTheme.textTheme.displayMedium!,
      h2: materialTheme.textTheme.displaySmall!,
      h3: materialTheme.textTheme.headlineLarge!,
      h4: materialTheme.textTheme.headlineMedium!,
      p: materialTheme.textTheme.bodyLarge!,
      blockquote: materialTheme.textTheme.bodyMedium!,
      table: materialTheme.textTheme.bodyMedium!,
      list: materialTheme.textTheme.bodyMedium!,
      lead: materialTheme.textTheme.titleLarge!,
      large: materialTheme.textTheme.titleMedium!,
      small: materialTheme.textTheme.bodySmall!,
      muted: materialTheme.textTheme.bodySmall!.copyWith(
        color: isDark
            ? DarkThemeData.mutedForeground
            : LightThemeData.mutedForeground,
      ),
    ),
  );
}
