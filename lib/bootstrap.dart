import 'package:firefit/config/providers.dart' as providers;
import 'package:firefit/utils/logging/state_logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<ProviderContainer> bootstrap() async {
  final globalContainer = ProviderContainer(
    overrides: [],
    observers: [StateLogger()],
  );
  await providers.initializeProviders(globalContainer);
  return globalContainer;
}
