import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firefit/config/providers.dart';
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

class ApplicationState extends ConsumerState<Application>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeApplication();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _initializeApplication() async {
    final logging = ref.read(loggingProvider);
    try {
      logging.debug('Initializing application...');
      // Add any additional initialization logic here

      logging.debug('Application initialized successfully');
    } catch (error, _) {
      logging.error('Failed to initialize application: $error');
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final logging = ref.read(loggingProvider);
    logging.debug('Application lifecycle state changed to: $state');

    switch (state) {
      case AppLifecycleState.resumed:
        _handleAppResumed();
        break;
      case AppLifecycleState.inactive:
        _handleAppInactive();
        break;
      case AppLifecycleState.paused:
        _handleAppPaused();
        break;
      case AppLifecycleState.detached:
        _handleAppDetached();
        break;
      case AppLifecycleState.hidden:
        _handleAppHidden();
        break;
    }
  }

  void _handleAppResumed() {
    final logging = ref.read(loggingProvider);
    logging.debug('Application resumed');
  }

  void _handleAppInactive() {
    final logging = ref.read(loggingProvider);
    logging.debug('Application inactive');
  }

  void _handleAppPaused() {
    final logging = ref.read(loggingProvider);
    logging.debug('Application paused');
  }

  void _handleAppDetached() {
    final logging = ref.read(loggingProvider);
    logging.debug('Application detached');
  }

  void _handleAppHidden() {
    final logging = ref.read(loggingProvider);
    logging.debug('Application hidden');
  }

  @override
  Widget build(BuildContext context) {
    final logging = ref.read(loggingProvider);
    logging.debug('Building Application widget');

    final router = ref.read(routerProvider);
    final darkThemeData = DarkThemeData(theme: ThemeData.dark());
    final lightThemeData = LightThemeData(theme: ThemeData.light());

    return AdaptiveTheme(
      light: lightThemeData.theme,
      dark: darkThemeData.theme,
      initial: AdaptiveThemeMode.dark,
      builder: (ThemeData lightTheme, ThemeData darkTheme) {
        return ShadApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: _createShadTheme(lightTheme),
          darkTheme: _createShadTheme(darkTheme),
          title: 'FireFit',
          localizationsDelegates: const [
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
          ],
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: child ?? const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}

ShadThemeData _createShadTheme(ThemeData materialTheme) {
  final bool isDark = materialTheme.brightness == Brightness.dark;
  final ThemeData themeData = isDark
      ? DarkThemeData(theme: materialTheme).theme
      : LightThemeData(theme: materialTheme).theme;

  return ShadThemeData(
    brightness: materialTheme.brightness,
    colorScheme: ShadColorScheme(
      // Background Colors
      background: themeData.scaffoldBackgroundColor,
      foreground: themeData.colorScheme.onSurface,
      card: themeData.cardTheme.color ?? themeData.colorScheme.surface,
      cardForeground: themeData.colorScheme.onSurface,
      popover: themeData.colorScheme.surface,
      popoverForeground: themeData.colorScheme.onSurface,

      // Primary Colors
      primary: themeData.colorScheme.primary,
      primaryForeground: themeData.colorScheme.onPrimary,

      // Secondary Colors
      secondary: themeData.colorScheme.secondary,
      secondaryForeground: themeData.colorScheme.onSecondary,

      // Accent Colors
      accent: isDark ? DarkThemeData.accent1 : LightThemeData.accent1,
      accentForeground: themeData.colorScheme.onSecondary,

      // Muted Colors
      muted: themeData.colorScheme.secondaryContainer,
      mutedForeground: isDark
          ? DarkThemeData.mutedForeground
          : LightThemeData.mutedForeground,

      // State Colors
      destructive: themeData.colorScheme.error,
      destructiveForeground: themeData.colorScheme.onError,

      // Border and Input Colors
      border: isDark
          ? DarkThemeData.surfaceContainer
          : LightThemeData.surfaceContainer,
      input: isDark
          ? DarkThemeData.surfaceContainer
          : LightThemeData.surfaceContainer,
      ring: themeData.colorScheme.primary,

      // Selection Color
      selection: isDark
          ? DarkThemeData.primary.withAlpha((0.2 * 255).round())
          : LightThemeData.primary.withAlpha((0.2 * 255).round()),
    ),

    // Border Radius
    radius: BorderRadius.circular(8.0),

    // Text Theme
    textTheme: ShadTextTheme(
      family: 'Inter',
      h1Large: materialTheme.textTheme.displayLarge!.copyWith(
        letterSpacing: -0.5,
        height: 1.2,
        fontWeight: FontWeight.bold,
      ),
      h1: materialTheme.textTheme.displayMedium!.copyWith(
        letterSpacing: -0.5,
        height: 1.2,
        fontWeight: FontWeight.bold,
      ),
      h2: materialTheme.textTheme.displaySmall!.copyWith(
        letterSpacing: -0.25,
        height: 1.2,
        fontWeight: FontWeight.bold,
      ),
      h3: materialTheme.textTheme.headlineLarge!.copyWith(
        letterSpacing: -0.25,
        height: 1.3,
        fontWeight: FontWeight.bold,
      ),
      h4: materialTheme.textTheme.headlineMedium!.copyWith(
        letterSpacing: -0.25,
        height: 1.3,
        fontWeight: FontWeight.w600,
      ),
      p: materialTheme.textTheme.bodyLarge!.copyWith(
        height: 1.5,
      ),
      blockquote: materialTheme.textTheme.bodyMedium!.copyWith(
        height: 1.5,
        fontStyle: FontStyle.italic,
      ),
      table: materialTheme.textTheme.bodyMedium!.copyWith(
        height: 1.5,
      ),
      list: materialTheme.textTheme.bodyMedium!.copyWith(
        height: 1.5,
      ),
      lead: materialTheme.textTheme.titleLarge!.copyWith(
        height: 1.4,
      ),
      large: materialTheme.textTheme.titleMedium!.copyWith(
        height: 1.4,
      ),
      small: materialTheme.textTheme.bodySmall!.copyWith(
        height: 1.4,
      ),
      muted: materialTheme.textTheme.bodySmall!.copyWith(
        color: isDark
            ? DarkThemeData.mutedForeground
            : LightThemeData.mutedForeground,
        height: 1.4,
      ),
    ),
  );
}
