

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension BuildContextX on BuildContext {
  ProviderContainer get ref => ProviderScope.containerOf(this);
}