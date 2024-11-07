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
    this.station,
    this.user,
    required this.teamUpdates,
    required this.orders,
    this.error,
    this.isLoading = false,
  });

  final Station? station;
  final User? user;
  final List<TeamUpdate> teamUpdates;
  final List<Order> orders;
  final String? error;
  final bool isLoading;
}

class HomeStateNotifier extends AsyncNotifier<HomeStateModel> {
  Future<void> refreshData() async {
    await load();
  }

  FutureOr<HomeStateModel> load() async {
    final logging = ref.read(loggingProvider);
    final currentUser =
        ref.read(userNotifierProvider.notifier).state.value?.user;
    logging.debug('HomeStateNotifier loading data...');
    final orderRepository = ref.read(orderRepositoryProvider);
    final stationRepository = ref.read(stationRepositoryProvider);
    final stationResult = await stationRepository.queryStations(
      filter: Input$StationFilter(
        id: Input$UUIDFilter(
          eq: 'a7a36d7a-7d97-4c02-8ccf-4ff1cbe8b7d2',
        ),
      ),
    );

    if (currentUser == null) {
      final model = HomeStateModel(
        teamUpdates: [],
        orders: [],
      );
      state = AsyncValue.data(model);
      return model;
    }

    final orderResult = await orderRepository.queryOrders(
      filter: Input$OrderFilter(
        stationId: Input$UUIDFilter(eq: 'a7a36d7a-7d97-4c02-8ccf-4ff1cbe8b7d2'),
        userId: Input$UUIDFilter(eq: currentUser.id),
      ),
    );

    return orderResult.fold(
      (failure) => HomeStateModel(
        error: failure.error,
        teamUpdates: [],
        orders: [],
      ),
      (orders) async {
        final teamUpdatesValue = await stationRepository.queryTeamUpdates(
          filter: Input$TeamUpdateFilter(
            stationId:
                Input$UUIDFilter(eq: 'a7a36d7a-7d97-4c02-8ccf-4ff1cbe8b7d2'),
          ),
        );

        return teamUpdatesValue.fold(
          (failure) => HomeStateModel(
            error: failure.error,
            teamUpdates: [],
            orders: orders,
          ),
          (teamUpdates) {
            return stationResult.fold(
              (failure) => HomeStateModel(
                error: failure.error,
                teamUpdates: teamUpdates,
                orders: orders,
              ),
              (stations) => HomeStateModel(
                station: stations.first,
                teamUpdates: teamUpdates,
                orders: orders,
              ),
            );
          },
        );
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
