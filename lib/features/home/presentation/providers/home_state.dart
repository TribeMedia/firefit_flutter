import 'dart:async';

import 'package:core/core.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

sealed class HomeStateData {
  const HomeStateData();
}

class HomeStateModel {
  HomeStateModel({
    this.user,
    this.error,
    this.isLoading = false,
  });

  final AuthUser? user;
  final String? error;
  final bool isLoading;
}

class HomeStateNotifier extends AsyncNotifier<HomeStateModel> {
  Future<void> refreshData() async {
    await load();
  }

  FutureOr<HomeStateModel> load() async {
    state = const AsyncLoading();
    final currentUser =
        ref.read(userNotifierProvider.notifier).state.value?.user;

    final model = HomeStateModel(
      user: currentUser,
      error: null,
      isLoading: false,
    );
    state = AsyncValue.data(model);
    return model;
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
