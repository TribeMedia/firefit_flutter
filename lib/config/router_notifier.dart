import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen(
      userNotifierProvider,
          (_, __) => notifyListeners(),
    );
  }
}