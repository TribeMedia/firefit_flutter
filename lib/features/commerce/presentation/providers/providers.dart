import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderRepositoryProvider = Provider<OrderRepositoryInterface>((ref) {
  return OrderRepository(talker: ref.read(loggingProvider), env: Environment());
});
