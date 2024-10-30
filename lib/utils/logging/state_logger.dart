import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

class StateLogger extends ProviderObserver {
  StateLogger();
  
  final _logger = Logger('StateLogger');

  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    _logger.info({
      'provider': provider.name ?? provider.runtimeType,
      'oldValue': previousValue,
      'newValue': newValue,
    });
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}