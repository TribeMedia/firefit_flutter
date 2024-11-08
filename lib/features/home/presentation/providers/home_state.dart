import 'dart:async';

import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:firefit/features/common/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

sealed class HomeStateData {
  const HomeStateData();
}

class HomeStateModel {
  HomeStateModel({
    this.firstResponder,
    this.user,
    this.error,
    this.isLoading = false,
  });

  final FirstResponder? firstResponder;
  final User? user;
  final String? error;
  final bool isLoading;
}

class HomeStateNotifier extends AsyncNotifier<HomeStateModel> {
  Future<void> refreshData() async {
    await load();
  }

  FutureOr<HomeStateModel> load() async {
    state = const AsyncLoading();
    final logging = ref.read(loggingProvider);
    final currentUser =
        ref.read(userNotifierProvider.notifier).state.value?.user;

    final stationRepository = ref.read(stationRepositoryProvider);

    if (currentUser == null) {
      final model = HomeStateModel(
        error: 'No user found',
      );
      state = AsyncValue.data(model);
      return model;
    }

    final firstResponderResult = await stationRepository.queryFirstResponders(
      filter: Input$FirstResponderFilter(
        userId: Input$UUIDFilter(eq: currentUser.id),
      ),
    );

    return firstResponderResult.fold(
        (l) {
          final model = HomeStateModel(
            error: l.error,
          );
          state = AsyncValue.data(model);
          return model;
        },
        (r) {
          final responder = r.first;
          final model = HomeStateModel(
            firstResponder: responder,
            user: currentUser,
          );
          state = AsyncValue.data(model);
          return model;
        },
    );
  }

  @override
  FutureOr<HomeStateModel> build() async {
    return await load();
  }
}

final homeStateProvider =
    AsyncNotifierProvider<HomeStateNotifier, HomeStateModel>(() {
  return HomeStateNotifier();
});
