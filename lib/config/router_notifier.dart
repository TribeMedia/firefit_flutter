import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen(
      userNotifierProvider,
      (previous, next) {
        final logging = _ref.read(loggingProvider);
        // Add debug logging
        logging.verbose('Auth state changed: $previous -> $next');
        notifyListeners();
      },
    );
  }

  // Optional: Add methods to check auth state
  bool get isAuthenticated {
    return _ref.read(userNotifierProvider).hasValue;
  }

  Future<Either< Failure, MenuItem>> getMenuItem(String id) async {
    final repository =  _ref.read(menuRepositoryProvider);
    final result = await repository.queryMenuItems(
      filter: Input$MenuItemFilter(
        id: Input$UUIDFilter(eq: id),
      ),
    );

    return result.fold(
      (failure) => Left(failure),
      (menuItems) {
        if (menuItems.isEmpty) {
          return Left(Failure.notFound());
        }
        return Right(menuItems.first);
      },
    );
  }
}
