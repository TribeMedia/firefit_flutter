
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StationScreen extends HookConsumerWidget {
  const StationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return FScaffold(
      contentPad: false,
      header: FHeader(title: const Text('Station Screen')),
        content: const Text('Station Screen'),
    );
  }
}
