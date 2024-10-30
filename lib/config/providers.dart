import 'package:event_bus/event_bus.dart';
import 'package:firefit/theme/dark_theme.dart';
import 'package:firefit/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'providers.g.dart';

@riverpod
LightThemeData lightTheme(Ref ref, ThemeData theme) {
  return LightThemeData(theme: theme);
}

@riverpod
DarkThemeData darkTheme(Ref ref, ThemeData theme) {
  return DarkThemeData(theme: theme);
}

@riverpod
Talker logging(Ref ref) {
  final talker = TalkerFlutter.init();
  talker.verbose('Talker initialization completed');
  return talker;
}

Future<void> initializeProviders(ProviderContainer container) async {
  container.read(loggingProvider);
}

final eventBusProvider = Provider<EventBus>((ref) => EventBus());
